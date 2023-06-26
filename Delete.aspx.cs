using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent
{
    public partial class Delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewCar.DataBind();
            GridViewInspector.DataBind();
            GridViewDriver.DataBind();

            GridViewCar.Visible = false;
            GridViewInspector.Visible = false;
            GridViewDriver.Visible = false;
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string display = displayChoice.SelectedValue.ToString();
            string delete = deleteChoice.SelectedValue.ToString();


            SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Initial Catalog=RideYouRent_ST10181140;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"DELETE FROM [dbo].[" +  displayChoice.SelectedValue + "_ST10181140" + "] WHERE [" + deleteChoice.SelectedValue +"] = '" + txtDeleteID.Text + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("The selected data has been deleted succesfully!");
            con.Close();

            GridViewCar.DataBind();
            GridViewInspector.DataBind();
            GridViewDriver.DataBind();

            Response.Write(" <br /> Here is the data current stored in Car, Driver and Inspector <br />");
            GridViewDriver.Visible = true;
            GridViewCar.Visible = true;
            GridViewInspector.Visible = true;
        }

        protected void choiceDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string display = displayChoice.SelectedValue;
            switch (display)
            {

                case "Car":
                    GridViewCar.Visible = true;
                    GridViewInspector.Visible = false;
                    GridViewDriver.Visible = false;

                    break;

                case "Driver":
                    GridViewCar.Visible = false;
                    GridViewInspector.Visible = false;
                    GridViewDriver.Visible = true;

                    break;

                case "Inspector":
                    GridViewCar.Visible = false;
                    GridViewInspector.Visible = true;
                    GridViewDriver.Visible = false;

                    break;
            }
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}
