using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class CityMap : System.Web.UI.Page
    {
        protected void india_Click(object sender, ImageMapEventArgs e)
        {
            string aa = e.PostBackValue;
            if (aa == "bhuj")
            {
                p1.Visible = true;
                p2.Visible = false;
                p3.Visible = false;
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
            }
            else if (aa == "patan")
            {
                p1.Visible = false;
                p2.Visible = true;
                p3.Visible = false;
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
            }

            else if (aa == "ambaji")
            {
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = true;
                p4.Visible = false;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;

            }
            else if (aa == "him")
            {
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                p5.Visible = true;
                p4.Visible = false;
                p6.Visible = false;
                p7.Visible = false;


            }

            else if (aa == "me")
            {
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                p4.Visible = true;
                p5.Visible = false;
                p6.Visible = false;
                p7.Visible = false;
            }


            else if (aa == "sure")
            {
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                p5.Visible = false;
                p4.Visible = false;
                p6.Visible = true;
                p7.Visible = false;
            }

            else if (aa == "ahd")
            {
                p1.Visible = false;
                p2.Visible = false;
                p3.Visible = false;
                p5.Visible = false;
                p4.Visible = false;
                p7.Visible = true;
                p6.Visible = false;

            }

        }
    }
}