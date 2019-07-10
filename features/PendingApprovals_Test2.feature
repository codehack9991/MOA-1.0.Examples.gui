Feature: CLearing Account Mapping - Pending Approvals - Test 2
 
  Background: 
    Given Wait 3 seconds

  @Pending2
  Scenario Outline: Test to show that the changer and approver can't be the same.
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    And WebAgent type "<keyword>" into MnemonicTextbox
    Then WebAgent click on Search_Button
    #Then WebAgent is on SearchResults
    Then WebAgent double click on FirstSearchResult
    Then WebAgent type "<CCPAccount>" into CCPAccountTextBox
    Then WebAgent click on TrianaEnabledCheckBox
    Then WebAgent click on SaveBox
    
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    Then WebAgent click on PendingApprovals_Tab
		Then WebAgent click on FirstApprovalCheckBox
		Then WebAgent click on ApproveButton
    
    Then WebAgent exit

    Examples: 
      | keyword  | CCPAccount   |
      | 222      | CARLTONHILLE |
