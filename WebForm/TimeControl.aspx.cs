using System;
using System.Collections.Generic;
using System.Collections.Specialized;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class TimeControl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //blank
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            //Represents a collection of associated String keys and String values that can be accessed either with the key or with the index.
            NameValueCollection list = new NameValueCollection();
            list.Add("pic2", "~/Content/imgfolder/pic2.jfif");
            list.Add("pic3", "~/Content/imgfolder/pic3.jpg");
            list.Add("pic4", "~/Content/imgfolder/pic4.jpg");

            Random r = new Random();
            int index = r.Next(0, 3);
            Label1.Text = list.Keys[index].ToString();
            Image1.ImageUrl = list[index].ToString();
        }
    }
}