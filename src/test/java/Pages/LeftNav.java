package Pages;

import Utilities.GWD;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LeftNav extends Parent {


    public LeftNav() {
        PageFactory.initElements(GWD.getDriver(), this);
    }



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

    @FindBy (xpath = "(//span[text()='Setup'])[3]")
    private WebElement humanResourcesSetup;

    @FindBy (xpath = "//span[text()='Position Categories']")
    private WebElement positionCategories;

    @FindBy (xpath = "//span[text()='Positions']")
    private WebElement positions;

    @FindBy(xpath = "(//span[text()='Setup'])[4]")
    private WebElement setupFour;

    @FindBy(xpath = "//*[text()='Subject Categories']")
    private WebElement subjectCategories;
    //PG16-11 Locators added
    @FindBy(xpath="(//span[text()='Discounts'])[1]")
    private WebElement discounts;

    @FindBy(xpath = "//fa-icon//following::span[text()='School Setup']")
    private WebElement schoolSetupMenu;

    @FindBy(xpath = "//fa-icon//following::span[text()='Departments']")
    private WebElement departmentsMenu;

    @FindBy(xpath = "//div//following::span[text()='Section']")
    private WebElement sectionMenu;

    @FindBy(xpath = "//*[text()='Document Types']")
    private WebElement documentTypes;

    @FindBy(xpath = "//span[@class='nav-link-title ng-tns-c249-18 ng-star-inserted']")
    private WebElement humResourcesSetup1;

    @FindBy(xpath = "//*[text()='Attestations']")
    private WebElement attestations ;

    @FindBy(xpath = "//*[text()='Nationalities']")
    private WebElement nationalities;

    @FindBy(xpath = "//*[text()='Grade Levels']")
    private WebElement gradeLevels;



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
            case "humanResourcesSetup" : myElement =humanResourcesSetup; break;
            case "positionCategories" : myElement =positionCategories; break;
            case "positions" : myElement =positions; break;
            case "setupFour"         : myElement=setupFour; break;
            case "subjectCategories" : myElement=subjectCategories; break;
            case "discounts"        : myElement=discounts; break;
            case "schoolSetupMenu" : myElement=schoolSetupMenu; break;
            case "departmentsMenu" : myElement=departmentsMenu; break;
            case "sectionMenu" : myElement=sectionMenu; break;
            case "documentTypes" : myElement=documentTypes; break;
            case "attestations" : myElement=attestations; break;
            case "humResourcesSetup1" : myElement=humResourcesSetup1; break;
            case "nationalities" : myElement=nationalities; break;
            case "gradeLevels" : myElement=gradeLevels; break;


        }

        clickFunction(myElement);
    }



}
