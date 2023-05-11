using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rentishaclone.Pages
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            {
                string fname = txtfname.Text;
                string lname = txtlname.Text;
                string email = txtemail.Text;
                string phone = txtphone.Text;
                string password = txtpass.Text;

                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                string query = "INSERT INTO Users (First_Name,Last_Name, Email, Phone, Password) VALUES (@value1, @value2, @value3, @value4, @value5)";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                           
                         
                                using (SqlCommand command = new SqlCommand(query, connection))
                                {

                                    command.Parameters.AddWithValue("@value1", fname);
                                    command.Parameters.AddWithValue("@value2", lname);
                                    command.Parameters.AddWithValue("@value3", email);
                                    command.Parameters.AddWithValue("@value4", phone);
                                    command.Parameters.AddWithValue("@value5", password);

                                    command.ExecuteNonQuery();
                                }
                            
                            // Show a success message
                            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Sign up successful!');", true);
                            Response.Redirect("Login.aspx");
                        }
                    }
                }

            }
}