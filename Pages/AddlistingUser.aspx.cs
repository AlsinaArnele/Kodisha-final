using System;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace Rentishaclone
{
    public partial class AddlistingUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void editbtn_Click(object sender, EventArgs e)
        {
            string name = txtpname.Text;
            string county = txtcounty.Text;
            string town = txttown.Text;
            int price = Convert.ToInt32(txtprice.Text);
            string status = ddlstatus.Text;
            string description = txtdescription.Text;
            string amenities = txtamenities.Text;
            byte[] buffer = new byte[fu.FileContent.Length];
            Stream s = fu.FileContent;
            s.Read(buffer, 0, buffer.Length);


            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Kodisha-final\\App_Data\\MainDatabase.mdf;Integrated Security=True";
            string query = "INSERT INTO Properties (Property_name,County, Town, Price, Status, Description, Amenities, Images ) VALUES (@value1, @value2, @value3, @value4, @value5, @value6, @value7, @value8)";

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
                    command.Parameters.AddWithValue("@value8", buffer);

                    command.ExecuteNonQuery();
                }
            }
        }
    }
}