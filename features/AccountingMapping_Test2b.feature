Feature: Clearing Accounts -> Account Mapping --> View/Edit Mapping - Test 2b
 
  Background: 
    Given Wait 3 seconds

  @Accounting2b
  Scenario Outline: Checking the search functionality for GFCID
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    And WebAgent type "<keyword>" into GFCIDbox
    Then WebAgent click on Search_Button
    #Then WebAgent is on SearchResults

    
    Then WebAgent exit

    Examples: 
      | keyword  | 
      | 222      | 
