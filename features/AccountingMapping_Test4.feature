Feature: Clearing Accounts -> Account Mapping --> View/Edit Mapping - Test 4
 
  Background: 
    Given Wait 3 seconds

  @Accounting4
  Scenario Outline: Checking the export functionality
    When WebAgent set timeout 5 seconds
    And WebAgent open "https://uat.citivelocity.com/cv2/go/PRIME_FUT_DCS" url
    Then WebAgent set timeout 20 seconds
    Then WebAgent is on AccountingMapping
    Then WebAgent switch to framework "Main"
    Then WebAgent click on ClearingAccountsTab
    Then WebAgent click on AccountMappingTab
		Then WebAgent click on ExportButton
    Then WebAgent exit

		Examples:
			| mnemonic |
			| 222902DD |
