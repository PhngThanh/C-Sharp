using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace PPQ
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(@"Data Source=.;Initial Catalog=LOGIN;Integrated Security=True");
            conn.Open();
            SqlCommand com = new SqlCommand("Select * From tblAccount Where username = '" + txtUsername.Text + "' and pass = '" + txtPass.Text + "'", conn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.Read())
            {
                //IsSuccessfull = true;
                //MessageBox.Show("The login is successful!");
                //this.Close();
                Response.Redirect("Admin.aspx");
            }
            else
            {
                Label2.Text = "The login failed!";
                //Login.MessageBox.Show("The login failed!");
                //txtUsername.Text = "";
                //txtPass.Text = "";
                //txtUsername.Focus();
            }
        }
    }
}