package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;

public class _PG16_4_Steps {

    DialogContent dc = new DialogContent();
    LeftNav ln = new LeftNav();

    @Given("user goes to page with LeftNav Menu")
    public void userGoesToPageWithLeftNavMenu(DataTable elements) {
        List<String> list = elements.asList(String.class);
        for (String s : list)
            ln.findAndClick(s);

    }

    @When("user clicks to Dialog Content")
    public void userClicksToDialogContent(DataTable elements) {
        List<String> list = elements.asList(String.class);
        for (String s : list)
            dc.findAndClick(s);
    }

    @And("user sends information to Dialog Content")
    public void userSendsInformationToDialogContent(DataTable elements) {
        List<List<String>> list = elements.asLists(String.class);
        for (int i = 0; i < list.size(); i++) {
            dc.findAndSend(list.get(i).get(0),list.get(i).get(1));
        }
    }

    @Then("success message should display")
    public void successMessageShouldDisplay(DataTable elements) {
        List<List<String>> list = elements.asLists(String.class);
        for (int i = 0; i < list.size(); i++) {
            dc.findAndContainsText(list.get(i).get(0),list.get(i).get(1));
        }
    }

}
