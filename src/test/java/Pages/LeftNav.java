package Pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LeftNav extends Parent {


    public LeftNav() {
        PageFactory.initElements(GWD.getDriver(), this);
    }


    // ilk sayfanın ana seçenekleri

    @FindBy (xpath = "//span[text()='Setup']")
    private WebElement setupOneMenu;

    @FindBy (xpath = "//span[text()='Messaging']")
    private WebElement messagingMenu;

    @FindBy (xpath = "//span[text()='Entrance Exams']")
    private WebElement entranceExamsMenu;

    @FindBy (xpath = "//span[text()='Student']")
    private WebElement studentMenu;

    @FindBy (xpath = "//span[text()='Finance']")
    private WebElement financeMenu;

    @FindBy (xpath = "//span[text()='Human Resources']")
    private WebElement humanResourcesMenu;

    @FindBy (xpath = "//span[text()='Education']")
    private WebElement educationMenu;

    @FindBy (xpath = "//span[text()='Video Conference']")
    private WebElement videoConferenceMenu;

    @FindBy (xpath = "//span[text()='Surveys']")
    private WebElement surveysMenu;

    @FindBy (xpath = "//span[text()='Question Bank']")
    private WebElement questionBankMenu;

    @FindBy (xpath = "//fa-icon//following::span[text()='Parameters']")
    private WebElement parametersSubMenu;

    @FindBy (xpath = "//a[@href=\"/entity-fields/list\"]")
    private WebElement fieldsFunction;



    WebElement myElement;

    public void findAndClick(String strElement){  // 2.aşama
        // burda string isimden weblemente ulaşıcam
        switch (strElement)
        {
            case "setupOneMenu" : myElement =setupOneMenu; break;
            case "messagingMenu" : myElement =messagingMenu; break;
            case "entranceExamsMenu" : myElement =entranceExamsMenu; break;
            case "studentMenu" : myElement =studentMenu; break;
            case "financeMenu" : myElement =financeMenu; break;
            case "humanResourcesMenu" : myElement =humanResourcesMenu; break;
            case "educationMenu" : myElement =educationMenu; break;
            case "videoConferenceMenu" : myElement =videoConferenceMenu; break;
            case "surveysMenu" : myElement =surveysMenu; break;
            case "questionBankMenu" : myElement =questionBankMenu; break;
            case "parametersSubMenu" : myElement =parametersSubMenu; break;
            case "fieldsFunction" : myElement =fieldsFunction; break;
        }

        clickFunction(myElement);
    }



}
