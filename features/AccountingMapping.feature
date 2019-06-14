#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""




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
      
