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
    public partial class auction : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            load();
            loadauction();
           
        }

       

        protected void add_btn_Click1(object sender, EventArgs e)
        {


            load();



        }
        private void load()
        {
            conn.Open();
            string uid = trophy.SelectedValue;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from player where tro_id = '" + uid + "' and status = '" + "processing" + "' ";
            cmd.ExecuteNonQuery();
            conn.Close();

            DataTable dt = new DataTable();
            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            conn.Close();
        }

        protected void RefreshGridView(object sender, EventArgs e)
        {
            loadauction();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void select_btn_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                msg.Text = "";
                int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                int p_id = Convert.ToInt32(GridView1.Rows[rowindex].Cells[0].Text);
                int tro_id = Convert.ToInt32(GridView1.Rows[rowindex].Cells[1].Text);



                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update player set status='" + "live" + "' where player_id = '" + p_id + "' and tro_id='" + tro_id + "'";
                cmd.ExecuteNonQuery();

                conn.Close();
                loadauction();
                load();
                msg.Text = "Auction Started";
                //LoadDataGrid();
            }
            catch (Exception ex)
            {
                msg.Text=ex.Message;
            }

        }

        private void loadauction()
        {
            conn.Open();
            string uid = trophy.SelectedValue;
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from player where status = '" + "live" + "' ";
            cmd.ExecuteNonQuery();
           

            DataTable dt = new DataTable();
            SqlDataAdapter db = new SqlDataAdapter(cmd);
            db.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            conn.Close();
        }

        protected void unsold_Click(object sender, EventArgs e)
        {
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update player set status='" + "unsold" + "' where  status='" + "live" + "'";
            cmd.ExecuteNonQuery();

            conn.Close();
            loadauction();
            load();
            msg.Text = "Player Unsold";

        }

        protected void sold_Click(object sender, EventArgs e)
        {
            try
            {
                msg.Text = "";
                conn.Open();


                string query = "select * from player where status = '" + "live" + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable dt1 = new DataTable();
                sda.Fill(dt1);

                foreach (DataRow dr in dt1.Rows)
                {
                    string teambalance = dr["amount"].ToString();
                    string teamid = dr["team_id"].ToString();

                    int teams = int.Parse(teamid);
                    int amount = int.Parse(teambalance);

                    string ques = "select * from team where team_id = '" + teams + "'";
                    SqlDataAdapter sdd = new SqlDataAdapter(ques, conn);
                    DataTable dt = new DataTable();
                    sdd.Fill(dt);
                    foreach (DataRow ds in dt.Rows)
                    {
                        string maxamount = ds["max_amount"].ToString();
                        int maxim = int.Parse(maxamount);

                        int total = maxim - amount;

                        SqlCommand cmd2 = conn.CreateCommand();
                        cmd2.CommandType = CommandType.Text;
                        cmd2.CommandText = "update team set max_amount ='" + total + "' where team_id = '" + teams + "'";
                        cmd2.ExecuteNonQuery();

                    }

                }


                SqlCommand cmd1 = conn.CreateCommand();
                cmd1.CommandType = CommandType.Text;
                cmd1.CommandText = "update player set  status ='" + "sold" + "' where status = '" + "live" + "'";
                cmd1.ExecuteNonQuery();
                msg.Text = "Player Sold && Select Next Player";

                conn.Close();
                loadauction();
                load();
            }

            catch (Exception ex)
            {
                msg.Text = ex.Message;
            }
        }
    }
}