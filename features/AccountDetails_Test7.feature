Feature: Clearing Accounts - Account Details- Test 7

  Background: 
    Given Wait 3 seconds

  @AccountDetails7
  Scenario Outline: In Account Detail Screen, for LSOC%toCCP - Add/Modify , sum of entered values should be less than or equal to 1
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
		Then WebAgent click on AccountDetailsTab
		
		Then WebAgent type "222902AP" into MnemonicBox
		Then WebAgent click on Search_Button_2
		Then WebAgent double click on SecondSearchResult
		
		Then WebAgent scroll current page to width:0 height:300
		Then WebAgent click on CACBuyAlgorithmDropDown
		Then WebAgent click on BasicOptimizedExcessTab
		
		Then WebAgent click on LSOCtoCCPTab
		Then WebAgent type "<CMEValue>" into CMEBox
		Then WebAgent type "<LCHValue>" into LCHBox
		Then WebAgent type "<CitiValue>" into CitiBox
		Then WebAgent click on AddBox
		
		
		
		Then WebAgent exit
  		Examples:
			| CMEValue | LCHValue | CitiValue | 
		  	|   0.1    |   0.2    |    0.1    |
	   		|   0.9    |   0.2    |    0.1    |
	
