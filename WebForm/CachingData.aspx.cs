using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class CachingData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Cache["Reg"] != null)
            {
                GridView1.DataSource = (DataTable)Cache["Reg"];
                GridView1.DataBind();
            } 
            
        }
    }
}