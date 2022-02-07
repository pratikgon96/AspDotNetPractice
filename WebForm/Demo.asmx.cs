using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;
using WebServiceCalculator;

namespace WebForm
{
    /// <summary>
    /// Summary description for Demo
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    [System.Web.Script.Services.ScriptService]
    public class Demo : System.Web.Services.WebService
    {

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
