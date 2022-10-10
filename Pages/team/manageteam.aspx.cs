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
    }
}