*** Settings ***
Library    RequestsLibrary
Library    DateTime

*** Variables ***
${SLACK_WEBHOOK_URL}    https://hooks.slack.com/services/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
#${DATE_FORMAT}          %Y-%m-%d

*** Tasks ***
Send Notification After Suite
    ${current_date}=    Get Current Date    result_format=%Y-%m-%d %H:%M
    ${message}=    Set Variable    ${current_date} 測試執行完畢
    Send Notification To Slack    ${message}

*** Keywords ***
Send Notification To Slack
    [Arguments]    ${message}
    Create Session    slack    ${SLACK_WEBHOOK_URL}
    ${payload}=    Create Dictionary    text=${message}
    ${response}    POST On Session    slack    ${SLACK_WEBHOOK_URL}    json=${payload}
    #Post Request    slack    /    json=${payload}