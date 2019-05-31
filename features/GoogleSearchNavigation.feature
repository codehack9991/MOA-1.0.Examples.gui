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
Feature: Google search

 

  #@Google
  #Scenario: Search in Google
  @Google
  Scenario Outline: Search in Google
    Given user is on webpage
    And WebAgent open "https://in.yahoo.com/" url
    Then WebAgent is on SearchPage
    And WebAgent type "<keyword>" into Search
    Then WebAgent click on SearchButton
    Then WebAgent is on SearchResultsPage
    Then WebAgent goes to next page
    Then WebAgent selects the second-last link
    Then WebAgent opens that page
    Then WebAgent exit

    Examples: 
      | keyword |
      | Citi |
      
