import requests
from datetime import datetime
import sys
# Variables
SLACK_WEBHOOK_URL = "https://hooks.slack.com/services/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"
DATE_FORMAT = "%Y-%m-%d %H:%M"

def send_notification_after_suite():
    # Get current date and time
    current_date = datetime.now().strftime(DATE_FORMAT)
    
    # Create message
    message = f"{current_date} 測試執行完畢"
    
    # Send notification to Slack
    send_notification_to_slack(message)

def send_notification_to_slack(message):
    # Create payload
    payload = {'text': message}
    
    # Post request to Slack webhook URL
    response = requests.post(SLACK_WEBHOOK_URL, json=payload)
    
    # Check response status
    if response.status_code == 200:
        print("Notification sent successfully.")
    else:
        print(f"Failed to send notification. Status code: {response.status_code}, Response: {response.text}")

if __name__ == "__main__":
    send_notification_after_suite()
    sys.exit(0)  # Ensure the script exits with status code 0
