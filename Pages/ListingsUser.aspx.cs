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
                string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
                string queryString = "SELECT * FROM Properties";

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    SqlCommand command = new SqlCommand(queryString, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    try
                    {
                        while (reader.Read())
                        {
                            // Create a new card container for each item
                          lblcounty.Text = reader["County"].ToString();
                            lblstatus.Text = reader["Status"].ToString();
                            lblname.Text = reader["Property_name"].ToString();
                            lblprice.Text = reader["Price"].ToString();
                        }
                    }
                    finally
                    {
                        reader.Close();
                    }
                }
            }
        }



    }
}