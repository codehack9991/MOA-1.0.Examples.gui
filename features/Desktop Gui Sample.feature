Feature: Desktop GUI Sample - Calculator

  Background: 
    Given DesktopAgent launch desktop GUI "C:\windows\system32\calc.exe"
    And DesktopAgent click on Calculator_Button_Clear

  Scenario Outline: Add M to N
    When DesktopAgent click on <M>
    And DesktopAgent click on Calculator_Button_Add
    And DesktopAgent click on <N>
    And DesktopAgent click on Calculator_Button_Equals
    Then DesktopAgent see "<Result>" in Calculator_Text_Result

    Examples: 
      | M                   | N                   | Result |
      | Calculator_Button_1 | Calculator_Button_1 |      2 |
      | Calculator_Button_1 | Calculator_Button_2 |      3 |
