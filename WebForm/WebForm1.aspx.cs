using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Session["Id"] = txtId.Text;
            Session["Name"] = txtName.Text;
            Session["City"] = txtCity.Text;
            Response.Redirect("Home.aspx");
        }
    }
}