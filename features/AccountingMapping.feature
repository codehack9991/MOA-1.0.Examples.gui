Feature: Clearing Account Mapping - Derivative Clearing System
 
  Background: 
    Given Wait 3 seconds

  @Accounting
  Scenario Outline: Search in View/Edit Mapping
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME/X19GUl9f90gbghulkdkd" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent click by Css on control ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    And WebAgent type "<keyword>" into MnemonicTextbox
    Then WebAgent click on Search_Button
    #Then WebAgent is on SearchResults
    Then WebAgent double click on FirstSearchResult
    Then WebAgent exit

    Examples: 
      | keyword  |
      | 222      |
      
