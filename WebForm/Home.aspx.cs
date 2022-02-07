using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtId.Text = Session["Id"].ToString();
            txtName.Text = Session["Name"].ToString();
            txtCity.Text = Session["City"].ToString();
        }
    }
}