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
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Forms;
using System.Security.Cryptography;
using OpenAI_API;
using OpenAI_API.Embedding;
using System.Drawing.Imaging;

namespace Rentishaclone.Pages
{

    
    public partial class Index : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            string ConnectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Kodisha-final\\App_Data\\MainDatabase.mdf;Integrated Security=True";
            // Establish a connection to the database
            using (SqlConnection connection = new SqlConnection(ConnectionString))
            {
                try
                {
                    connection.Open();

                    // SQL query to retrieve data from the database
                    string query = "SELECT * FROM Properties WHERE Visits=(SELECT MAX(Visits) FROM Properties)";
                    string query2 = "SELECT * FROM Properties WHERE Visits =(SELECT MAX(Visits) FROM Properties WHERE Visits < (SELECT MAX(Visits) FROM Properties))";
                    string query3 = "SELECT * FROM Properties WHERE Visits =(SELECT MAX(Visits) FROM Properties WHERE Visits < (SELECT MAX(Visits) FROM Properties WHERE Visits < (SELECT MAX(Visits) FROM Properties)))";


                    //MOST VISITS
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        SqlDataReader reader = command.ExecuteReader();

                        if (reader.HasRows)
                        {
                            // Read the first row of data
                            reader.Read();

                            // Read values from the columns and assign them to labels
                            byte[] imageData = (byte[])reader["Images"];
                            Image1.ImageUrl = "data:image;base64," + Convert.ToBase64String(imageData);
                            price1.Text = reader["Price"].ToString(); 
                            location1.Text = reader["Town"].ToString(); 
                            status1.Text = reader["Status"].ToString();
                            bed1.Text = reader["Bedrooms"].ToString();
                            bath1.Text = reader["Bathrooms"].ToString();
                            //category1.Text = reader["Status"].ToString();
                            reader.Close();
                        }
                        else
                        {
                            MessageBox.Show("No data found in the database.");
                        }
                    }


                    //2ND MOST VISITS
                    using (SqlCommand command2 = new SqlCommand(query2, connection))
                    {
                        SqlDataReader reader = command2.ExecuteReader();

                        if (reader.HasRows)
                        {
                            // Read the first row of data
                            reader.Read();

                            // Read values from the columns and assign them to labels
                            byte[] imageData = (byte[])reader["Images"];
                            Image2.ImageUrl = "data:image;base64," + Convert.ToBase64String(imageData);
                            price2.Text = reader["Price"].ToString();
                            location2.Text = reader["Town"].ToString();
                            status2.Text = reader["Status"].ToString();
                            bed2.Text = reader["Bedrooms"].ToString();
                            bath2.Text = reader["Bathrooms"].ToString();
                            reader.Close();
                        }
                        else
                        {
                            MessageBox.Show("No data found in the database.");
                        }
                    }


                    //3RD MOST VISITS
                    using (SqlCommand command3 = new SqlCommand(query3, connection))
                    {
                        SqlDataReader reader = command3.ExecuteReader();

                        if (reader.HasRows)
                        {
                            // Read the first row of data
                            reader.Read();

                            // Read values from the columns and assign them to labels
                            byte[] imageData = (byte[])reader["Images"];
                            Image3.ImageUrl = "data:image;base64," + Convert.ToBase64String(imageData);
                            price3.Text = reader["Price"].ToString();
                            location3.Text = reader["Town"].ToString();
                            status3.Text = reader["Status"].ToString();
                            bed3.Text = reader["Bedrooms"].ToString();
                            bath3.Text = reader["Bathrooms"].ToString();
                            reader.Close();
                        }
                        else
                        {
                            MessageBox.Show("No data found in the database.");
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("Error: " + ex.Message);
                }
            }
        }

        

    }
}