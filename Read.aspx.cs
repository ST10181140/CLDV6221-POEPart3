using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent
{
    public partial class Read : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewCar.DataBind();
            GridViewDriver.DataBind();
            GridViewInspector.DataBind();
            GridViewFine.DataBind();
            GridViewRental.DataBind();
            GridViewReturn.DataBind();

            GridViewCar.Visible = false;
            GridViewDriver.Visible = false;
            GridViewInspector.Visible = false;
            GridViewFine.Visible = false;
            GridViewRental.Visible = false;
            GridViewReturn.Visible = false;


        }

        protected void ReadChoice_SelectedIndexChanged(object sender, EventArgs e)
        {
            string select = ReadChoice.SelectedValue;
            switch (select)
            {
                case "1":
                    GridViewCar.Visible = true;
                    GridViewDriver.Visible = false;
                    GridViewInspector.Visible = false;
                    GridViewFine.Visible = false;
                    GridViewRental.Visible = false;
                    GridViewReturn.Visible = false;
                    break;

                case "2":
                    GridViewCar.Visible = false;
                    GridViewDriver.Visible = true;
                    GridViewInspector.Visible = false;
                    GridViewFine.Visible = false;
                    GridViewRental.Visible = false;
                    GridViewReturn.Visible = false;
                    break;
                case "3":
                    GridViewCar.Visible = false;
                    GridViewDriver.Visible = false;
                    GridViewInspector.Visible = true;
                    GridViewFine.Visible = false;
                    GridViewRental.Visible = false;
                    GridViewReturn.Visible = false;
                    break;
                case "4":
                    GridViewCar.Visible = false;
                    GridViewDriver.Visible = false;
                    GridViewInspector.Visible = false;
                    GridViewFine.Visible = true;
                    GridViewRental.Visible = false;
                    GridViewReturn.Visible = false;
                    break;
                case "5":
                    GridViewCar.Visible = false;
                    GridViewDriver.Visible = false;
                    GridViewInspector.Visible = false;
                    GridViewFine.Visible = false;
                    GridViewRental.Visible = true;
                    GridViewReturn.Visible = false;
                    break;
                case "6":
                    GridViewCar.Visible = false;
                    GridViewDriver.Visible = false;
                    GridViewInspector.Visible = false;
                    GridViewFine.Visible = false;
                    GridViewRental.Visible = false;
                    GridViewReturn.Visible = true;
                    break;
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}
