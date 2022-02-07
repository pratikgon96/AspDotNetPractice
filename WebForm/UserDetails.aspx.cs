using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm
{
    public partial class UserDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindData();
            }

            //if (this.IsPostBack)

            //{

            //    lblinfo.Text += "Page Posted Back.<br/>";

            //}

            //else

            //{

            //    lblinfo.Text += "page Created.<br/>";

            //}

            //if (Cache["testitem"] == null)

            //{

            //    lblinfo.Text += "Creating test item.<br/>";

            //    DateTime testItem = DateTime.Now;

            //    lblinfo.Text += "Storing test item in cache ";

            //    lblinfo.Text += "for 60 seconds.<br/>";

            //    Cache.Insert("testitem", testItem, null, DateTime.Now.AddSeconds(60), TimeSpan.Zero);

            //}

            //else

            //{

            //    lblinfo.Text += "Retrieving test item.<br/>";

            //    DateTime testItem = (DateTime)Cache["testitem"];

            //    lblinfo.Text += "Test item is: " + testItem.ToString();

            //    lblinfo.Text += "<br/>";

            //}

            //lblinfo.Text += "<br/>";
        }

        protected void BindData()
        {
            string connect = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connect))
            {
                try
                {
                    con.Open();
                    //SqlCommand command = new SqlCommand("SELECT * FROM UserDetails", con);
                    SqlCommand command = new SqlCommand("User", con);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@mode", "GetUsers");
                    //SqlDataReader dataReader = command.ExecuteReader();

                    //GridView1.DataSource = dataReader;
                    //GridView1.DataBind();

                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        sda.SelectCommand = command;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            Cache["Reg"] = dt;
                            Cache.Insert("Reg", dt, null, DateTime.Now.AddSeconds(30), TimeSpan.Zero);
                        }
                    }
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message);
                }
            }
        }

        protected void GridView1_PageIndexChanged(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.BindData();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["Name"] = (GridView1.SelectedRow.FindControl("Label1") as Label).Text;
            Session["Email"] = (GridView1.SelectedRow.FindControl("Label2") as Label).Text;
            Session["Contact"] = (GridView1.SelectedRow.FindControl("Label3") as Label).Text;
            Session["Department"] = (GridView1.SelectedRow.FindControl("Label4") as Label).Text;
            Session["Age"] = (GridView1.SelectedRow.FindControl("Label5") as Label).Text;


            HttpCookie cookie = new HttpCookie("user");
            cookie.Value = (GridView1.SelectedRow.FindControl("Label1") as Label).Text;
            Response.Cookies.Add(cookie);

            var ck = Response.Cookies["user"].Value;
            lbl1.Text = $"Welcome {ck}!";

        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            BindData();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connect = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            using (SqlConnection con = new SqlConnection(connect))
            {
                int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from UserDetails where Id =@Id", con);
                cmd.Parameters.AddWithValue("@Id", id);
                cmd.ExecuteNonQuery();
                con.Close();
                BindData();
            }


        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            BindData();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            string connect = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

            using (SqlConnection con = new SqlConnection(connect))
            {
                try
                {
                    TextBox txtname = GridView1.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
                    TextBox txtemail = GridView1.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
                    Session["updatedMail"] = txtemail.Text;
                    TextBox txtphn = GridView1.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
                    TextBox txtAge = GridView1.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
                    int id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Values["Id"].ToString());
                    con.Open();
                    SqlCommand cmd = new SqlCommand("Update UserDetails set UserName=@UserName, Email=@Email, PhoneNumber=@PhoneNumber,Age=@Age where Id=@Id", con);
                    cmd.Parameters.AddWithValue("@UserName", txtname.Text);
                    cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                    cmd.Parameters.AddWithValue("@PhoneNumber", Convert.ToInt64(txtphn.Text));
                    cmd.Parameters.AddWithValue("@Age", Convert.ToInt32(txtAge.Text));
                    cmd.Parameters.AddWithValue("@Id", id);

                    int i = cmd.ExecuteNonQuery();
                }
                catch (Exception ex)
                {
                    Response.Write(ex.ToString());
                }
                finally
                {
                    con.Close();
                }
                GridView1.EditIndex = -1;
                BindData();
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            GridViewRow currentRow = (GridViewRow)((TextBox)sender).Parent.Parent;
            TextBox txtemail = (TextBox)currentRow.FindControl("TextBox2");
            if (!string.IsNullOrEmpty(txtemail.Text))
            {
                string connect = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connect))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from UserDetails where Email=@email", con);
                    cmd.Parameters.AddWithValue("@email", txtemail.Text);
                    //SqlDataReader dr = cmd.ExecuteReader();
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);

                            if (dt.Rows.Count > 0)
                            {
                                var checkBox = currentRow.FindControl("checkem");
                                checkBox.Visible = true;
                                var lblmsg = (Label)currentRow.FindControl("lblmsg");
                                lblmsg.Text = "Email Id Already Exist..!!";
                                lblmsg.ForeColor = System.Drawing.Color.Red;

                            }
                            else
                            {
                                var checkBox = currentRow.FindControl("checkem");
                                checkBox.Visible = true;
                                var lblmsg = (Label)currentRow.FindControl("lblmsg");
                                lblmsg.Text = "Email Id Accepted!!";
                                lblmsg.ForeColor = System.Drawing.Color.Green;
                            }

                        }
                    }

                }
            }
        }
    }
}
