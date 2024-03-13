using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMSMS6.Customer
{
    public partial class View_Product_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public static void StoreSelectedColor(string color)
        {
            // Store the selected color in the backend (e.g., in a database or session)
            // For simplicity, let's assume you store it in a session variable
            HttpContext.Current.Session["SelectedColor"] = color;
        }
        public void ProcessRequest(HttpContext context)
        {
            string colorName = context.Request.QueryString["color"];
            // Here you can store the selected color name in your backend logic
            // For demonstration purposes, let's just print it to the console
            Console.WriteLine("Selected color: " + colorName);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}