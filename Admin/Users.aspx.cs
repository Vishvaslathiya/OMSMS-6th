using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Admin
{
    public partial class Users : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source = LAPTOP-SHON9L4N\\SQLEXPRESS; Initial Catalog=omsms; Integrated Security=True;");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                bindAdmins();
            }
        }

        protected void bindAdmins()
        {
            conn.Close();
            conn.Open();
            SqlCommand selectAdmins = new SqlCommand("SELECT * FROM tblUsers WHERE role = 1", conn);
            SqlDataReader dr = selectAdmins.ExecuteReader();
            rptAdmins.DataSource = dr;
            rptAdmins.DataBind();
            conn.Close();
        }
    }
}