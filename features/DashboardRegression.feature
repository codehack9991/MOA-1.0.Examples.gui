Feature: Automation DashBoard

  Background: 
    Given Wait 3 seconds

  #execution一层一层点下去 pass
  @DashBoard
  Scenario: Aoutomation DashBoard
  #logout firstly
  Given WebAgent open "http://citiurl/fast_dev" url
  When WebAgent set timeout 5 seconds
  Then WebAgent is on FASTMainPage
  Given Wait 10 seconds
  Then WebAgent click on logoutBtn
  Given Wait 3 seconds
  Then WebAgent click on logoutConfirmBtn
  Given Wait 1 seconds
  When WebAgent type "zc92339" into loginUserNameInput
  When WebAgent set timeout 1 seconds
  When WebAgent type "9a a8 0d 21 da 3c 04 56 fa f5 50 68 c6 42 47 23 " into loginPasswordInput
  When WebAgent set timeout 1 seconds
  When WebAgent click on loginBtn
  #	Then WebAgent exit
    #Given WebAgent open "http://citiurl/fast" url
    #When WebAgent set timeout 10 seconds
    #Then WebAgent is on LoginPage
    #When WebAgent type "zc92339" into usernameTextbox
    #And WebAgent type "Zephyr_12345" into passwordTextbox
    #Then WebAgent click on signOnButton
    #Then WebAgent is on FASTMainPage
    And Wait 1 seconds
    Then WebAgent click on welcome
    And Wait 1 seconds
    And WebAgent click on liAutoReporting
    And Wait 1 seconds
    And WebAgent click on ulAutoReporting
    And Wait 1 seconds
    And WebAgent click on ProjectButton
    And Wait 1 seconds
    And WebAgent click on ProjectFast
    And Wait 3 seconds
    And WebAgent click hidden on element SearchButton
    And Wait 1 seconds
    And WebAgent click hidden on element SearchButton
    And Wait 3 seconds
    When WebAgent double click on CETQaAutomation
    And Wait 3 seconds
    And WebAgent double click on FASTCases
    And Wait 3 seconds
    And WebAgent double click on Regression
    And Wait 3 seconds
    And WebAgent double click on FirstSuite
    And Wait 3 seconds
    And WebAgent click on FirstFeature
    And Wait 3 seconds
    And WebAgent read text from FirstCase into @AES
    Then get @AES.Value value
    And Wait 1 seconds
    And WebAgent click on FirstCase
    And WebAgent click on FirstCase
    And WebAgent click on FirstCase
    And Wait 1 seconds
    Then WebAgent check control CaseStep exist    
    And Wait 3 seconds
    #Then WebAgent exit
    
     #
   #citimuse pass
    #@DashBoard
  #Scenario: Aoutomation DashBoard
    #Given WebAgent open "http://dashboard-dev.byo.sd-edcf-eb5f.nam.nsroot.net/equitiesqadashboard/login" url
    #When WebAgent set timeout 10 seconds
    #Then WebAgent is on FASTMainPage
    And WebAgent click on liCitiFuse
    And Wait 3 seconds
    And WebAgent click on liFramework
    And Wait 3 seconds
    And WebAgent type "data" into SearchInput
    And WebAgent click hidden on element SearchButton2
    And WebAgent click on DropdownButton
    And WebAgent click on AdvancedSearch
    And WebAgent type "Compare" into ToolFran
    And WebAgent click on AdvancedSearchBtn
    And Wait 3 seconds
    #Then WebAgent exit

	
	#admin management pass
  #@DashBoard
  #Scenario: Aoutomation DashBoard
    #Given WebAgent open "http://dashboard-dev.byo.sd-edcf-eb5f.nam.nsroot.net/equitiesqadashboard/login" url
    #When WebAgent set timeout 10 seconds
    #Then WebAgent is on LoginPage
    #When WebAgent type "zc92339" into usernameTextbox
    #And WebAgent type "Zephyr_12345" into passwordTextbox
    #Then WebAgent click on signOnButton
    #Then WebAgent is on FASTMainPage
    #Then WebAgent click on welcome
    And WebAgent click on AdminTool
    And WebAgent click on AdminAuthentication
    And WebAgent read attribute "disabled" on control AdminSubmitButton into @submit
    Then "@submit.Value" equals to "true"
    And Wait 1 seconds
    Then WebAgent click on Testuser
    And Wait 2 seconds
    Then WebAgent click on Testuser
    And Wait 2 seconds
    Then WebAgent click on AdminSubmitButton
    And Wait 2 seconds
    And WebAgent read text from Information into @success
    Then "@success.Value" equals to "Operation succeeded."
    Then WebAgent click on classInfor
    Then WebAgent click on Add
    And WebAgent type "aaaa" into InputUser
    Then WebAgent click on Add
    And Wait 3 seconds
    And WebAgent read text from Information into @soeidcheck
    Then "@soeidcheck.Value" equals to "Warning:The soeid is invalid."
    Then WebAgent click on classInfor
    And Wait 3 seconds
    #Then WebAgent exit
    
	#pass
  #@DashBoard
  #Scenario: Automation DashBoard3
    #Given WebAgent open "http://dashboard-dev.byo.sd-edcf-eb5f.nam.nsroot.net/equitiesqadashboard/login" url
    #When WebAgent set timeout 5 seconds
    #Then WebAgent is on LoginPage
    #When WebAgent type "zc92339" into usernameTextbox
    #And WebAgent type "Zephyr_12345" into passwordTextbox
    #Then WebAgent click on signOnButton
    #Then WebAgent is on FASTMainPage
    #Then WebAgent click on welcome
    #And WebAgent click on AdminTool
    And WebAgent click on projectMenuItem
    And Wait 3 seconds
    And WebAgent click on addUserBtn
    And Wait 3 seconds
    And WebAgent type "" into jiraKeyInput
    And WebAgent type "" into jiraNameInput
    And WebAgent type "" into plInput
    And WebAgent type "" into projectInput
    And WebAgent type "" into qaLeadInput
    And WebAgent type "" into regionInput
    And WebAgent type "" into ownerInput  
    And Wait 1 seconds 
    And WebAgent press "ENTER" 
    And Wait 3 seconds 
    And WebAgent click on confirmBtnNo
    And Wait 3 seconds
    And WebAgent click on addUserBtn
    And Wait 3 seconds 
    And WebAgent type "" into jiraKeyInput
    And WebAgent press "ENTER"
    And Wait 3 seconds 
    And WebAgent click on confirmBtnYes
    And Wait 2 seconds 
    And WebAgent read text from Information into @warningMessage 
    Then "@warningMessage.Value" equals to "All fields should be filled."
    And WebAgent click on dialogCloseBtn
    And Wait 2 seconds     
    And WebAgent click on deleteInput
    And Wait 3 seconds
    Then WebAgent exit
    
   
