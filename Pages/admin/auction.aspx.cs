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
    }
}