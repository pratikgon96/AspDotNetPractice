using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class UploadTxt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //no code
        }

        protected void UploadBtn_Click(object sender, EventArgs e)
        {
            var file = FileUpLoad1.FileName;
            //string filePath = Server.MapPath(file);
            if (file != "")
            {
                //var fileinfo = new FileInfo(FileUpLoad1.FileName);
               // if (fileinfo.Length == 0)
               // {
                FileInfo fi = new FileInfo(FileUpLoad1.FileName);
                StreamWriter sw = fi.AppendText();
    
                sw.WriteLine("Hello Mentor!");
                sw.WriteLine("This is the assignment");
                sw.WriteLine("You gave me!");
                //}
                FileUpLoad1.SaveAs(@"F:\Task\" + FileUpLoad1.FileName);
                Label1.Text = "File Uploaded: " + FileUpLoad1.FileName;
            }
            else
            {
                //Directory.CreateDirectory(filePath);
                Label1.Text = "No File Uploaded.";
            }
        }
    }
}