using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent
{
    public partial class Rentals : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewRental.DataBind();
            GridViewReturn.DataBind();
           
            GridViewRental.Visible = false;
            GridViewReturn.Visible = false;

        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void createRentalReturn_Click(object sender, EventArgs e)
        {
            string selected = DropDownSelectAdd.SelectedValue.ToString();

            if (selected == "1")

            {
                SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Initial Catalog=RideYouRent_ST10181140;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Rental_ST10181140] ([CarNo], [InspectorNo], [DriverID], [StartDate], [EndDate], [RentalFee])
            VALUES
            ('" + txtCarNo.Text + "', '" + txtInspectorNo.Text + "','" + txtDriverID.Text + "','" + txtRentalFee.Text + "', '" + calStart.SelectedDate + "', '" + calEnd.SelectedDate + "')", con);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("The Data has been inserted succesfully");
                con.Close();

                GridViewRental.DataBind();
                GridViewRental.Visible = true;
            }
            else
            {
                SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Integrated Security=True");
                SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[ST10091209_Returned] ([CarNo], [InspectorNo], [DriverNo], [ReturnDate], [elapsedDate], [fine])
            VALUES
            ('" + txtCarNo.Text + "', '" + txtInspectorNo.Text + "','" + txtDriverID.Text + "','" + txtReturnDate.Text + "', '" + txtElapsedDays.Text + "', '" + txtFine.Text + "')", con);

                con.Open();
                cmd.ExecuteNonQuery();
                Response.Write("The Data has been inserted succesfully");
                con.Close();

                GridViewReturn.DataBind();
                GridViewReturn.Visible = true;
            }
            GridViewRental.DataBind();
            GridViewReturn.DataBind();
        }
    

        protected void DropDownSelectAdd_SelectedIndexChanged(object sender, EventArgs e)
        {
            string add = DropDownSelectAdd.SelectedValue.ToString();

            switch (add)
            {
                case "1":
                    LabelCarNo.Visible = true;
                    txtCarNo.Visible = true;
                    LabelInspectorNo.Visible = true;
                    txtInspectorNo.Visible = true;
                    LabelDriverID.Visible = true;
                    txtDriverID.Visible = true;
                    LabelRentalFee.Visible = true;
                    txtRentalFee.Visible = true;
                    LabelStartDate.Visible = true;
                    calStart.Visible = true;
                    LabelEndDate.Visible = true;
                    calEnd.Visible = true;
                    LabelReturn.Visible = true;
                    calReturn.Visible = true;

                   LabelReturnDate.Visible = false;
                    txtReturnDate.Visible = false;
                    LabelFine.Visible = false;
                    txtFine.Visible = false;
                    LabelElapsedDays.Visible = false;
                    txtElapsedDays.Visible = false;

                    btnCreateRentalReturn.Visible = true;

                    break;

                case "2":
                    LabelCarNo.Visible = true;
                    txtCarNo.Visible = true;
                    LabelInspectorNo.Visible = true;
                    txtInspectorNo.Visible = true;
                    LabelDriverID.Visible = true;
                    txtDriverID.Visible = true;
                    LabelRentalFee.Visible = false;
                    txtRentalFee.Visible = false;
                    LabelStartDate.Visible = false;
                    calStart.Visible = false;
                    LabelEndDate.Visible = false;
                    calEnd.Visible = false;
                    LabelReturn.Visible = false;
                    calReturn.Visible = false;

                    LabelReturnDate.Visible = false;
                    txtReturnDate.Visible = false;
                    LabelFine.Visible = true;
                    txtFine.Visible = true;
                    LabelElapsedDays.Visible = true;
                    txtElapsedDays.Visible = true;

                    btnCreateRentalReturn.Visible = true;

                    break;
            }
        }

        protected void DropDownSelectView_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectItem = DropDownSelectView.SelectedValue;

            switch (selectItem)
            {
                case "1":
                    GridViewRental.Visible = true;
                    GridViewReturn.Visible = false;
                    break;

                case "2":
                    GridViewRental.Visible = false;
                    GridViewReturn.Visible = true;
                    break;
            }
        }
    }
    }

  
    
