package Runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        features = {"src/test/java/FeatureFiles/PG16_1.feature"},
        glue = {"StepDefinitions"},
        plugin = {"html:target/cucumber-reports.html"}
)
public class PG16_1 extends AbstractTestNGCucumberTests {
}
