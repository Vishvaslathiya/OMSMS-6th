using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Customer
{
    public partial class Registration_OTP : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=LAPTOP-SHON9L4N\\SQLEXPRESS;Initial Catalog=omsms;Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ToastrScript", "", true);
            }

            if (Session["OTP"] != null)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "SuccessScript", "toastr.success('OTP sent on your Email Address!')", true);
            }
            else
            {
                Response.Redirect("Registration.aspx");
            }
        }

        protected void btnVerify_Click(object sender, EventArgs e)
        {
            int userOTP = Convert.ToInt32(txtOTP.Text.ToString());
            int OTP = Convert.ToInt32(Session["OTP"]);

            if (userOTP == OTP)
            {
                //ClientScript.RegisterStartupScript(this.GetType(), "Script", "alert('"+ OTP +"')", true);
                String name = (String)Session["name"];
                String email = (String)Session["email"];
                String contact = (String)Session["contact"];
                String password = (String)Session["password"];
                String gender = (String)Session["gender"];
                int city = Int32.Parse((String)Session["city"]);
                String address = (String)Session["address"];

                conn.Close();
                conn.Open();
                SqlCommand insertUser = new SqlCommand("INSERT INTO tblUsers (name, email, password, contact, gender, cityid, address, role, status) VALUES (@name, @email, @password, @contact, @gender, @city, @address, @role, @status);", conn);
                insertUser.Parameters.AddWithValue("@name", name);
                insertUser.Parameters.AddWithValue("@email", email);
                insertUser.Parameters.AddWithValue("@password", password);
                insertUser.Parameters.AddWithValue("@contact", contact);
                insertUser.Parameters.AddWithValue("@gender", gender);
                insertUser.Parameters.AddWithValue("@city", city);
                insertUser.Parameters.AddWithValue("@address", address);
                insertUser.Parameters.AddWithValue("@role", "customer");
                insertUser.Parameters.AddWithValue("@status", 1);

                int isInserted = insertUser.ExecuteNonQuery();
                if (isInserted > 0)
                {
                    Session["name"] = null;
                    Session["email"] = null;
                    Session["contact"] = null;
                    Session["password"] = null;
                    Session["gender"] = null;
                    Session["city"] = null;
                    Session["address"] = null;
                    Session["OTP"] = null;

                    conn.Close();
                    ClientScript.RegisterStartupScript(this.GetType(), "Script", "alert('You have done Successfull Registration!')", true);
                    Response.Redirect("~/Res/Login.aspx");
                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorScript", "toastr.error('OTP is not matched!');", true);
            }
        }
    }
}