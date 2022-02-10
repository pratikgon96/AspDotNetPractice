using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class AjaxPractice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //blank
        }
        [System.Web.Services.WebMethod]
        public static string GetCurrentTime(string name)
        {
            //Console.WriteLine("Hitting");
            string ret = "Hello " + name + Environment.NewLine + "The Current Time is: " + DateTime.Now.ToString();
            return ret;
        }
    }
}