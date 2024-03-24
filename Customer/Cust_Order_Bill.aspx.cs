
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
            int quantity = Convert.ToInt32(prd_quantity.Text);
            double price = Convert.ToDouble(prd_price.Text);
            double totalPrice = quantity * price;

            // Display the total price in a label
            prd_total.Text = totalPrice.ToString();

            // Generate script to display alert with total price
            string script = "alert('Total Price: " + totalPrice.ToString() + "');";

            // Register the script to execute on client side
            ClientScript.RegisterStartupScript(this.GetType(), "TotalPriceAlert", script, true);
        }

    }
 }