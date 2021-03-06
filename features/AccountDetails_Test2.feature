Feature: Clearing Accounts - Account Details- Test 2

	Background:
			Given Wait 3 seconds
			
	@AccountDetails2
	Scenario Outline: Testing for Reset functionality
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
		Then WebAgent click on BackButton
		
		Then WebAgent click on ResetAccountButton
		
		
		Then WebAgent exit
		
		Examples:
			| mnemonic |
			| 222902DD |
