using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class Registration1 : System.Web.UI.Page
    {
        String mystr;

        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblshstr.Text = this.mystr;
            this.lblsession.Text = (String)this.Session["str"];
        }

        protected void btnstr_Click(object sender, EventArgs e)
        {
            this.mystr = this.txtstr.Text;
            this.Session["str"] = this.txtstr.Text;
            this.lblshstr.Text = this.mystr;
            this.lblsession.Text = (String)this.Session["str"];
        }
    }
}