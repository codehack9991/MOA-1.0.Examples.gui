Feature: Web Auto Sample - Wikipedia

  Background: 
    Given Wait 3 seconds

  @WEB
  Scenario Outline: Search in Wikipedia
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://www.wikipedia.org/" url
    Then WebAgent is on SearchPage
    And WebAgent type "<keyword>" into SearchTextbox
    Then WebAgent click on SearchButton
    Then WebAgent is on SearchResultsPage
    Then WebAgent exit

    Examples: 
      | keyword  |
      | Citi     |
      | Cucumber |
