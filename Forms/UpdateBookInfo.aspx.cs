using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.Odbc;
using Oracle.ManagedDataAccess.Client;

namespace RCMC.Forms
{
    public partial class UpdateBookInfo : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleDataReader dr ;
        OracleCommand cmd, cmd2 ;
        protected void Page_Load(object sender, EventArgs e)
        {
                    
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd2 = new OracleCommand(" UPDATE books set book_name='" + BNTBox.Text + "', ctg_id='" + SIDTBox.Text + "', book_auther='" + BATBox.Text + "', book_edition_num='" + BENTBox.Text + "', book_date_of_publish='" + PYTBox.Text + "', book_num_of_coppies=" + NCTBox.Text + ", borrowed='"+ DropDownList2.SelectedValue + "', book_statuse='"+ DropDownList1.SelectedValue + "',acc_no="+ ACCTBox.Text + ", unit_cost='"+ UCTBox.Text + "' where book_id='" +BIDTBox.Text+ "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            string display = "Book Updated";
            ClientScript.RegisterStartupScript(this.GetType(), "Book Updated", "alert('" + display + "');", true);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new OracleCommand("select * from books where book_id='" + BIDTBox.Text + "'", con);
            dr = cmd.ExecuteReader();
            try
            {
                dr.Read();
                BIDTBox.Text = dr[0].ToString();
                BNTBox.Text = dr[1].ToString();
                SIDTBox.Text = dr[2].ToString();
                BATBox.Text = dr[3].ToString();
                BENTBox.Text = dr[4].ToString();
                PYTBox.Text = dr[5].ToString();
                NCTBox.Text = dr[6].ToString();
                ACCTBox.Text = dr[9].ToString();
                UCTBox.Text = dr[10].ToString();
                con.Close();
                BIDTBox.Visible = false;
                Label1.Text = BIDTBox.Text;
            }
            catch
            {
                string display = "Book Not Found";
                ClientScript.RegisterStartupScript(this.GetType(), "Book Not Found", "alert('" + display + "');", true);
            }

        }
    }
}