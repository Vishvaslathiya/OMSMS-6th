using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Admin
{
    public partial class Admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["AdminEmail"] == null)
            {
                Response.Redirect("../Customer/Default.aspx");
            }
        }
        //protected void btnSignout_Click(object sender, EventArgs e)
        //{
        //    Session.RemoveAll();
        //    Response.Write("<script>alert('Logged Out Successfully!'); window.location='../Customer/Default.aspx';</script>");
        //    //Response.Redirect("../Customer/Default.aspx");
        //}
    }
}