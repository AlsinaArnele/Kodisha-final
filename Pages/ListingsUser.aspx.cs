using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace Rentishaclone.Pages
{
    public partial class ListingsUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Retrieve data from the database table
                DataTable table = GetDataFromDatabase();

                // Loop through each item in the DataTable
                foreach (DataRow row in table.Rows)
                {

                    string bedIcon = "<i class='fas fa-Bed'></i>";
                    string showerIcon = "<i class='fas fa-shower'></i>";
                    //New Div
                    var div = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                    div.Attributes["class"] = "pop-details";

                    //Image
                    var imgProperty = new System.Web.UI.WebControls.Image();
                    imgProperty.ID = "imgProperty";
                    imgProperty.CssClass = "pop-image";
                    byte[] imageData = null;
                    imageData = (byte[])row["Images"];
                    string base64Image = Convert.ToBase64String(imageData);
                    imgProperty.ImageUrl = "data:image/jpeg;base64," + base64Image;
                    div.Controls.Add(imgProperty);

                    //Inner Div
                    var labelDiv = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                    labelDiv.Attributes["style"] = "display:grid;grid-template-columns:1fr 1fr;width:20vw;align-items:center;height:5vh;";

                    //Label price
                    var lblPrice = new System.Web.UI.WebControls.Label();
                    lblPrice.ID = "lblPrice";
                    lblPrice.CssClass = "price";
                    lblPrice.Text = row["Price"].ToString();
                    labelDiv.Controls.Add(lblPrice);

                    //Label Status
                    var lblStatus = new System.Web.UI.WebControls.Label();
                    lblStatus.ID = "lblStatus";
                    lblStatus.CssClass = "status";
                    lblStatus.Text = row["Status"].ToString();
                    labelDiv.Controls.Add(lblStatus);

                    div.Controls.Add(labelDiv);

                    //Label County
                    var lblCounty = new System.Web.UI.WebControls.Label();
                    lblCounty.ID = "lblCounty";
                    lblCounty.CssClass = "location";
                    lblCounty.Text = row["County"].ToString();
                    div.Controls.Add(lblCounty);

                    var labelDiv2 = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                    labelDiv2.Attributes["style"] = "display:grid;grid-template-columns:1fr 1fr;width:20vw;height:5vh;";

                    //Label Name
                    var lblbed = new System.Web.UI.WebControls.Label();
                    lblbed.ID = "lblName";
                    lblbed.CssClass = "name";
                    lblbed.Text = bedIcon + "Bedrooms:" +  row["Bedrooms"].ToString();
                    labelDiv2.Controls.Add(lblbed);

                    //Label Name
                    var lblbath = new System.Web.UI.WebControls.Label();
                    lblbath.ID = "lblName";
                    lblbath.CssClass = "rname";
                    lblbath.Text = showerIcon + "Bathrooms:" + row["Bathrooms"].ToString();
                    labelDiv2.Controls.Add(lblbath);

                    div.Controls.Add(labelDiv2);

                    PlaceHolder1.Controls.Add(div);
                }
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

    }
}