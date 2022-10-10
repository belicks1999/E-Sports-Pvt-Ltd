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
    public partial class admindashboard : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            name.Text = "Hello " + Session["adminname"].ToString();

            
        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}