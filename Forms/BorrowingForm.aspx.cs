using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Oracle.ManagedDataAccess.Client;

namespace RCMC.Forms
{
    public partial class BorrowingForm : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleCommand cmd, cmd2, cmd3, cmd4;

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/ViewBorrowing.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/SendEmail.aspx");
        }

        OracleDataReader dr, dr2;
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime tdy = DateTime.Today;
            con.Open();
            cmd = new OracleCommand("select count(brw_id) from borrowing where brw_date='" + tdy.ToString("dd-MMM-yyyy") + "' ", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            
            
            string tdt = tdy.ToString("yyyyMMdd");
            string IDr = tdt + dr[0].ToString();
            con.Close();
            RIDLabel.Text = IDr;
        }

        protected void AddButton_Click(object sender, EventArgs e)
        {

            con.Open();
            
            string insert = "INSERT INTO borrowing (brw_id, mem_id, book_id, brw_date, return_date, status)";
            insert += " VALUES (";
            insert += "'" + RIDLabel.Text + "'";
            insert += ", '" + MIDTBox.Text + "'";
            insert += ", '" + BIDTBox.Text + "'";
            string dt = Calendar1.SelectedDate.ToString("dd-MMM-yyyy");
            insert += ", '" + dt + "'";
            string dt2 = Calendar2.SelectedDate.ToString("dd-MMM-yyyy");
            insert += ", '" + dt2 + "'";
            insert += ", '" + StDropDownList.SelectedValue + "'";
            insert += ")";
            cmd4 = new OracleCommand("select book_statuse from books where book_id='"+ BIDTBox.Text + "'", con);
            dr2 = cmd4.ExecuteReader();
           dr2.Read();
            if (dr2[0].ToString() == "AVAILABLE")
            {
                cmd2 = new OracleCommand(insert, con);
                cmd2.ExecuteNonQuery();
            }
            else
            {
                string display = "BOOK NOT AVAILABLE";
                ClientScript.RegisterStartupScript(this.GetType(), "BOOK NOT AVAILABLE", "alert('" + display + "');", true);
            }

            cmd3 = new OracleCommand("update books set book_statuse = 'NOT AVAILABLE' where book_id ='"+ BIDTBox.Text +"' ", con);
            cmd3.ExecuteNonQuery();
            con.Close();


            }
    }
}