package fast.common.glue;


import cucumber.api.Scenario;
import cucumber.api.java.*;
import cucumber.api.java.en.Then;
import fast.common.glue.CommonStepDefs;
import fast.common.logging.FastLogger;

public class StepDefsExample extends BaseCommonStepDefs{
	public static FastLogger logger = FastLogger.getLogger("StepDefsExample");
    CommonStepDefs _commonStepDefs = new CommonStepDefs();
    GuiCommonStepDefs _guiCommonStepDefs = new GuiCommonStepDefs();

    @Before
    public void beforeScenario(Scenario scenario) throws Exception {
         super.beforeScenario(scenario);
    }

    @After
    public void afterScenario(Scenario scenario) throws Exception {
         super.afterScenario(scenario);
    }
    
    @Then("^(\\w+) check \"([^\"]*)\" equals to \"([^\"]*)\"$")
    public void db_validata_data(String agentName, String varName, String expected) throws Throwable {
         String actual = _commonStepDefs.getVariableValue(varName);
         if (actual.equals(expected))
             System.out.println("Matched");
         else
             throw new Exception("No match");
    }
}
