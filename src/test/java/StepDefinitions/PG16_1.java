package StepDefinitions;

import Pages.DialogContent;
import Pages.LeftNav;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;

import java.util.List;

public class PG16_1 {

    LeftNav leftNav = new LeftNav();

    DialogContent dialogContent = new DialogContent();

    @And("Click on the element in the Left Navigation")
    public void clickOnTheElementInTheLeftNavigation(DataTable elements) {
        List<String> listElement = elements.asList(String.class);

        for (int i = 0; i < listElement.size(); i++) {
            leftNav.findAndClick(listElement.get(i));
        }
    }

    @And("Click on the element in the Dialog Content")
    public void clickOnTheElementInTheDialogContent(DataTable elements) {
        List<String> listElement = elements.asList(String.class);

        for (int i = 0; i < listElement.size(); i++) {
            dialogContent.findAndClick(listElement.get(i));

        }
    }

    @And("User sending the key in Dialog Content")
    public void userSendingTheKeyInDialogContent(DataTable elements) {
        List<List<String>> listElement = elements.asLists(String.class);

        for (int i = 0; i < listElement.size(); i++) {
            dialogContent.findAndSend(listElement.get(i).get(0), listElement.get(i).get(1));
        }
    }

    @Then("Success message should be displayed")
    public void successMessageShouldBeDisplayed() {

        dialogContent.findAndContainsText("successMessage","successfully");
    }
}

//ExtendReportSet.xml