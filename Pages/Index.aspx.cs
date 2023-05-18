using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Drawing;
using System.IO;
using System.Windows.Forms;
using System.Security.Cryptography;

namespace Rentishaclone.Pages
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve data from the database
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Kodisha-final\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                string query = "SELECT Property_name, County, Price, Images, Status FROM Properties";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();

                    if (reader.Read())
                    {
                        // Set the text data in labels
                        lblname.Text = reader["Property_name"].ToString();
                        lblCounty.Text = reader["County"].ToString();
                        lblPrice.Text = reader["Price"].ToString();
                        lblstatus.Text = reader["Status"].ToString();

                        // Convert varbinary image data into an image and display it
                        byte[] imageData = (byte[])reader["Images"];
                        string base64String = Convert.ToBase64String(imageData);
                        imgProperty.ImageUrl = "data:image/jpeg;base64," + base64String;
                    }

                    reader.Close();
                }
            }
        }
    }
}