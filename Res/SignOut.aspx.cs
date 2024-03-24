using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Res
{
    public partial class SignOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["sid"].Equals("1"))
            {
                Session.RemoveAll();
                Response.Redirect("~/Customer/Default.aspx");
            } else
            {
                Response.Redirect("~/Customer/Default.aspx");
            }
        }
    }
}