using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class SubstitutionControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Method intentionally left empty.
        }
        static int a, b;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(TextBox4.Text) || string.IsNullOrEmpty(TextBox1.Text))
            {
                Label5.Text = "Please Enter Some Values";
                Label5.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                a = int.Parse(TextBox4.Text);
                b = int.Parse(TextBox1.Text);
            }
        }
        
        public static String Add(HttpContext context)
        {
            return (a + b).ToString();
        }
    }
}