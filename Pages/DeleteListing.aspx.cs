using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.SessionState;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rentishaclone.Pages
{
    public partial class DeleteListing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Property"];
            if (cookie.Value == "Property")
            {
                string id = cookie.Value;
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                string queryString = "SELECT * FROM Properties WHERE Id = @id";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);
                    adapter.SelectCommand.Parameters.AddWithValue("@id", id);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                }
            }
            else if (cookie.Value == "User")
            {

                string id = cookie.Value;
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                string queryString = "SELECT * FROM Users WHERE Id = @id";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(queryString, connection);
                    adapter.SelectCommand.Parameters.AddWithValue("@id", id);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    GridView1.DataSource = table;
                    GridView1.DataBind();
                }

            }
            else { 
                Response.Redirect("Listings.aspx");
            }
            
        }


        protected void deletebtn_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["Property"];
            if (cookie != null)
            {
                string id = cookie.Value;
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                string queryString = "DELETE FROM Properties WHERE Id = @id";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(queryString, connection);
                    command.Parameters.AddWithValue("@id", id);
                    connection.Open();
                    command.ExecuteNonQuery();
                    Response.Redirect("Listings.aspx");

                }
            }
            else
            {
                Response.Redirect("Listings.aspx");
            }
        }
    }
}