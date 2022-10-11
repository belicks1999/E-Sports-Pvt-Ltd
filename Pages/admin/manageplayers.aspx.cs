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
    public partial class manageplayers : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataGrid();
        }
        private void LoadDataGrid()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from player where status='" + "pending" + "'";
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
                msg.Text = ex.Message;
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void select_btn_Click(object sender, EventArgs e)
        {
            try {
                int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                
                string name = GridView1.Rows[rowindex].Cells[4].Text;
                string club = GridView1.Rows[rowindex].Cells[6].Text;
                string role = GridView1.Rows[rowindex].Cells[7].Text;
                string playerid = GridView1.Rows[rowindex].Cells[0].Text;
                string trophy = GridView1.Rows[rowindex].Cells[2].Text;




                trophys.Text = trophy;
                player.Text = playerid;
                roles.Text = role;
                clubs.Text = club;
                piname.Text=name;
                LoadDataGrid();
                conn.Close();
                
            }

             catch(Exception ex)
            {
                msg.Text = ex.Message;
            }
        }

        protected void reject_btn_Click(object sender, EventArgs e)
        {
            try
            {
                msg.Text = "";
                int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                int p_id = Convert.ToInt32(GridView1.Rows[rowindex].Cells[0].Text);
                
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update player set status='"+ "rejected" + "' where p_id = '" + p_id + "'";
                cmd.ExecuteNonQuery();
                conn.Close();
                msg.Text = "Player rejected";
                LoadDataGrid();
            }
            catch (Exception ex)
            {
                msg.Text = ex.Message;
            }

        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            try
            {
                string baseamount = baseprice.Text;
                string playerid = player.Text;
                string troid = trophys.Text;

               
               

                if (baseamount != "" && playerid !="" && troid!="")
                {
                    int baseamount1 = int.Parse(baseamount);
                    int trophy1 = int.Parse(troid);
                    int pid = int.Parse(playerid);
                    conn.Open();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "update player set base_price='" + baseamount1 + "' , status ='" + "processing" + "' where p_id = '" + pid + "' and tro_id = '" + trophy1 + "'";
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    msg.Text = "Player Accepted";
                    LoadDataGrid();
                }
                else
                {
                    msg.Text = "Please Select and Set Base Price";
                }

            }
            catch(Exception ex)
            {
                msg.Text=ex.Message;
            }
        }
    }
}