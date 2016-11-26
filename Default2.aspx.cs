using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonCalculate_Click(object sender, EventArgs e)
    {
        decimal annualPension = 0;
        decimal lumpSum = 0;
        decimal finalSalary = decimal.Parse(TextBoxSalary.Text);
        decimal survivorPension = 0;
        int yearsOfService = int.Parse(TextBoxMembership.Text);
        int retirementAge = int.Parse(TextBoxRetire.Text);
        decimal maxLumpSum = 0;
        decimal annualPensionReduced = 0;

        if ((retirementAge >= 60 && retirementAge <= 75) || (retirementAge >= 55 && retirementAge <= 75 && RadioButtonList1.SelectedItem.Text == "Yes"))
        {
            annualPension = (finalSalary * yearsOfService) / 80;
            TextBoxAnnualPension.Text = "£ " + Math.Round(annualPension, 2);

            lumpSum = 3 * annualPension;
            TextBoxLumpSum.Text = "£ " + Math.Round(lumpSum, 2);

            survivorPension = annualPension / 2;
            TextBoxSurvivorPension.Text = "£ " + Math.Round(survivorPension, 2);

            LabelCalculate.Text = "";
        }
        else if ((retirementAge < 55 || retirementAge > 75) && (RadioButtonList1.SelectedItem.Text == "Yes"))
        {
            LabelStatus.Text = "Your retirement age is not within the special class status range.";
            TextBoxAnnualPension.Text = "";
            TextBoxLumpSum.Text = "";
            TextBoxSurvivorPension.Text = "";
        }
        else if(retirementAge > 75 && RadioButtonList1.SelectedItem.Text == "No")
        {
            LabelCalculate.Text = "You have exceeded your maximum pension age. You can't access your pension.";
            TextBoxAnnualPension.Text = "";
            TextBoxLumpSum.Text = "";
            TextBoxSurvivorPension.Text = "";
        }
        else if (retirementAge < 60  && RadioButtonList1.SelectedItem.Text == "No")
        {
            LabelCalculate.Text = "You can't access your pension before age 60 without a special class status.";
            TextBoxAnnualPension.Text = "";
            TextBoxLumpSum.Text = "";
            TextBoxSurvivorPension.Text = "";
        }
        else
        {
            LabelCalculate.Text = "Error. Please try again.";
        }

        maxLumpSum = 5 * annualPension;
        TextBoxMaxLumpSum.Text = "£ " + Math.Round(maxLumpSum, 2);

        annualPensionReduced = (annualPension * 8) / 10;
        TextBoxReducedPension.Text = "£ " + Math.Round(annualPensionReduced, 2);
    }
}