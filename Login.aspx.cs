using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TheRideYouRent
{
    public partial class Login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnLogin_Click1(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=lab000000\\SQLEXPRESS;Integrated Security=True");
            SqlDataAdapter sda = new SqlDataAdapter("SELECT COUNT (*) FROM Login_ST10181140 WHERE username ='" + txtUsername.Text + "'AND password ='" + txtPassword.Text + "'", con);
            DataTable dtable = new DataTable();
            sda.Fill(dtable);
            if (dtable.Rows[0][0].ToString() == "1")
            {
                Response.Redirect("Main.aspx");
            }

            else
            {
                Response.Write("Incorrect Login Details. Please try again.");
            }

        }

        protected void btnExit_Click(object sender, EventArgs e)
        {
            Response.Close();
        }
    }
}