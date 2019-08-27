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
    public partial class ContactUs : System.Web.UI.Page
    {
        OracleDataReader dr;
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleCommand cmd , cmd2 ,cmd3 = new OracleCommand();
        string IDr;
        DateTime tdy = DateTime.Today;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
            {
                con.Open();
                cmd = new OracleCommand("select mem_email from members where mem_id='" + Session["ID"].ToString() + "'", con);
                dr = cmd.ExecuteReader();
                dr.Read();
                EmailTBox.Text = dr[0].ToString();
                con.Close();
            }

            
            con.Open();
            cmd2 = new OracleCommand("select count(con_no) from contacts where mssg_date='" + tdy.ToString("dd-MMM-yyyy") + "' ", con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            string tdt = tdy.ToString("yyyyMMdd");
            IDr = tdt + dr[0].ToString();
            con.Close();


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            con.Open();
            string insert = "INSERT INTO contacts (con_no, email, message, mssg_date)";
            insert += " VALUES (";
            insert += "'" + IDr + "'";
            insert += ", '" + EmailTBox.Text + "'";
            insert += ", '" + MssgTBox.Text + "'";
            insert += ", '" + tdy.ToString("dd-MMM-yyyy") + "'";
            insert += ")";
            cmd3 = new OracleCommand(insert, con);
            cmd3.ExecuteNonQuery();
            con.Close();
            string display = "Message Sent";
            ClientScript.RegisterStartupScript(this.GetType(), "Message Sent", "alert('" + display + "');", true);
        }
    }
}