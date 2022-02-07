using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class AjaxControls : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //blank
        }

        protected void btnpartial_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            string time = DateTime.Now.ToLongTimeString();
            lblpartial1.Text = "Showing time from panel" + time;
            lbltotal1.Text = "Showing time from outside" + time;
        }

        protected void btntotal_Click(object sender, EventArgs e)
        {
            System.Threading.Thread.Sleep(3000);
            string time = DateTime.Now.ToLongTimeString();
            lblpartial1.Text = "Showing time from panel" + time;
            lbltotal1.Text = "Showing time from outside" + time;
        }
    }
}