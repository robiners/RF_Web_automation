*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary

*** Variables ***
${URL}            https://www.bitopro.com/ns/fees?fee-type=trading
${BROWSER}        chrome
#${DATE_FORMAT}          %Y-%m-%d

*** Test Cases ***

訂單費用和限制:檢查"下單限制"文字顯示
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    ${header}=    Get Text    xpath=//h4[contains(text(),'下單限制')]
    Should Be Equal As Strings    ${header}    下單限制

訂單費用和限制:檢查"最小下單數"文字顯示
    ${header}=    Get Text    xpath=//th[contains(text(),'最小下單數量')]
    Should Be Equal As Strings    ${header}    最小下單數量

訂單費用和限制:檢查"最小下單位數"文字顯示
    ${header}=    Get Text    xpath=//th[contains(text(),'最小下單位數')]
    Should Be Equal As Strings    ${header}    最小下單位數

檢查ADA/TWD最小下單數量和最小下單位數
    # 交易對 "ADA/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'ADA/TWD')]
    Should Be Equal As Strings    ${trading_pair}    ADA/TWD

    # 最小下單數量	 "0.1 ADA"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.1 ADA')]
    Should Be Equal As Strings    ${min_order_quantity}    0.1 ADA
    
    # 最小下單位數	  "4"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[1]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    4

檢查APE/TWD最小下單數量和最小下單位數
    # 交易對 "APE/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'APE/TWD')]
    Should Be Equal As Strings    ${trading_pair}    APE/TWD

    # 最小下單數量 "1 APE"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'1 APE')]
    Should Be Equal As Strings    ${min_order_quantity}    1 APE
   
    # 最小下單位數	  "2"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[2]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    2

檢查BCH/TWD最小下單數量和最小下單位數
    # 交易對 "BCH/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'BCH/TWD')]
    Should Be Equal As Strings    ${trading_pair}    BCH/TWD

    # 最小下單數量 "0.001 BCH"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.001 BCH')]
    Should Be Equal As Strings    ${min_order_quantity}    0.001 BCH
   
    # 最小下單位數	  "1"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[3]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    1

檢查BITO/TWD最小下單數量和最小下單位數
    # 交易對 "BITO/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'BITO/TWD')]
    Should Be Equal As Strings    ${trading_pair}    BITO/TWD

    # 最小下單數量 "155 BITO"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'155 BITO')]
    Should Be Equal As Strings    ${min_order_quantity}    155 BITO
   
    # 最小下單位數	  "3"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[4]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    3

檢查BNB/TWD最小下單數量和最小下單位數
    # 交易對 "BNB/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'BNB/TWD')]
    Should Be Equal As Strings    ${trading_pair}    BNB/TWD

    # 最小下單數量 "0.01 BNB"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.01 BNB')]
    Should Be Equal As Strings    ${min_order_quantity}    0.01 BNB
   
    # 最小下單位數	  "1"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[5]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    1

檢查BTC/TWD最小下單數量和最小下單位數
    # 交易對 "BNB/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'BTC/TWD')]
    Should Be Equal As Strings    ${trading_pair}    BTC/TWD

    # 最小下單數量 "0.0001 BTC"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.0001 BTC')]
    Should Be Equal As Strings    ${min_order_quantity}    0.0001 BTC	
   
    # 最小下單位數	  "0"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[6]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    0
    

檢查DOGE/TWD最小下單數量和最小下單位數
    # 交易對 "DOGE/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'DOGE/TWD')]
    Should Be Equal As Strings    ${trading_pair}    DOGE/TWD

    # 最小下單數量 "1 DOGE"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'1 DOGE')]
    Should Be Equal As Strings    ${min_order_quantity}   1 DOGE		
   
    # 最小下單位數	  "4"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[7]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    4    
    
檢查EOS/TWD最小下單數量和最小下單位數
    # 交易對 "EOS/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'EOS/TWD')]
    Should Be Equal As Strings    ${trading_pair}    EOS/TWD

    # 最小下單數量 "1 EOS"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'1 EOS')]
    Should Be Equal As Strings    ${min_order_quantity}   1 EOS		
   
    # 最小下單位數	  "2"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[8]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    2    
    
檢查ETH/TWD最小下單數量和最小下單位數
    # 交易對 "ETH/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'ETH/TWD')]
    Should Be Equal As Strings    ${trading_pair}    ETH/TWD

    # 最小下單數量 "0.0001 ETH"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.0001 ETH')]
    Should Be Equal As Strings    ${min_order_quantity}   0.0001 ETH	
   
    # 最小下單位數	  "0"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[9]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    0   
    
檢查LTC/TWD最小下單數量和最小下單位數
    # 交易對 "ETH/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'LTC/TWD')]
    Should Be Equal As Strings    ${trading_pair}    LTC/TWD

    # 最小下單數量 "0.001 LTC"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.001 LTC')]
    Should Be Equal As Strings    ${min_order_quantity}   0.001 LTC	
   
    # 最小下單位數	  "1"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[10]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    1     
    
檢查MATIC/TWD最小下單數量和最小下單位數
    # 交易對 "ETH/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'MATIC/TWD')]
    Should Be Equal As Strings    ${trading_pair}    MATIC/TWD

    # 最小下單數量 "0.001 LTC"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'1 MATIC')]
    Should Be Equal As Strings    ${min_order_quantity}   1 MATIC		
   
    # 最小下單位數	  "3"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[11]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    3     
    
檢查MV/TWD最小下單數量和最小下單位數
    # 交易對 "MV/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'MV/TWD')]
    Should Be Equal As Strings    ${trading_pair}    MV/TWD

    # 最小下單數量 "0.001 LTC"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.01 MV')]
    Should Be Equal As Strings    ${min_order_quantity}   0.01 MV		
   
    # 最小下單位數	  "3"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[12]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    3       
    
檢查SHIB/TWD最小下單數量和最小下單位數
    # 交易對 "SHIB/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'SHIB/TWD')]
    Should Be Equal As Strings    ${trading_pair}    SHIB/TWD

    # 最小下單數量 "100,000 SHIB"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'100,000 SHIB')]
    Should Be Equal As Strings    ${min_order_quantity}   100,000 SHIB		
   
    # 最小下單位數	  "6"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[13]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    6     
    
檢查SOL/TWD最小下單數量和最小下單位數
    # 交易對 "SOL/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'SOL/TWD')]
    Should Be Equal As Strings    ${trading_pair}    SOL/TWD

    # 最小下單數量 "0.01 SOL"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.01 SOL')]
    Should Be Equal As Strings    ${min_order_quantity}   0.01 SOL			
   
    # 最小下單位數	  "2"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[14]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    2     
    
檢查TON/TWD最小下單數量和最小下單位數
    # 交易對 "SOL/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'TON/TWD')]
    Should Be Equal As Strings    ${trading_pair}    TON/TWD

    # 最小下單數量 "0.01 SOL"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'1 TON')]
    Should Be Equal As Strings    ${min_order_quantity}   1 TON		
   
    # 最小下單位數	  "2"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[15]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    2        
    
檢查TRX/TWD最小下單數量和最小下單位數
    # 交易對 "TRX/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'TRX/TWD')]
    Should Be Equal As Strings    ${trading_pair}    TRX/TWD

    # 最小下單數量 "10 TRX"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'10 TRX')]
    Should Be Equal As Strings    ${min_order_quantity}   10 TRX		
   
    # 最小下單位數	  "4"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[16]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    4 

檢查USDC/TWD最小下單數量和最小下單位數
    # 交易對 "TRX/TWD"
    ${trading_pair}=    Get Text    xpath=//td[contains(text(),'USDC/TWD')]
    Should Be Equal As Strings    ${trading_pair}    USDC/TWD

    # 最小下單數量 "10 TRX"
    ${min_order_quantity}=    Get Text    xpath=//td[contains(text(),'0.01 USDC')]
    Should Be Equal As Strings    ${min_order_quantity}   0.01 USDC		
   
    # 最小下單位數	  "3"
    ${min_trading_unit}=    Get Text    xpath=//tbody/tr[17]/td[3]
    Should Be Equal As Strings    ${min_trading_unit}    3 
    Close Browser
