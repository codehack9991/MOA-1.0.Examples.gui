Feature: Clearing Accounts - Account Details- Test 5

  Background: 
    Given Wait 3 seconds

  @AccountDetails5
  Scenario Outline: In Account Detail Screen, for CAC Buy Algorithm Drop-down, EMEA accounts should only show EMEA AUTO CAC while NAM accounts shouls show all options
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
		Then WebAgent click on AccountDetailsTab
		
		Then WebAgent type "<mnemonic>" into MnemonicBox
		Then WebAgent click on Search_Button_2
		Then WebAgent double click on SecondSearchResult
		Then WebAgent scroll current page to width:0 height:300
		
		Then WebAgent click on CACBuyAlgorithmDropDown
		#Then WebAgent set timeout 5 seconds
		Then WebAgent exit
  		Examples:
			| mnemonic |
			| 222902DD |
			| CG029380 |
    
