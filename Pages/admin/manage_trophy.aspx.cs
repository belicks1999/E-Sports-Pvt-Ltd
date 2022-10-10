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
    public partial class manage_trophy : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataGrid();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void LoadDataGrid()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from trophy";
                cmd.ExecuteNonQuery();
                conn.Close();

                DataTable dt = new DataTable();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                conn.Close();

            }catch (Exception ex)
            {
                
            }
        }

        protected void submit_btn_Click(object sender, EventArgs e)
        {
            
            string trophy = tname.Text;
            string venues =vanue.Text;
            string sd = date1.Text;
            string ed=date2.Text;

            if (trophy != "" &&  venues != "" && sd != "" && ed != "" )
            {
                //Insert Data to Database
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into trophy (name,start_date,end_date,vanue)" +
                 " Values ('" + trophy + "','" + sd + "','" + ed + "','" + venues + "')";
                cmd.ExecuteNonQuery();
                conn.Close();
                msg.Text = "Trophy Added";
                LoadDataGrid();
            }
            else
            {
                // Error Message to Lable
                msg.Text = "Please fill all colums and Try again";
            }


        }

        

        protected void delete_btn_Click1(object sender, EventArgs e)
        {
            try
            {
                int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                int trophyid = Convert.ToInt32(GridView1.Rows[rowindex].Cells[0].Text);
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from trophy where trophy_id = '" + trophyid + "'";
                cmd.ExecuteNonQuery();
                conn.Close();
                msg.Text = "Trophy Deleted";
                LoadDataGrid();
            }
            catch (Exception ex)
            {
                msg.Text = ex.Message;
            }
            
        }
    }
}