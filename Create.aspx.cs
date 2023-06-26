using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent
{
    public partial class Create : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GridViewCar.Visible = false;
            GridViewInspector.Visible = false;
            GridViewDriver.Visible = false;
        }

        protected void btnDriver_Click(object sender, EventArgs e)
        {
            GridViewInspector.Visible = false;
            GridViewCar.Visible = false;
            GridViewDriver.Visible = true;

            lblDriverName.Visible = true;
            lblDriverSurname.Visible = true;
            lblDriverAddress.Visible = true;
            lblHouseNo.Visible = true;
            lblStreet.Visible = true;
            lblCity.Visible = true;
            lblPostalCode.Visible = true;
            lblProvince.Visible = true;
            lblDriverEmail.Visible = true;
            lblDriverMobile.Visible = true;
            txtDriverName.Visible = true;
            txtDriverSurname.Visible = true;
            txtHouseNo.Visible = true;
            txtStreetName.Visible = true;
            txtProvince.Visible = true;
            txtCity.Visible = true;
            txtPostalCode.Visible = true;
            txtDriverEmail.Visible = true;
            txtDriverMobile.Visible = true;
            btnInsertDriver.Visible = true;

            lblInspectorNo.Visible = false;
            lblInspectorName.Visible = false;
            lblInspectorSurname.Visible = false;
            lblInspectorEmail.Visible = false;
            lblInspectorMobile.Visible = false;
            txtInspectorNo.Visible = false;
            txtInspectorName.Visible = false;
            txtInspectorSurname.Visible = false;
            txtInspectorEmail.Visible = false;
            txtInspectorMobile.Visible = false;
            btnInsertInspector.Visible = false;

            lblCarNo.Visible = false;
            lblCarMake.Visible = false;
            lblCarModel.Visible = false;
            lblCarBodyType.Visible = false;
            lblServiceKm.Visible = false;
            lblCarMileage.Visible = false;
            lblCarAvailable.Visible = false;
            txtCarNo.Visible = false;
            txtCarMake.Visible = false;
            txtCarModel.Visible = false;
            txtServiceKm.Visible = false;
            txtCarBodyType.Visible = false;
            txtCarMileage.Visible = false;
            txtCarAvailable.Visible = false;
            btnInsertCar.Visible = false;
        }

        protected void btnInspector_Click(object sender, EventArgs e)
        {
            GridViewDriver.Visible = false;
            GridViewCar.Visible = false;
            GridViewInspector.Visible = true;

            lblInspectorNo.Visible = true;
            lblInspectorName.Visible = true;
            lblInspectorSurname.Visible = true;
            lblInspectorEmail.Visible = true;
            lblInspectorMobile.Visible = true;
            txtInspectorNo.Visible = true;
            txtInspectorName.Visible = true;
            txtInspectorSurname.Visible = true;
            txtInspectorEmail.Visible = true;
            txtInspectorMobile.Visible = true;
            btnInsertInspector.Visible = true;

            lblDriverName.Visible = false;
            lblDriverSurname.Visible = false;
            lblDriverAddress.Visible = false;
            lblHouseNo.Visible = false;
            lblStreet.Visible = false;
            lblCity.Visible = false;
            lblPostalCode.Visible = false;
            lblProvince.Visible = false;
            lblDriverEmail.Visible = false;
            lblDriverMobile.Visible = false;
            txtDriverName.Visible = false;
            txtDriverSurname.Visible = false;
            txtHouseNo.Visible = false;
            txtStreetName.Visible = false;
            txtProvince.Visible = false;
            txtCity.Visible = false;
            txtPostalCode.Visible = false;
            txtDriverEmail.Visible = false;
            txtDriverMobile.Visible = false;
            btnInsertDriver.Visible = false;

            lblCarNo.Visible = false;
            lblCarMake.Visible = false;
            lblCarModel.Visible = false;
            lblCarBodyType.Visible = false;
            lblServiceKm.Visible = false;
            lblCarMileage.Visible = false;
            lblCarAvailable.Visible = false;
            txtCarNo.Visible = false;
            txtCarMake.Visible = false;
            txtCarModel.Visible = false;
            txtServiceKm.Visible = false;
            txtCarBodyType.Visible = false;
            txtCarMileage.Visible = false;
            txtCarAvailable.Visible = false;
            btnInsertCar.Visible = false;
        }

        protected void btnCar_Click(object sender, EventArgs e)
        {
            GridViewDriver.Visible = false;
            GridViewInspector.Visible = false;
            GridViewCar.Visible = true;

            lblCarNo.Visible = true;
            lblCarMake.Visible = true;
            lblCarModel.Visible = true;
            lblCarBodyType.Visible = true;
            lblServiceKm.Visible = true;
            lblCarMileage.Visible = true;
            lblCarAvailable.Visible = true;
            txtCarNo.Visible = true;
            txtCarMake.Visible = true;
            txtCarModel.Visible = true;
            txtServiceKm.Visible = true;
            txtCarBodyType.Visible = true;
            txtCarMileage.Visible = true;
            txtCarAvailable.Visible = true;
            btnInsertCar.Visible = true;

            lblDriverName.Visible = false;
            lblDriverSurname.Visible = false;
            lblDriverAddress.Visible = false;
            lblHouseNo.Visible = false;
            lblStreet.Visible = false;
            lblCity.Visible = false;
            lblPostalCode.Visible = false;
            lblProvince.Visible = false;
            lblDriverEmail.Visible = false;
            lblDriverMobile.Visible = false;
            txtDriverName.Visible = false;
            txtDriverSurname.Visible = false;
            txtHouseNo.Visible = false;
            txtStreetName.Visible = false;
            txtProvince.Visible = false;
            txtCity.Visible = false;
            txtPostalCode.Visible = false;
            txtDriverEmail.Visible = false;
            txtDriverMobile.Visible = false;
            btnInsertDriver.Visible = false;

            lblInspectorNo.Visible = false;
            lblInspectorName.Visible = false;
            lblInspectorSurname.Visible = false;
            lblInspectorEmail.Visible = false;
            lblInspectorMobile.Visible = false;
            txtInspectorNo.Visible = false;
            txtInspectorName.Visible = false;
            txtInspectorSurname.Visible = false;
            txtInspectorEmail.Visible = false;
            txtInspectorMobile.Visible = false;
            btnInsertInspector.Visible = false;
        }

        protected void btnInsertDriver_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Initial Catalog=RideYouRent_ST10181140;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Driver_ST10181140]" + "([DriverFirstName], [DriverLastName],[DriverEmail],[DriverMobile],[HouseNumber],[StreetName],[City],[Province],[PostalCode])" +
                "VALUES" + "('" + txtDriverName.Text + "', '" + txtDriverSurname.Text + "', '" + txtDriverEmail.Text + "', '" + txtDriverMobile.Text + "', '" + txtHouseNo.Text + "', '" + txtStreetName.Text + "', '" + txtCity.Text + "', '" + txtCity.Text + "','" + txtPostalCode.Text + "')", con);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("The data has been created successfully!");
            con.Close();

            GridViewDriver.DataBind();
            GridViewDriver.Visible = true;
            lblDriverName.Visible = false;
            lblDriverSurname.Visible = false;
            lblDriverAddress.Visible = false;
            lblDriverEmail.Visible = false;
            lblDriverMobile.Visible = false;
            lblHouseNo.Visible = false;
            lblStreet.Visible = false;
            lblProvince.Visible = false;
            lblCity.Visible = false;
            lblPostalCode.Visible = false;
            txtDriverName.Visible = false;
            txtDriverSurname.Visible = false;
            txtHouseNo.Visible = false;
            txtStreetName.Visible = false;
            txtProvince.Visible = false;
            txtCity.Visible = false;
            txtPostalCode.Visible = false;
            txtDriverEmail.Visible = false;
            txtDriverMobile.Visible = false;
            btnInsertDriver.Visible = false;
        }

        protected void btnInsertInspector_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Initial Catalog=RideYouRent_ST10181140;Integrated Security=True");

            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Inspector_ST10181140]" +
                "([Name], [Surname], [Address], [Email], [Mobile]) " +
                "VALUES" +
                "('" + txtInspectorName.Text + "', '" + txtInspectorSurname + "', '" + txtInspectorEmail.Text + "','" + txtInspectorMobile.Text + "')", con);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data inserted successfully");
            con.Close();

            GridViewInspector.DataBind();

        }

        protected void btnInsertCar_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data source = ABRAR\\MSSQLSERVER01; Initial Catalog = Rent_a_Ride; Integrated Security = True");

            SqlCommand cmd = new SqlCommand(@"INSERT INTO [dbo].[Car_ST10181140]" +
                "([CarNo], [CarMake], [Model], [BodyType], [KiloTravelled], [ServiceKilometres], [Available]) " +
                "VALUES" +
                "('" + txtCarNo.Text + "', '" + txtCarMake.Text + "','" + txtCarModel.Text + "','" + txtCarBodyType.Text + "', '" + txtCarMileage.Text + "', '" + txtServiceKm.Text + "', '" + txtCarAvailable.Text + "')", con);

            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Data inserted successfully");
            con.Close();

            GridViewCar.DataBind();

            GridViewCar.Visible = true;

            lblCarNo.Visible = false;
            lblCarMake.Visible = false;
            lblCarModel.Visible = false;
            lblCarBodyType.Visible = false;
            lblServiceKm.Visible = false;
            lblCarMileage.Visible = false;
            lblCarAvailable.Visible = false;
            txtCarNo.Visible = false;
            txtCarMake.Visible = false;
            txtCarModel.Visible = false;
            txtServiceKm.Visible = false;
            txtCarBodyType.Visible = false;
            txtCarMileage.Visible = false;
            txtCarAvailable.Visible = false;
            btnInsertCar.Visible = false;
        }

        protected void btnReturn_Click(object sender, EventArgs e)
        {
            Response.Redirect("Main.aspx");
        }
    }
}