Feature: JiraUploaderExample

  Scenario Outline: <JIRA#> Add M to N
    When DesktopAgent click on <M>
    And DesktopAgent click on Calculator_Button_Add
    And DesktopAgent click on <N>
    And DesktopAgent click on Calculator_Button_Equals
    Then DesktopAgent see "<Result>" in Calculator_Text_Result

    Examples: 
      | JIRA#       | M                   | N                   | Result |
      | C167813-326 | Calculator_Button_1 | Calculator_Button_1 |      2 |
      | C167813-332 | Calculator_Button_1 | Calculator_Button_2 |      3 |
