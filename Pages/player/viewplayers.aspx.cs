using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace E_Sports_Pvt_Ltd.Pages.player
{
    public partial class viewplayers : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataGrid1();
            LoadDataGrid2();

        }
        private void LoadDataGrid1()
        {
            string playeruname = Session["playername"].ToString();
            conn.Open();
            SqlCommand cmd1 = conn.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "Select player_id from playerregister where username = '" + playeruname + "'";
            cmd1.ExecuteNonQuery();


            Int32 count = (Int32)cmd1.ExecuteScalar();
            string playerid = count.ToString();
            int p_id = int.Parse(playerid);
            conn.Close();
            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from player where player_id='"+p_id+"'";
                cmd.ExecuteNonQuery();
                conn.Close();

                DataTable dt = new DataTable();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();

            }
            catch (Exception ex)
            {

            }
        }

        private void LoadDataGrid2()
        {
            
            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from player where status ='" + "sold" + "' or status = '"+"unsold"+"'";
                cmd.ExecuteNonQuery();
                conn.Close();

                DataTable dt = new DataTable();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                GridView2.DataSource = dt;
                GridView2.DataBind();
                conn.Close();

            }
            catch (Exception ex)
            {

            }
        }
    }
}