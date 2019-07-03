Feature: CLearing Account Mapping - Account Details Tab of Account Details - Test 11

  Background: 
    Given Wait 3 seconds

  @AccountDetails11
  Scenario Outline: In Account Detail Screen, check for functionality of Multiplier - Single Vs Multi tier
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
		Then WebAgent click on AccountDetailsTab
		
		Then WebAgent type "<mnemonic>" into MnemonicBox
		Then WebAgent click on Search_Button_2
		Then WebAgent double click on SecondSearchResult
		Then WebAgent scroll current page to width:0 height:300
		
		Then WebAgent click on IBRMultiplierTypeButton
		Then WebAgent click on MultiTieredOption
		Then WebAgent click on AddRemoveButton2
		Then WebAgent type "<StartRange>" into StartRangeBox
		Then WebAgent type "<EndRange>" into EndRangeBox
		Then WebAgent type "<MultiplierValue>" into MultiplierBox
		Then WebAgent click on ADDButton2
		Then WebAgent click on CloseWindowButton2
		Then WebAgent click on SaveButton2
		

		Then WebAgent exit
  	Examples:
			| mnemonic | StartRange | EndRange | MultiplierValue |
			| 222902DD |      7     |   11     |       2         |
			
