using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Data.Odbc;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

namespace RCMC.Forms
{
    public partial class EditInformation : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleDataReader dr;
        OracleCommand cmd, cmd2;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            cmd = new OracleCommand("select * from members where mem_id='" + Session["ID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            Label1.Text = dr[0].ToString();
            FNTBox.Text = dr[1].ToString();
            MNTBox3.Text = dr[2].ToString(); 
            LNTBox4.Text = dr[3].ToString();
            EmailTBox.Text = dr[5].ToString();
            PNTBox.Text = dr[6].ToString();
            JobTBox.Text = dr[9].ToString();
            con.Close();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd2 = new OracleCommand("UPDATE members set mem_First_name='" + FNTBox.Text + "', mem_mid_name='" + MNTBox3.Text+ "', mem_last_name='" + LNTBox4.Text + "', mem_email='" + EmailTBox.Text + "', mem_phone_num='" + PNTBox.Text+ "', mem_job='" + JobTBox.Text + "' where mem_id='" + Session["ID"].ToString() + "'", con);
            cmd2.ExecuteNonQuery();
            con.Close();
            string display = "Information Edited";
            ClientScript.RegisterStartupScript(this.GetType(), "Information Edited", "alert('" + display + "');", true);
        }
    }
}