package fast.common.glue;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import fast.common.logging.FastLogger;
import java.util.Date;

import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

// TODO: set out folder for whole solution to Out in solution root

@RunWith(Cucumber.class)
@CucumberOptions(
        format = { "pretty", "html:target/cucumber" },
        features = "features/testSetValue.feature",
        glue = "fast/common/glue"
)
public class RunCukeTest  {
    static FastLogger logger = FastLogger.getLogger(RunCukeTest.class.toString());

    public RunCukeTest() {
    }
    
    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }
}
