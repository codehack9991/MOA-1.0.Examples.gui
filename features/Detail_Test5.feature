Feature: CLearing Account Mapping - Pending Detail Approvals Tab of Account Details - Test 5

  Background: 
    Given Wait 3 seconds

  @PendingDetails5
  Scenario Outline: In Pending Detail Approval Screen, maker and checker can not be the same
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
		
		Then WebAgent click on CACBuyAlgorithmDropDown
		Then WebAgent click on ThirdOptionfromList
		Then WebAgent click on SaveButton2
		
		Then WebAgent click on AccountDetailsTab
		Then WebAgent click on PendingDetailApprovalsTab
		Then WebAgent click on FirstEntryTab
		Then WebAgent click on ApproveTab
		
		
		#Then WebAgent click on BackButton
		Then WebAgent set timeout 5 seconds
		
		
		#Then WebAgent click on PendingDetailApprovalsTab
		
    #Then WebAgent is on SearchResults
		
    
    Then WebAgent exit
    
  	Examples:
			| mnemonic |
			| 222902DD |
    
