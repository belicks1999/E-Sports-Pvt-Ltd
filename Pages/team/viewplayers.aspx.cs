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
    public partial class viewplayers : System.Web.UI.Page
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
                // Get Username and Password from Database
                string query = "select trophy_id from team where username = '" + uname + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable dt1 = new DataTable();
                sda.Fill(dt1);

                foreach (DataRow dr in dt1.Rows)
                {
                    string uid = dr["trophy_id"].ToString();


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
            }
            catch (Exception ex)
            {

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}