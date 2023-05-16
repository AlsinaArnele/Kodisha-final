using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Rentishaclone.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string username = txtusername.Text;
            string password = txtpass.Text;

            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\Arnele\\source\\repos\\Rentishaclone\\App_Data\\MainDatabase.mdf;Integrated Security=True";
            string query = "SELECT * FROM Users WHERE Username=@Value1 AND Password=@Value2";
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                con.Open();
                SqlCommand sqlcmd = new SqlCommand(query, con);
                sqlcmd.Parameters.AddWithValue("@Value1", username);
                sqlcmd.Parameters.AddWithValue("@Value2", password);
                DataTable dtbl = new DataTable();
                SqlDataAdapter sqlsda = new SqlDataAdapter(sqlcmd);
                sqlsda.Fill(dtbl);
                con.Close();
                if (dtbl.Rows.Count == 1)
                {
                    Response.Redirect("Index.aspx");
                }
                else
                {
                    Response.Write("Invalid Credentials!!");
                }
            }

        }


    }
    
}