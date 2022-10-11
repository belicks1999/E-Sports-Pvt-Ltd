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
    public partial class viewplayer : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataGrid2();
        }
        private void LoadDataGrid2()
        {

            try
            {
                conn.Open();
                SqlCommand cmd = conn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Select * from player where status ='" + "sold" + "' or status = '" + "unsold" + "'";
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