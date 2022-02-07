using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class DataEntryWithMultiView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = 0;
        }

        protected void btnNextContactDetail_Click(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = 1;

        }

        protected void btnPrevAddressDetail_Click(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = 0;
        }
        protected void btnNextEducationDetail_Click(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = 2;
        }

        protected void btnPrevContactDetail_Click(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = 1;
        }
        protected void btnNextPreviewAndSubmit_Click(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = 3;
            lblSummary.Text = "Hello, " + txtName.Text.ToUpper() + "<br><br> <p style=" + "\"font-size:12px\"" + ">Please, Check your detail and submit.</p>";
            lblAddressDetail.Text = txtAddress.Text;
            lblContactDetail.Text = "Mobile Number : " + txtMobile.Text + "<br>" + "Email ID : " + txtEmailID.Text;
            lblEducationDetail.Text = txtEducation.Text;

        }
        protected void ddlDetail_SelectedIndexChanged(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = Convert.ToInt16(ddlDetail.SelectedValue);

        }
        protected void btnEducationDetail_Click(object sender, EventArgs e)
        {
            mvEntryForm.ActiveViewIndex = 2;
        }
    }
}