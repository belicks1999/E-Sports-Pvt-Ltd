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
    public partial class adminregister : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void reg_btn_Click(object sender, EventArgs e)
        {
            string names = name1.Text;
            string mobiles = mobile.Text;
            string uname = username.Text;
            string pass = password.Text;


            if (names != "" && mobiles != "" && uname != "" && pass != "")
            {
                string query = "select * from admin where username = '" + uname + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable dt1 = new DataTable();
                sda.Fill(dt1);
                if (dt1.Rows.Count == 0)
                {

                    //Insert Data to Database
                    conn.Open();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Insert into admin (name,mobile,username,password)" +
                     " Values ('" + names + "','" + mobiles + "','" + uname + "','" + pass + "')";
                    cmd.ExecuteNonQuery();
                    conn.Close();

                    msg.Text = "Registration Succesfull";
                    
                }
                else
                {
                    msg.Text = "Username Already exist Please try different username";
                }
            }
            else
            {
                // Error Message to Lable
                msg.Text = "Please fill all colums and Try again";
            }

        }
    }
}