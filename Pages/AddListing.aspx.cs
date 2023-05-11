using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rentishaclone.Pages
{
    public partial class AddListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            string name = txtpname.Text;
            string county = txtpname.Text;
            string town = txttown.Text;
            int price = Convert.ToInt32(txtprice.Text);
            string status = ddlStatus.SelectedValue;
            string description = txtdescription.Text;
            string amenities = txtamenities.Text;


            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
            string query = "INSERT INTO properties (Property_name,County, Town, Price, Status, Description, Amenities ) VALUES (@value1, @value2, @value3, @value4, @value5, @value6, @value7)";

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    command.Parameters.AddWithValue("@value1", name);
                    command.Parameters.AddWithValue("@value2", county);
                    command.Parameters.AddWithValue("@value3", town);
                    command.Parameters.AddWithValue("@value4", price);
                    command.Parameters.AddWithValue("@value5", status);
                    command.Parameters.AddWithValue("@value6", description);
                    command.Parameters.AddWithValue("@value7", amenities);

                    command.ExecuteNonQuery();

                    Response.Redirect("List.aspx");
                }
            }
        }
    }
}