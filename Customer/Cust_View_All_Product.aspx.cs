using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Customer
{
    public partial class Cust_View_All_Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Add_to_Cart(object sender, EventArgs e)
        {
            // alert the user that the product has been added to the cart
            Response.Write("<script>alert('Product has been added to the cart!');</script>");

        }
    }
}