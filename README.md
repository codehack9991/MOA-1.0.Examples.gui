# What is MOA-1.0 ??
FAST is a modular automa±on framework for func±onal automa±on. FAST doesn’t dictate how you write tests – quite the opposite – it provides you with a set of core components and op±ons that you are free to use to meet the needs of your project

# Key Features
 - Pluggable components which can be combined as required (GUI and non-GUI) 
 - Support any protocols that Ci± is using (FIX, EMS, any other)
 - Clearly documented and highly usable 
 - Support ICG Build tools 
 - Flexible con²gura±on 
 - Mul±-process and mul±-threaded deployments 
 - Rich human-readable repor±ng

# Goals
 - Pluggable components which can be combined as required (GUI and non-GUI) 
 - Support any protocols that Ci± is using (FIX, EMS, any other) 
 - Clearly documented and highly usable
 - Support ICG Build tools 
 - Flexible con²gura±on
 - Mul±-process and mul±-threaded deployments 
 - Rich human-readable repor±ng
 
# MOA-1.0.Examples.gui
A demonstration of Automation Testing using our proposed MOA-1.0 framework. In this repo, you will see how to integrate your applications with our MOA-1.0 framework and I can assure this is gonna make the life of SDET engineers a hella lot easier.

# Features
### Plugins For Cucumber and JUnit allow to: 
 - Highlight keywords and syntax in test scenarios
 - Autocomplete test steps 
 - Navigate through the code From usage to implementaTon oF methods 
 - Debug test scenarios: set breakpoints, overview/update variables, trace execuTon, etc. 
 - Run single test scenario, single fle, or any pack oF tests 
 - See result oF test execuTon in convenient real-Tme report with all debug log
### Configuration
Confguraton is convenienT and supporTs all possible needs: 
 - Multple environmenTs
 - Multple users 
 - Multple se±ngs For multple agenTs
 - Human-Friendly YML FormaT 
 - Allows everyThing To be kepT in Source ConTrol SysTem: 
 - global shared se±ngs,
 - environmenT settings 
 - user-specifc se±ngs
 - all These se±ngs can be used aT The same tme 
 

# Procedure

maven command to run test: mvn clean test

maven command to run test and upload report to FAST Dashboard: mvn clean install


FAST Quick Guide for Test Engineer

* Step 1: Setup test environment (JDK + Maven + Eclipse/IntelliJ IDEA)

Please reference to https://cedt-confluence.nam.nsroot.net/confluence/display/167813001/FAST+-+Quick+Start
 
* Step 2: Get sample project from this repo and clone it to your computer. Also below is the list of libraries(.jar) which ar eto include in the JRE System Library folder of JDK in your system :
     - 1. resources.jar
     - 2. rt.jar
     - 3. jsse.jar
     - 4. jce.jar
     - 5. charsets.jar
     - 6. jfr.jar
     - 7. access-bridge-64.jar
     - 8. cldrdata.jar
     - 9. dnsns.jar
     - 10. jaccess.jar
     - 11. jfxrt.jar
     - 12. localedata.jar
     - 13. nashorn.jar
     - 14. sunec.jar
     - 15. sunjce_provider.jar
     - 16. sunmscapi.jar
     - 17. sunpkcs11.jar
     - 18. zipfs.jar
     
  Also make sure to first generate resources using the pom.xml file for generating all the dependencies required for execution of the framework. i.e use Maven-generate. In case of any other info, feel free to contact me.
     

* Step 3: Create feature files to describe test cases with Gherkins language. Common steps are included in core library(fast.common)

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
		|keyword|
		|Selenium|
		|Cucumber|

* Step 4: Implement steps which not implemented yet with Java glue code. 

* Step 5: Setup Dashboard Reporting configuration in pom.xml 
 
<plugin>
                <groupId>(your groupid).framework.fast</groupId>
	<artifactId>fast.common.reporting</artifactId>
	<version>0.1-SNAPSHOT</version>
	…
	<configuration>
              …
		<projectName>YOUR_PROJECT_NAME</projectName>
		<releaseName>YOUR_RELEASE_NAME</releaseName>			
		<testSuiteDirectory>YOUR_FEATURE_DIR</testSuiteDirectory>
		<testSuiteName>YOUR_SUITE_NAME</testSuiteName>
		<testType>YOUR_TEST_TYPE</testType>
		<uploadToDashboard>true/false</uploadToDashboard>
	…	
	</configuration>				
            </plugin>

* Step 6: Using Maven command to build and run

mvn clean install

