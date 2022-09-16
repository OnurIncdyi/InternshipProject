package Runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;

@CucumberOptions(
        tags = "@Regression",
        features = {"src/test/java/FeatureFiles/PG16_2.feature"},
        glue = {"StepDefinitions"},
        plugin= {"html:target/cucumber-reports.html"}
)

public class PG16_2_TestRunner extends AbstractTestNGCucumberTests {
}
