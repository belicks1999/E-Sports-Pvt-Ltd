using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace E_Sports_Pvt_Ltd.Pages.admin
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void login_btn_Click(object sender, EventArgs e)
        {
            error.Text = "";
            string uname = username.Text;
            string pass = password.Text;
            // Validation

            if (uname == "")
            {
                error.Text = "Please Enter Username";
            }

            if (pass == "")
            {
                error.Text = "Please Enter Password";
            }
            if (uname != "" && pass != "")
            {
                conn.Open();
                // Get Username and Password from Database
                string query = "select * from admin where username = '" + uname + "' and password = '" + pass + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable dt1 = new DataTable();
                sda.Fill(dt1);
                
                if (dt1.Rows.Count == 1)
                {
                    // connect new form
                    Session["adminname"] = username.Text;
                    Response.Redirect("admindashboard.aspx");


                }
                else
                {
                    //Error Message
                    error.Text = "Invalid User";
                }
                conn.Close();

            }
        }
    }
}