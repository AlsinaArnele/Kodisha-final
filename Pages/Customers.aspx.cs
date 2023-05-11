using System;
using System.Data.SqlClient;
using System.Data;
using System.Web.SessionState;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rentishaclone.Pages
{
    public partial class Customers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string connectionString = " Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();

                    string query = "SELECT * FROM Users";
                    using (SqlCommand command = new SqlCommand(query, connection))
                    {
                        using (SqlDataReader reader = command.ExecuteReader())
                        {
                            DataTable dataTable = new DataTable();
                            dataTable.Load(reader);

                            customergrid.DataSource = dataTable;
                            customergrid.DataBind();
                        }
                    }
                }
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            string connectionString = " Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT * FROM Users";
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        string userId = Convert.ToString(reader.GetInt32(0));
                        HttpCookie cookie = new HttpCookie("User", userId);
                        Response.Cookies.Add(cookie);
                        Response.Redirect("DeleteListing.aspx");
                    }
                    reader.Close();

                }
            }

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            string connectionString = " Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                string query = "SELECT * FROM Users";
                using (SqlCommand command = new SqlCommand(query, connection))
                {

                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read())
                    {
                        string userId = Convert.ToString(reader.GetInt32(0));
                        HttpCookie cookie = new HttpCookie("User", userId);
                        Response.Cookies.Add(cookie);
                        Response.Redirect("EditListing.aspx");
                    }
                    reader.Close();

                }
            }

        }
    }
}