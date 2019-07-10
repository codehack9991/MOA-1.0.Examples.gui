Feature: Clearing Accounts - Account Details- Test 6

  Background: 
    Given Wait 3 seconds

  @AccountDetails6
  Scenario Outline: In Account Detail Screen, for CAC Buy Algorithm Drop-down, NAM accounts having any option ending in excess should enable the Excess Collateral Posting Type DropDown
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
    Then WebAgent click on BasicOptimizedExcessTab
		Then WebAgent click on ExcessCollateralPostingDropDown
		
		
		Then WebAgent exit
		
		# Second Case to show that in other cases, the ExcessCollateralDropDown is not aceessible
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
		Then WebAgent select ThirdOptionfromList
		Then WebAgent click on ExcessCollateralPostingDropDown
		
		
		Then WebAgent exit
  		Examples:
			| mnemonic |
			| 222902DD |
