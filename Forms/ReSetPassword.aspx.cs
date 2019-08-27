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
    public partial class ReSetPassword : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleDataReader dr;
        OracleCommand cmd, cmd2;
        string oldpass;


        protected void Page_Load(object sender, EventArgs e)
        {
            Label6.Visible = false;
            con.Open();
            cmd = new OracleCommand("select mem_password from members where mem_id='" + Session["ID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            oldpass = dr[0].ToString();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            if ( OPassTtBox.Text == oldpass)
            {
                if (NPassTBox.Text == ReNPassTBox.Text)
                {
                    con.Open();
                    cmd2 = new OracleCommand("UPDATE members set mem_password='" + NPassTBox.Text + "', mem_repassword='" + ReNPassTBox.Text + "' where mem_id='" + Session["ID"].ToString() + "'", con);
                    cmd2.ExecuteNonQuery();
                    con.Close();
                    Label4.Visible = true;
                }
                else
                    Label5.Visible = true;
            }
            else
            { Label4.Text = "Wrong Old Password";
              Label4.Visible = true;
            }

        }
    }
}