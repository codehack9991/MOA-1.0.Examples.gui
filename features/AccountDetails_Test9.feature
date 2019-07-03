Feature: Clearing Accounts - Account Details- Test 9

	Background:
			Given Wait 3 seconds
			
	@AccountDetails9
	Scenario Outline: Test for Click on Multi Branch Setup button in view/edit to see if there are candidate accounts to setup.Once setup and close, check for Add/Remove Functionality
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

		Then WebAgent click on MultiBranchInitialSetupButton
		Then WebAgent click on CandidateAccountButton
		Then WebAgent click on CloseChildWindowButton
		Then WebAgent click on AddorRemoveButton
		Then WebAgent click on RemoveButton
		Then WebAgent click on CloseChildWindowButton
		
			
		
		Then WebAgent exit
		
		Examples:
			| mnemonic |  
			| 222902DD | 
