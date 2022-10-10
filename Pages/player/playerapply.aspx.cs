using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace E_Sports_Pvt_Ltd.Pages.player
{
    public partial class playerapply : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=LAPTOP-4LF71QVV;Initial Catalog=esports;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void add_btn_Click(object sender, EventArgs e)
        {
            string trophy = trophy_name.Text;
            string names = player_name.Text;
            string mobiles = mobile.Text;
            string clubs = club.Text;
            string roles = role.Text;
            string dobs=dob.Text;
            string add=address.Text;
            string playeruname = Session["playername"].ToString();
            string status = "pending";
            //string base = "100";
            //get id from db
            conn.Open();
            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "Select player_id from playerregister where username = '" + playeruname + "'";
            cmd.ExecuteNonQuery();


            Int32 count = (Int32)cmd.ExecuteScalar();
            string playerid = count.ToString();
            conn.Close();


            //image upload
            string file = Path.GetFileName(img.FileName);
            img.SaveAs(Server.MapPath("./img/")+file);

            //string photo = img.FileName;





            if (names != "" && mobiles != "" && trophy != "" && clubs != "" && roles != ""&& dobs != "" && add != "" && file != "")
            {
                int tro_id = int.Parse(trophy);
                int p_id = int.Parse(playerid);
                
                string query = "select * from player where tro_id = '" + tro_id + "' and player_id = '" + playerid + "'";

                SqlDataAdapter sda = new SqlDataAdapter(query, conn);
                DataTable dt1 = new DataTable();
                sda.Fill(dt1);
                if (dt1.Rows.Count == 0)
                {

                    //Insert Data to Database
                    try
                    {


                        conn.Open();
                        SqlCommand cmd1 = conn.CreateCommand();
                        cmd1.CommandType = CommandType.Text;
                        cmd1.CommandText = "Insert into player (player_id,tro_id,name,img,mobile,club,role,dob,address,status,base_price)" +
                         " Values ('" + p_id + "','" + tro_id + "','" + names + "','" + img.FileName + "','" + mobiles + "','" + clubs + "','" + roles + "','" + dobs + "','" + add + "','" + status + "','" + 100 + "')";
                        cmd1.ExecuteNonQuery();
                        conn.Close();

                        msg.Text = "Registration Succesfull for Auction";
                        //Response.Redirect(Request.RawUrl);
                        //Response.Redirect("playerlogin.aspx");
                    }
                    catch (Exception ex)
                    {
                        msg.Text = ex.Message;
                    }
                }
                else
                {
                    msg.Text = "Already enrolled for aunction";
                }
            }
            else
            {
                // Error Message to Lable
                msg.Text = "Please fill all colums and Try again";
            }
        }
    }
}