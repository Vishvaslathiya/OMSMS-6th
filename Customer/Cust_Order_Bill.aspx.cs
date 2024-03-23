<<<<<<< HEAD
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Customer
{
    public partial class Cust_Order_Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    }
=======
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Customer
{
    public partial class Cust_Order_Bill : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        // method to calculate the total price of the order
        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // get the quantity and price of the product
            int quantity = Convert.ToInt32(txtQuantity.Text);
            double price = Convert.ToDouble(txtPrice.Text);

            // calculate the total price
            double totalPrice = quantity * price;

            // display the total price
            lblTotalPrice.Text = totalPrice.ToString();
        }

    }
 }
