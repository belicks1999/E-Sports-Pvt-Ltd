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
    public partial class manage_team : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataGrid();
        }

        protected void add_btn_Click(object sender, EventArgs e)
        {
            string trophy = trophy_name.Text;
            string tname = team_name.Text;
            string towner = owner.Text;
            string uname = username.Text;
            string pass = password.Text;
            string amount = max_amount.Text;

            if (trophy != "" && tname != "" && towner != "" && uname != "" && pass != "" && amount != "")
            {
                string query = "select * from team where username = '" + uname + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable dt1 = new DataTable();
                sda.Fill(dt1);
                if (dt1.Rows.Count == 0)
                {
                    int maxx = int.Parse(amount);
                    int tid = int.Parse(trophy);
                    //Insert Data to Database
                    conn.Open();
                    SqlCommand cmd = conn.CreateCommand();
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "Insert into team (trophy_id,team_owner,name,username,password,max_amount)" +
                     " Values ('" + tid + "','" + towner + "','" + tname + "','" + uname + "','" + pass + "','" + maxx + "')";
                    cmd.ExecuteNonQuery();
                    conn.Close();
                    LoadDataGrid();
                    msg.Text = "Team Added";
                    //Response.Redirect(Request.RawUrl);
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

        private void LoadDataGrid()
        {
            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from team";
                cmd.ExecuteNonQuery();
                conn.Close();

                DataTable dt = new DataTable();
                SqlDataAdapter db = new SqlDataAdapter(cmd);
                db.Fill(dt);
                teamview.DataSource = dt;
                teamview.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {

            }
        }

        protected void delete_btn_Click(object sender, EventArgs e)
        {
            try
            {
                int rowindex = ((GridViewRow)(sender as Control).NamingContainer).RowIndex;
                int trophyid = Convert.ToInt32(teamview.Rows[rowindex].Cells[0].Text);
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "delete from team where team_id = '" + trophyid + "'";
                cmd.ExecuteNonQuery();
                conn.Close();
                msg.Text = "Team Deleted";
                LoadDataGrid();
            }
            catch (Exception ex)
            {
                msg.Text = ex.Message;
            }
        }
    }
}