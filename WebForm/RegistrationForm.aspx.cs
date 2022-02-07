using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Data;

namespace WebForm
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //blank

        }

        protected void UserCustomValidate(object source, ServerValidateEventArgs args)
        {
            string str = args.Value;
            args.IsValid = false;
            //checking for input length greater than 6 and less than 12 characters  
            if (str.Length < 6 || str.Length > 12)
            {
                return;
            }
            //checking for a atleast a single capital letter  
            bool capital = false;
            foreach (char ch in str)
            {
                if (ch >= 'A' && ch <= 'Z')
                {
                    capital = true;
                    break;
                }
            }
            if (!capital)
            {
                return;
            }
            //checking for a atleast a single lower letter  
            bool lower = false;
            foreach (char ch in str)
            {
                if (ch >= 'a' && ch <= 'z')
                {
                    lower = true;
                    break;
                }
            }
            if (!lower)
            {
                return;
            }
            bool digit = false;
            foreach (char ch in str)
            {
                if (ch >= '0' && ch <= '9')
                {
                    digit = true;
                    break;
                }
            }
            if (!digit)
            {
                return;
            }
            args.IsValid = true;

        }

        protected void CheckUserEmailAvailability(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtMail.Text))
            {
                string connect = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connect))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from UserDetails where Email=@email", con);
                    cmd.Parameters.AddWithValue("@email", txtMail.Text);
                    //SqlDataReader dr = cmd.ExecuteReader();
                    using(SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);

                            if(dt.Rows.Count > 0)
                            {
                                checkem.Visible = true;
                                //shwimg.ImageUrl = "";
                                lblmsg.Text = "Email Id Already Exist..!!";
                                lblmsg.ForeColor = System.Drawing.Color.Red;
                            }
                            else
                            {
                                checkem.Visible = true;
                                //shwimg.ImageUrl = "Accepted.png";
                                lblmsg.Text = "Email Id Accepted!!";
                                lblmsg.ForeColor = System.Drawing.Color.Green;
                            }

                        }
                    }
                    
                }
            }
            else
            {
                checkem.Visible = false;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            Page.Validate();
            if (Page.IsValid)
            {
                string connect = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                using (SqlConnection con = new SqlConnection(connect))
                {
                    try
                    {
                        con.Open();
                        string strpass = encryptpass(txtPassword.Text);
                        SqlCommand command = new SqlCommand("User", con);
                        command.CommandType = CommandType.StoredProcedure;
                        command.Parameters.AddWithValue("@mode", "AddUser");
                        //command.Parameters.AddWithValue("@Id", Convert.ToInt32(txtId.Text));
                        command.Parameters.AddWithValue("@UserName", txtName.Text);
                        command.Parameters.AddWithValue("@Email", txtMail.Text);
                        if (selectGender.Text == null)
                        {
                            command.Parameters.AddWithValue("@Gender", null);
                        }
                        command.Parameters.AddWithValue("@Gender", selectGender.SelectedValue);
                        command.Parameters.AddWithValue("@Department", selectDep.SelectedValue);
                        command.Parameters.AddWithValue("@Password", strpass);
                        var number = Convert.ToInt64(txtNumber.Text);
                        if (txtAge.Text != null)
                        {
                            var age = Convert.ToInt32(txtAge.Text);
                            command.Parameters.AddWithValue("@Age", age);
                        }
                        command.Parameters.AddWithValue("@PhoneNumber", number);
                        int i = command.ExecuteNonQuery();
                        if (i != 0)
                        {
                            Label1.Text = "Registration Complete";
                            Label1.ForeColor = System.Drawing.Color.ForestGreen;
                        }
                        else
                        {
                            Label1.Text = "Error while Registring";
                            Label1.ForeColor = System.Drawing.Color.Red;
                        }

                        txtName.Text = "";
                        txtMail.Text = "";
                        txtPassword.Text = "";
                        txtConfPassword.Text = "";
                        txtAge.Text = "";
                        txtNumber.Text = "";
                        selectGender.SelectedValue = "";
                        selectDep.SelectedValue = "";

                        Response.Redirect("UserDetails.aspx");
                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                }
            
            }
            else
            {
                Message.Text = "Not valid!";
            }
        }

        //protected void btnSubmit_Click(object sender, EventArgs e)
        //{
        //    string connect = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;

        //    using (SqlConnection con = new SqlConnection(connect))
        //    {
        //        try
        //        {
        //            con.Open();
        //            string strpass = encryptpass(txtPassword.Text);
        //            SqlCommand command = new SqlCommand("INSERT INTO UserDetails values(@Id,@UserName,@Email,@PhoneNumber,@Age,@Gender,@Department,@Password)", con);
        //            command.Parameters.AddWithValue("Id", Convert.ToInt32(txtId.Text));
        //            command.Parameters.AddWithValue("UserName", txtName.Text);
        //            command.Parameters.AddWithValue("Email", txtMail.Text);
        //            if(selectGender.Text == null)
        //            {
        //                command.Parameters.AddWithValue("Gender", null);
        //            }
        //            command.Parameters.AddWithValue("Gender", selectGender.SelectedValue);
        //            command.Parameters.AddWithValue("Department", selectDep.SelectedValue);
        //            command.Parameters.AddWithValue("Password", strpass);
        //            var number = Convert.ToInt64(txtNumber.Text);
        //            if(txtAge.Text != null)
        //            {
        //                var age = Convert.ToInt32(txtAge.Text);
        //                command.Parameters.AddWithValue("Age", age);
        //            }
        //            command.Parameters.AddWithValue("PhoneNumber", number);

        //            int i = command.ExecuteNonQuery();
        //            if (i != 0)
        //            {
        //                Label1.Text = "Registration Complete";
        //                Label1.ForeColor = System.Drawing.Color.ForestGreen;
        //            }
        //            else
        //            {
        //                Label1.Text = "Error while Registring";
        //                Label1.ForeColor = System.Drawing.Color.Red;
        //            }

        //            Session["Name"] = txtName.Text;

        //            txtId.Text = "";
        //            txtName.Text = "";
        //            txtMail.Text = "";
        //            txtPassword.Text = "";
        //            txtConfPassword.Text = "";
        //            txtAge.Text = "";
        //            txtNumber.Text = "";
        //            selectGender.SelectedValue = "";
        //            selectDep.SelectedValue = "";

        //            Response.Redirect("UserDetails.aspx");
        //        }
        //        catch(Exception ex)
        //        {
        //            Response.Write(ex.Message);
        //        }
        //    }
        //}

        public string encryptpass(string password)
        {
            string msg;
            var encode = Encoding.UTF8.GetBytes(password);
            msg = Convert.ToBase64String(encode);
            return msg;
        }
    }

}