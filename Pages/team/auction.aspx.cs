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
    public partial class auction : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void load()
        {
            conn.Open();
            
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from player where status = '" + "live" + "' ";
            cmd.ExecuteNonQuery();
            conn.Close();

            DataTable dt = new DataTable();
            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                msgg.Text = "";
                conn.Open();
                string uname = Session["teamname"].ToString();
                // Get Username and Password from Database
                string query = "select * from team where username = '" + uname + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable dt1 = new DataTable();
                sda.Fill(dt1);

                foreach (DataRow dr in dt1.Rows)
                {
                    string teambalance = dr["max_amount"].ToString();
                    string teamid = dr["team_id"].ToString();
                    string teamname = dr["name"].ToString();
                    string amount = bid.Text;
                    int bidamount = int.Parse(amount);

                    int purse = int.Parse(teambalance);

                    if(purse > bidamount )
                    {
                        SqlCommand cmd = conn.CreateCommand();
                        cmd.CommandType = CommandType.Text;
                        cmd.CommandText = "update player set amount ='" + bidamount + "',team_id='" + teamid + "',team_name='" + teamname + "' where status = '" + "live" + "'";
                        cmd.ExecuteNonQuery();
                        conn.Close();

                        DataTable dt = new DataTable();
                        SqlDataAdapter db = new SqlDataAdapter(cmd);
                        db.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        conn.Close();
                        msgg.Text = "Bid Succesfull";
                        load();
                    }
                    else
                    {
                        msgg.Text = "Your Team Dont have Enough Balance to Bid";
                    }
                    
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}