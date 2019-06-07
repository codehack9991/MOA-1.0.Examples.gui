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
    #When WebAgent set timeout 5 seconds
    When WebAgent open "https://www.google.com/" url
    Then WebAgent is on GoogleSearch
    And WebAgent type "<keyword>" into SearchBox
    Then WebAgent click on SearchButton
    Then WebAgent scroll current page to width:0 height:300
    Then WebAgent exit

    
 		Examples:
      | keyword  |
      | Cucumber |
      | Selenium |
      
