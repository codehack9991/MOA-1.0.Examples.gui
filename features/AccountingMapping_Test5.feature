Feature: Clearing Account Mapping - Checking Search Functionality- Test Case 5

  Background: 
    Given Wait 3 seconds

  @Accounting5
  Scenario Outline: Search in View/Edit Mapping
		#Test to see the correct case 

    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    Then WebAgent click on Add_Button
    #Then WebAgent is on SearchResults
    When WebAgent type "<mnemonic>" into AddMnemonicBox
    Then WebAgent click on FirstOptionBox
    Then WebAgent click on CCPDropDownList
    Then WebAgent click on LCHOption
    Then WebAgent click on ProductDropDownList
    Then WebAgent click on IRSOption
    
    #And WebAgent type "<CCP>" into CCPBox
    #And WebAgent type "<Product>" into ProductBox
    And WebAgent type "<CCPAccount>" into CCPAccountTextBox
    Then WebAgent type "ABC123" into BICCodeBox
    Then WebAgent click on SaveButton

    
    Then WebAgent exit



		#Test when CCP account is not entered, it should fail
		
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    Then WebAgent click on Add_Button
    #Then WebAgent is on SearchResults
    When WebAgent type "<mnemonic>" into AddMnemonicBox
    Then WebAgent click on FirstOptionBox
    Then WebAgent click on CCPDropDownList
    Then WebAgent click on LCHOption
    Then WebAgent click on ProductDropDownList
    Then WebAgent click on IRSOption
    
    #And WebAgent type "<CCP>" into CCPBox
    #And WebAgent type "<Product>" into ProductBox
    #And WebAgent type "<CCPAccount>" into CCPAccountBox
    Then WebAgent type "ABC123" into BICCodeBox
    Then WebAgent click on SaveButton

    
    Then WebAgent exit		
		
		#Test where if the CCP is LCH and BIC Code is not entered

    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
    Then WebAgent click on Add_Button
    #Then WebAgent is on SearchResults
    Then WebAgent type "<mnemonic>" into AddMnemonicBox
    #And WebAgent set timeout 5 seconds
    Then WebAgent click on FirstOptionBox
    Then WebAgent click on CCPDropDownList
    Then WebAgent click on LCHOption
    Then WebAgent click on ProductDropDownList
    Then WebAgent click on IRSOption
    
    #And WebAgent type "<CCP>" into CCPBox
    #And WebAgent type "<Product>" into ProductBox
    And WebAgent type "<CCPAccount>" into CCPAccountTextBox
    #Then WebAgent type "ABC123" into BICCodeBox
    Then WebAgent click on SaveButton

    
    Then WebAgent exit


    Examples: 
      | mnemonic | CCPAccount   |
      | 222      | CARLTONHILLE 
