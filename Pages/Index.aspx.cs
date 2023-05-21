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
using OpenAI_API;

namespace Rentishaclone.Pages
{

    
    public partial class Index : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve data from the database table
            DataTable table = GetDataFromDatabase();

            // Loop through each item in the DataTable
            foreach (DataRow row in table.Rows)
            {
                //New Div
                var div = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                div.Attributes["class"] = "pop-details";

                //Image
                var imgProperty = new System.Web.UI.WebControls.Image();
                imgProperty.ID = "imgProperty";
                imgProperty.CssClass = "pop-image";
                byte[] imageData = GetImageDataFromDatabase();
                string base64Image = Convert.ToBase64String(imageData);
                imgProperty.ImageUrl = "data:image/jpeg;base64," + base64Image;
                div.Controls.Add(imgProperty);

                //Inner Div
                var labelDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                labelDiv.Attributes["style"] = "display:flex;justify-content:left;align-content:space-evenly;height:4vh;width:25vw;";

                //Label price
                var lblPrice = new System.Web.UI.WebControls.Label();
                lblPrice.ID = "lblPrice";
                lblPrice.CssClass = "details-lables";
                lblPrice.ForeColor = System.Drawing.Color.SeaGreen;
                lblPrice.Text = row["Price"].ToString();
                labelDiv.Controls.Add(lblPrice);

                //Label Status
                var lblStatus = new System.Web.UI.WebControls.Label();
                lblStatus.ID = "lblStatus";
                lblStatus.CssClass = "details-lables";
                lblStatus.ForeColor = System.Drawing.Color.SeaGreen;
                lblStatus.Text = row["Status"].ToString(); 
                labelDiv.Controls.Add(lblStatus);

                div.Controls.Add(labelDiv);

                //Label Name
                var lblName = new System.Web.UI.WebControls.Label();
                lblName.ID = "lblName";
                lblName.CssClass = "details-lables";
                lblName.Text = row["Property_name"].ToString(); 
                div.Controls.Add(lblName);

                //Label County
                var lblCounty = new System.Web.UI.WebControls.Label();
                lblCounty.ID = "lblCounty";
                lblCounty.CssClass = "details-lables";
                lblCounty.ForeColor = System.Drawing.Color.Silver;
                lblCounty.Text = row["County"].ToString();
                div.Controls.Add(lblCounty);

                PlaceHolder1.Controls.Add(div);
            }
        }

        private DataTable GetDataFromDatabase()
        {
            DataTable dataTable = new DataTable();

            try
            {
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Kodisha-final\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT * FROM Properties";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataAdapter adapter = new SqlDataAdapter(command))
                        {
                            adapter.Fill(dataTable);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("An error occurred: " + ex.Message);
            }

            return dataTable;
        }


        private byte[] GetImageDataFromDatabase()
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Kodisha-final\\App_Data\\MainDatabase.mdf;Integrated Security=True";
            byte[] imageData = null;

            try
            {
                using (SqlConnection connection = new SqlConnection(connectionString)) 
                {
                    connection.Open();

                    string query = "SELECT * FROM Properties";

                    using (SqlCommand command = new SqlCommand(query, connection))
                    {

                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                imageData = (byte[])reader["Images"];
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle any exceptions that occur during the database operation
                Console.WriteLine("An error occurred: " + ex.Message);
            }

            return imageData;
        }

    }
}