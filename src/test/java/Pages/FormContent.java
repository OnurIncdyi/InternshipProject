package Pages;

import Utilities.GWD;
import org.openqa.selenium.support.PageFactory;

public class FormContent {

    public FormContent() {
        PageFactory.initElements(GWD.getDriver(), this);
    }


}
