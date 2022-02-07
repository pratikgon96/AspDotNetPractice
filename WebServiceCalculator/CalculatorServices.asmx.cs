using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Configuration;

namespace WebServiceCalculator
{
    /// <summary>
    /// Summary description for CalculatorServices
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.None)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class CalculatorServices : System.Web.Services.WebService
    {

        List<string> _calc;

        [WebMethod(EnableSession = true, Description = "Adding two Parameters", CacheDuration = 30)]
        public int Add(int num1, int num2)
        {
            if (Session["calculation"] == null)
            {
                _calc = new List<string>();
            }
            else
            {
                _calc = (List<string>)Session["calculation"];
            }
            string strCalculation = num1.ToString() + " + " + num2.ToString() + " = " + (num1 + num2).ToString();
            _calc.Add(strCalculation);
            Session["calculation"] = _calc;
            return num1 + num2;
        }

        //[WebMethod(EnableSession = true, Description = "Adding two Parameters", CacheDuration = 30, MessageName = "Add Two Num")]
        //public int Add(int num1,int num2,int num3)
        //{
        //    if (Session["calculation"] == null)
        //    {
        //        _calc = new List<string>();
        //    }
        //    else
        //    {
        //        _calc = (List<string>)Session["calculation"];
        //    }
        //    string strCalculation = num1.ToString() + " + " + num2.ToString() + " = " + (num1 + num2 + num3).ToString();
        //    _calc.Add(strCalculation);
        //    Session["calculation"] = _calc;
        //    return num1 + num2 + num3;
        //}
 

        [WebMethod(EnableSession = true, Description = "Getting the operations Results")]
        public List<string> GetResults()
        {
            if (Session["calculation"] == null)
            {
                _calc = new List<string>();
                _calc.Add("No result in the list");
                return _calc;
            }
            else
            {
                return (List<string>)Session["calculation"];
            }

        }

        [WebMethod(EnableSession = true, Description = "Substracting two Parameters", CacheDuration = 30)]
        public int Sub(int num1, int num2)
        {
            if (Session["calculation"] == null)
            {
                _calc = new List<string>();
            }
            else
            {
                _calc = (List<string>)Session["calculation"];
            }
            string strCalculation = num1.ToString() + " - " + num2.ToString() + " = " + (num1 - num2).ToString();
            _calc.Add(strCalculation);
            Session["calculation"] = _calc;
            return num1 - num2;
        }
        [WebMethod(EnableSession = true, Description = "Multiplying two Parameters", CacheDuration = 30)]
        public int Mult(int num1, int num2)
        {
            if (Session["calculation"] == null)
            {
                _calc = new List<string>();
            }
            else
            {
                _calc = (List<string>)Session["calculation"];
            }
            string strCalculation = num1.ToString() + " * " + num2.ToString() + " = " + (num1 * num2).ToString();
            _calc.Add(strCalculation);
            Session["calculation"] = _calc;
            return num1 * num2;
        }
        [WebMethod(EnableSession = true, Description = "Dividing two Parameters", CacheDuration = 30)]
        public int Div(int num1, int num2)
        {
            if (Session["calculation"] == null)
            {
                _calc = new List<string>();
            }
            else
            {
                _calc = (List<string>)Session["calculation"];
            }
            string strCalculation = num1.ToString() + " / " + num2.ToString() + " = " + (num1 / num2).ToString();
            _calc.Add(strCalculation);
            Session["calculation"] = _calc;
            return num1 / num2;
        }

        [WebMethod]
        public Customer GetCustomerById(int id)
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog= WebForm;TrustServerCertificate=true;Integrated Security=true"))
            {
                try
                {
                    con.Open();

                    Customer customer = new Customer();
                    SqlCommand cmd = new SqlCommand("select * from Customer where Id=@Id", con);
                    cmd.Parameters.AddWithValue("@Id", id);
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            customer.Id = id;
                            customer.Name = Convert.ToString(dr["Name"]);
                            customer.Contact = Convert.ToInt64(dr["Contact"]);
                            customer.DOB = Convert.ToDateTime(dr["DOB"]);
                        }
                        if (!dr.IsClosed)
                        {
                            dr.Close();
                        }
                    }

                    return customer;
                }
                finally
                {
                    if (con.State == ConnectionState.Open)
                    {
                        con.Close();
                    }
                }
            }
        }
    }
}
