using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace E_Sports_Pvt_Ltd.Pages.team
{
    public partial class manageteam : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataGrid();
            LoadDataGrid1();
        }
        private void LoadDataGrid()
        {
            try
            {
                conn.Open();
                string uname = Session["teamname"].ToString();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from team where username = '"+uname+"'";
                cmd.ExecuteNonQuery();
                conn.Close();

                DataTable dt = new DataTable();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    tname.Text= dr["name"].ToString();
                    troname.Text = dr["trophy_id"].ToString();
                    owner.Text = dr["team_owner"].ToString();
                    balace.Text = dr["max_amount"].ToString();
                }


                }
            catch (Exception ex)
            {

            }
        }
        private void LoadDataGrid1()
        {
            try
            {
                conn.Open();
                string uname = Session["teamname"].ToString();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from team where username = '" + uname + "'";
                cmd.ExecuteNonQuery();
               

                DataTable dt = new DataTable();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                foreach (DataRow dr in dt.Rows)
                {
                    string names = dr["name"].ToString();
                    SqlCommand cmd1 = conn.CreateCommand();
                    cmd1.CommandType = CommandType.Text;
                    cmd1.CommandText = "Select * from player where team_name = '" + names + "'";
                    cmd1.ExecuteNonQuery();
                   

                    DataTable dt1 = new DataTable();
                    SqlDataAdapter db1 = new SqlDataAdapter(cmd1);
                    db1.Fill(dt1);
                    GridView2.DataSource = dt1;
                    GridView2.DataBind();
                    conn.Close();

                }


            }
            catch (Exception ex)
            {

            }
        }
    }
}