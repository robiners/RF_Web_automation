import gspread
from oauth2client.service_account import ServiceAccountCredentials
import pandas as pd
from robot.api import ExecutionResult
import logging

# Set up logging
logging.basicConfig(level=logging.INFO)

def main():
    # Google Sheets authorization
    auth_json_path = 'credentials.json'
    gss_scopes = ['https://www.googleapis.com/auth/spreadsheets']
    try:
        credentials = ServiceAccountCredentials.from_json_keyfile_name(auth_json_path, gss_scopes)
        gss_client = gspread.authorize(credentials)
    except Exception as e:
        logging.error(f"Error authorizing Google Sheets: {e}")
        return

    spreadsheet_key = '1W8Mo9e67-DbGNN6yqCnA_e6owheDvXd0ewt4fCfko1o'
    try:
        sheet = gss_client.open_by_key(spreadsheet_key).sheet1
        sheet.clear()
    except Exception as e:
        logging.error(f"Error clearing the sheet: {e}")
        return

    # Read Robot Framework test results
    output_file_path = '/Projects/RF/Results/output.xml'
    try:
        result = ExecutionResult(output_file_path)
    except Exception as e:
        logging.error(f"Error reading Robot Framework results: {e}")
        return

    # Extract test data
    test_data = []
    try:
        for suite in result.suite.suites:
            for case in suite.tests:
                test_data.append([
                    case.name,  
                    case.elapsedtime, 
                    case.status
                ])
    except AttributeError as e:
        logging.error(f"Error processing the test results: {e}")
        return

    # Convert to DataFrame
    df = pd.DataFrame(test_data, columns=['Test Case', 'Elapsed Time', 'Status'])

    # Write DataFrame to Google Sheets
    try:
        sheet.update([df.columns.tolist()] + df.values.tolist())
        logging.info("Google Sheets updated successfully.")
    except Exception as e:
        logging.error(f"Error updating Google Sheets: {e}")

if __name__ == '__main__':
    main()