Feature: Clearing Accounts -> Account Mapping --> View/Edit Mapping - Test 2d
 
  Background: 
    Given Wait 3 seconds

  @Accounting2d
  Scenario: Checking the search functionality for Account Type
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    Then WebAgent click on AccountTypebox
    Then WebAgent click on ISAAccountTypeBox
    Then WebAgent click on Search_Button
    #Then WebAgent is on SearchResults

    
    Then WebAgent exit
