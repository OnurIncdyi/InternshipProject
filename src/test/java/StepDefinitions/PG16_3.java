package StepDefinitions;

import Pages.DialogContent;
import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;

import java.awt.*;
import java.awt.event.KeyEvent;
import java.util.List;

public class PG16_3 {

    DialogContent dialogContent = new DialogContent();

    @And("Click on the tab")
    public void clickOnTheTab()  {

            Robot robot = null;
            try {
                robot = new Robot();
            } catch (AWTException e) {
                throw new RuntimeException(e);
            }
            robot.keyPress(KeyEvent.VK_TAB);
            robot.keyRelease(KeyEvent.VK_TAB);

        }
        }









