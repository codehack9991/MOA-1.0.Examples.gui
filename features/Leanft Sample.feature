Feature: Leanft Sample - Calculator

  Background: 
    Given LeanftAgent launch desktop GUI "src\\test\\resources\\Calculator.jar"
    And LeanftAgent click on Calculator.Button_Clear

  Scenario Outline: Add M to N
    When LeanftAgent click on <M>
    And LeanftAgent click on Calculator.Button_Add
    And LeanftAgent click on <N>
    And LeanftAgent click on Calculator.Button_Equals
    Then LeanftAgent see "<Result>" in Calculator.Text_Result
    Then LeanftAgent close window Calculator    

    Examples: 
      | M                   | N                   | Result |
      | Calculator.Button_1 | Calculator.Button_1 |      2 |
      | Calculator.Button_1 | Calculator.Button_2 |      3 |
