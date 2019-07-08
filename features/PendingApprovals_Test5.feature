Feature: CLearing Account Mapping - Pending Approvals - Test 5

  Background: 
    Given Wait 3 seconds

  @Pending5
  Scenario: Checking the Approve functionality
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    Then WebAgent click on PendingApprovals_Tab
    #Then WebAgent is on SearchResults
		Then WebAgent click on FirstApprovalCheckBox
		Then WebAgent click on ApproveButton
		
    
    Then WebAgent exit


