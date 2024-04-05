using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Admin
{
    public partial class Other : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source = LAPTOP-SHON9L4N\\SQLEXPRESS; Initial Catalog=omsms; Integrated Security=True;");
        string name = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bindState();
                bindCity();
            }
        }

        protected void bindState()
        {
            conn.Close();
            conn.Open();
            SqlCommand selectStates = new SqlCommand("SELECT * FROM tblState ORDER BY name ASC", conn);
            SqlDataReader dr = selectStates.ExecuteReader();
            if (dr.HasRows)
            {
                rptState.DataSource = dr;
                rptState.DataBind();
            }
            dr.Close();
            conn.Close();
        }

        protected void bindCity()
        {
            conn.Close();
            conn.Open();
            SqlCommand selectCities = new SqlCommand("SELECT * FROM tblCity ORDER BY sid ASC", conn);
            SqlDataReader dr = selectCities.ExecuteReader();
            if (dr.HasRows)
            {
                rptCity.DataSource = dr;
                rptCity.DataBind();
            }
            dr.Close();
            conn.Close();
        }
    }
}