using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class CalculatorWebApp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //blank
        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            int num1 = Convert.ToInt32(txtFirst.Text);
            int num2 = Convert.ToInt32(txtSecond.Text);
            int result = 0;

            CalculatorService01.CalculatorServicesSoapClient client = new CalculatorService01.CalculatorServicesSoapClient();
            if (DropDownList1.SelectedValue == "Add")
            {
                result = client.Add(num1, num2);
            }
            else if(DropDownList1.SelectedValue == "Sub")
            {
                result = client.Sub(num1, num2);
            }
            else if(DropDownList1.SelectedValue == "Mul")
            {
                result = client.Mult(num1, num2);
            }
            else if(DropDownList1.SelectedValue == "Div")
            {
                result = client.Div(num1, num2);
            }

            lbl1.Text = result.ToString();

            gridView1.DataSource = client.GetResults();
            gridView1.DataBind();

            gridView1.HeaderRow.Cells[0].Text = "Calculation History";
        }
    }
}