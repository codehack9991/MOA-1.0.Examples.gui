Feature: Clearing Accounts - Account Details- Test 8

	Background:
			Given Wait 3 seconds
			
	@AccountDetails8
	Scenario Outline: Test for Editing the required details and try saving the modified entries
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
		
		Then WebAgent type "<FundCode>" into FundCodeBox
		Then WebAgent clear input control ClientBox
		Then WebAgent type "<Client>" into ClientBox
		Then WebAgent type "<Branch>" into BranchBox
		
		Then WebAgent click on SaveButton2
			
		
		Then WebAgent exit
		
		Examples:
			| mnemonic |  FundCode | Client   | Branch  | 
			| 222902DD |   ABC     | Shreyas  | Pune    |
