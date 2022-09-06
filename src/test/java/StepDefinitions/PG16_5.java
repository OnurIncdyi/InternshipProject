package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import java.util.List;

public class PG16_5 {

    DialogContent dc = new DialogContent();
    LeftNav leftNav = new LeftNav();

    @And("Click on the element in the Left Nav Panel")
    public void clickOnTheElementInTheLeftNavPanel(DataTable elements) {
        List<String> listElement = elements.asList(String.class);

        for (int i = 0; i < listElement.size(); i++) {
            leftNav.findAndClick(listElement.get(i));}
    }

    @And("User Clicks on the element in the Dialog Content")
    public void userClicksOnTheElementInTheDialogContent(DataTable elements) {
        List<String> listElement = elements.asList(String.class);

        for (int i = 0; i < listElement.size(); i++) {
            dc.findAndClick(listElement.get(i));}
    }

    @And("User sends key to the Dialog Content")
    public void userSendsKeyToTheDialogContent(DataTable elements) {
        List<List<String>> listElement = elements.asLists(String.class);

        for (int i = 0; i < listElement.size(); i++) {
            dc.findAndSend(listElement.get(i).get(0), listElement.get(i).get(1));}
    }

    @Then("Success message displays")
    public void successMessageDisplays() {

        dc.findAndContainsText("successMessage", "successfully");}
}