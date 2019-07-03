Feature: Clearing Accounts - Account Details- Test 10

	Background:
			Given Wait 3 seconds
			
	@AccountDetails10
	Scenario Outline: Test for Account having Related master setup with Account Indicator DA/PB/RM combinations prepopulated should alone be given option to edit Account Indicator drop down. Also Add/remove functionality of Detail accounts to RM and PB accounts to detail accounts to be tested.
		When WebAgent set timeout 5 seconds
		And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
		Then WebAgent set timeout 20 seconds
		Then WebAgent is on AccountingMapping
		Then WebAgent switch to framework "Main"
		Then WebAgent click on ClearingAccountsTab
		Then WebAgent click on AccountDetailsTab

		
 		Then WebAgent click on AccountIndicatorButton
 		Then WebAgent click on PBAccountButton
 		Then WebAgent click on Search_Button_2
 		Then WebAgent double click on SecondSearchResult
 		
 		Then WebAgent click on AddRemoveButton
		Then WebAgent click on RemoveFirstAccountButton
		Then WebAgent click on CloseWindowButton
			
		
		Then WebAgent exit
		
		Examples:
			| mnemonic |  
			| 222902DD |
