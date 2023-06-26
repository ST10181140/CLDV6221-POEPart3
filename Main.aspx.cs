using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent
{
    public partial class Main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewCar.DataBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");
        }

        protected void btnRead_Click(object sender, EventArgs e)
        {
            Response.Redirect("Read.aspx");
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("Delete.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Create.aspx");
        }

        protected void btnRentalsAndReturns_Click(object sender, EventArgs e)
        {
            Response.Redirect("Rentals.aspx");
        }

        protected void btnLogOut_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}