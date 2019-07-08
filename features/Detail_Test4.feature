Feature: CLearing Account Mapping - Pending Detail Approvals Tab of Account Details - Test 4

  Background: 
    Given Wait 3 seconds

  @PendingDetails3
  Scenario: In Pending Detail Approval Screen, approve a NAM account pending for approval
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
		Then WebAgent click on AccountDetailsTab
		
		Then WebAgent click on PendingDetailApprovalsTab
		Then WebAgent click on FirstEntryTab
		Then WebAgent click on ApproveTab
		
		#Then WebAgent click on PendingDetailApprovalsTab
		
    #Then WebAgent is on SearchResults
		
    
    Then WebAgent exit
    

    
