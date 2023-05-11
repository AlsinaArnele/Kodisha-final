using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Rentishaclone.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email = txtemail.Text;
            string password = txtpass.Text;

            DataTable dt = new DataTable();

            LoginTableAdapters.UsersTableAdapter user = new LoginTableAdapters.UsersTableAdapter();    
            dt = user.GetData(email, password);
            if (dt.Rows.Count > 0)
            {
                Response.Redirect("Index.aspx");
            }
            
            else
            {
                //Response.Write("Invalid credentials");
                lblinvalid.Text = "Authentication failed";
                lblinvalid.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
    
}