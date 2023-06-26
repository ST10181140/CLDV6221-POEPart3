using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewDriver.DataBind();
            GridViewCar.DataBind();
            GridViewInspector.DataBind();

            GridViewDriver.Visible = false; 
            GridViewInspector.Visible= false;
            GridViewCar.Visible= false;

        }

        protected void btnUpdateCar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Integrated Security=True");

            SqlCommand cmd = new SqlCommand(@"UPDATE[dbo].[ST10091209_Car]
            SET [CarMake] = '" + txtCarMake.Text + "',[Model] = '" + txtCarModel.Text + "',[BodyType] = '" + txtCarBodyType.Text + "',[Mileage] = '" + txtMileage.Text + "', [ServiceKilometres] = '" + txtServiceKm.Text + "', [Available] = '" + txtAvailable.Text +
            "' WHERE [CarNo]='" + txtCarNo.Text + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data updated succesfully");
            con.Close();

            GridViewCar.Visible = false;

            lblCarNo.Visible = false;
            lblCarMake.Visible = false;
            lblCarModel.Visible = false;
            lblBodyType.Visible = false;
            lblMileage.Visible = false;
            lblServiceKm.Visible = false;
            lblAvailable.Visible = false;

            txtCarNo.Visible = false;
            txtCarMake.Visible = false;
            txtCarModel.Visible = false;
            txtCarBodyType.Visible = false;
            txtMileage.Visible = false;
            txtServiceKm.Visible = false;
            txtAvailable.Visible = false;

            btnUpdateCar.Visible = false;

        }

        protected void btnUpdateDriver_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Integrated Security=True");

            SqlCommand cmd = new SqlCommand(@"UPDATE[dbo].[ST10091209Driver]
            SET [Name] = '" + txtDriverName.Text + "',[Surname] = '" + txtDriverSurname.Text + "',[houseNo] = '" + txtHouseNo.Text + "',[streetName] = '" + txtStreetName.Text + "', [suburb] = '" + txtCity.Text + "', [postalCode] = '" + txtPostalCode.Text + "'," +
            " [Email] = '" + txtDriverEmail.Text + "', [Mobile] = '" + txtDriverMobile.Text + "' WHERE [DriverID]='" + txtDriverID.Text + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data updated succesfully");
            con.Close();

            GridViewDriver.Visible = false;

            lblDriverID.Visible = false;
            lblDriverName.Visible = false;
            lblDriverSurname.Visible = false;
            lblDriverAddress.Visible = false;
            lblDriverEmail.Visible = false;
            lblDriverMobile.Visible = false;

            txtDriverID.Visible = false;
            txtDriverName.Visible = false;
            txtDriverSurname.Visible = false;
            lblHouseNo.Visible = false;
            lblStreet.Visible = false;
            lblCity.Visible = false;
            lblPostalCode.Visible = false;
            txtHouseNo.Visible = false;
            txtStreetName.Visible = false;
            txtCity.Visible = false;
            txtPostalCode.Visible = false;
            txtDriverEmail.Visible = false;
            txtDriverMobile.Visible = false;

            btnUpdateDriver.Visible = false;
        }

        protected void btnUpdateInspector_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Integrated Security=True");

            SqlCommand cmd = new SqlCommand(@"UPDATE[dbo].[Inspector]
            SET [Name] = '" + txtInspectorName.Text + "',[Surname] = '" + txtInspectorSurname.Text + "',[Email] = '" + txtInspectorEmail.Text + "',[Mobile] = '" + txtInspectorMobile.Text + "' WHERE [InspectorNo]='" + txtInspectorID.Text + "'", con);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data updated succesfully");
            con.Close();

            GridViewInspector.Visible = false;

            lblInspectorID.Visible = false;
            lblInspectorName.Visible = false;
            lblInspectorSurname.Visible = false;
            lblInspectorEmail.Visible = false;
            lblInspectorMobile.Visible = false;

            txtInspectorID.Visible = false;
            txtInspectorName.Visible = false;
            txtInspectorSurname.Visible = false;
            txtInspectorEmail.Visible = false;
            txtInspectorMobile.Visible = false;

            btnUpdateInspector.Visible = false;
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }

        protected void choiceDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            string choice = choiceDropDown.SelectedValue;

           switch (choice)
            {
                case "1":
                    GridViewCar.Visible = true;
                    GridViewInspector.Visible = false;
                    GridViewDriver.Visible = false;

                    txtCarNo.Visible = true;
                    txtCarMake.Visible = true;
                    txtCarModel.Visible = true;
                    txtCarBodyType.Visible = true;
                    txtMileage.Visible = true;
                    txtServiceKm.Visible = true;
                    txtAvailable.Visible = true;

                    lblCarNo.Visible = true;
                    lblCarMake.Visible = true;
                    lblCarModel.Visible = true;
                    lblBodyType.Visible = true;
                    lblMileage.Visible = true;
                    lblServiceKm.Visible = true;
                    lblAvailable.Visible = true;

                    btnUpdateCar.Visible = true;

                    txtInspectorID.Visible = false;
                    txtInspectorName.Visible = false;
                    txtInspectorSurname.Visible = false;
                    txtInspectorEmail.Visible = false;
                    txtInspectorMobile.Visible = false;

                    lblInspectorID.Visible = false;
                    lblInspectorName.Visible = false;
                    lblInspectorSurname.Visible = false;
                    lblInspectorEmail.Visible = false;
                    lblInspectorMobile.Visible = false;

                    btnUpdateInspector.Visible = false;

                    txtDriverID.Visible = false;
                    txtDriverName.Visible = false;
                    txtDriverSurname.Visible = false;
                    lblHouseNo.Visible = false;
                    lblStreet.Visible = false;
                    lblCity.Visible = false;
                    lblPostalCode.Visible = false;
                    txtHouseNo.Visible = false;
                    txtStreetName.Visible = false;
                    txtCity.Visible = false;
                    txtPostalCode.Visible = false;
                    txtDriverEmail.Visible = false;
                    txtDriverMobile.Visible = false;

                    lblDriverID.Visible = false;
                    lblDriverName.Visible = false;
                    lblDriverSurname.Visible = false;
                    lblDriverAddress.Visible = false;
                    lblDriverEmail.Visible = false;
                    lblDriverMobile.Visible = false;

                    btnUpdateDriver.Visible = false;
                    break;
                case "2":
                    GridViewDriver.Visible = true;
                    GridViewCar.Visible = false;
                    GridViewInspector.Visible = false;

                    txtDriverID.Visible = true;
                    txtDriverName.Visible = true;
                    txtDriverSurname.Visible = true;
                    lblHouseNo.Visible = true;
                    lblStreet.Visible = true;
                    lblCity.Visible = true;
                    lblPostalCode.Visible = true;
                    txtHouseNo.Visible = true;
                    txtStreetName.Visible = true;
                    txtCity.Visible = true;
                    txtPostalCode.Visible = true;
                    txtDriverEmail.Visible = true;
                    txtDriverMobile.Visible = true;

                    lblDriverID.Visible = true;
                    lblDriverName.Visible = true;
                    lblDriverSurname.Visible = true;
                    lblDriverAddress.Visible = true;
                    lblDriverEmail.Visible = true;
                    lblDriverMobile.Visible = true;

                    btnUpdateDriver.Visible = true;

                    txtInspectorID.Visible = false;
                    txtInspectorName.Visible = false;
                    txtInspectorSurname.Visible = false;
                    txtInspectorEmail.Visible = false;
                    txtInspectorMobile.Visible = false;

                    lblInspectorID.Visible = false;
                    lblInspectorName.Visible = false;
                    lblInspectorSurname.Visible = false;
                    lblInspectorEmail.Visible = false;
                    lblInspectorMobile.Visible = false;

                    btnUpdateInspector.Visible = false;

                    txtCarNo.Visible = false;
                    txtCarMake.Visible = false;
                    txtCarModel.Visible = false;
                    txtCarBodyType.Visible = false;
                    txtMileage.Visible = false;
                    txtServiceKm.Visible = false;
                    txtAvailable.Visible = false;

                    lblCarNo.Visible = false;
                    lblCarMake.Visible = false;
                    lblCarModel.Visible = false;
                    lblBodyType.Visible = false;
                    lblMileage.Visible = false;
                    lblServiceKm.Visible = false;
                    lblAvailable.Visible = false;

                    btnUpdateCar.Visible = false;
                    break;

                case "3":
                    GridViewInspector.Visible = true;
                    GridViewCar.Visible = false;
                    GridViewDriver.Visible = false;

                    txtInspectorID.Visible = true;
                    txtInspectorName.Visible = true;
                    txtInspectorSurname.Visible = true;
                    txtInspectorEmail.Visible = true;
                    txtInspectorMobile.Visible = true;

                    lblInspectorID.Visible = true;
                    lblInspectorName.Visible = true;
                    lblInspectorSurname.Visible = true;
                    lblInspectorEmail.Visible = true;
                    lblInspectorMobile.Visible = true;

                    btnUpdateInspector.Visible = true;

                    txtCarNo.Visible = false;
                    txtCarMake.Visible = false;
                    txtCarModel.Visible = false;
                    txtCarBodyType.Visible = false;
                    txtMileage.Visible = false;
                    txtServiceKm.Visible = false;
                    txtAvailable.Visible = false;

                    lblCarNo.Visible = false;
                    lblCarMake.Visible = false;
                    lblCarModel.Visible = false;
                    lblBodyType.Visible = false;
                    lblMileage.Visible = false;
                    lblServiceKm.Visible = false;
                    lblAvailable.Visible = false;

                    btnUpdateCar.Visible = false;

                    txtDriverID.Visible = false;
                    txtDriverName.Visible = false;
                    txtDriverSurname.Visible = false;
                    lblHouseNo.Visible = false;
                    lblStreet.Visible = false;
                    lblCity.Visible = false;
                    lblPostalCode.Visible = false;
                    txtHouseNo.Visible = false;
                    txtStreetName.Visible = false;
                    txtCity.Visible = false;
                    txtPostalCode.Visible = false;
                    txtDriverEmail.Visible = false;
                    txtDriverMobile.Visible = false;

                    lblDriverID.Visible = false;
                    lblDriverName.Visible = false;
                    lblDriverSurname.Visible = false;
                    lblDriverAddress.Visible = false;
                    lblDriverEmail.Visible = false;
                    lblDriverMobile.Visible = false;

                    btnUpdateDriver.Visible = false;
                    break;

                
            }
        }

    }
        }
    
