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
using System.Globalization;

namespace RCMC.Forms
{
    public partial class UserAccount1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            OracleDataReader dr, dr2, dr3;
            OracleCommand cmd , cmd2, cmd3;
            con.Open();
            cmd = new OracleCommand("select * from members where mem_id='" + Session["ID"].ToString() + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();

            int i = 0;
            cmd2 = new OracleCommand("select today_date from visitors_Log where mem_id='"+ Session["ID"].ToString()+"' ORDER BY today_date DESC ", con);
            dr2 = cmd2.ExecuteReader();
            dr2.Read();
            
                //i++;
            
            
            
            cmd3 = new OracleCommand("select count(brw_id) from borrowing where mem_id='" + Session["ID"].ToString() + "' ", con);
            dr3 = cmd3.ExecuteReader();
            dr3.Read();

            LabelID.Text = dr[1].ToString() + " " + dr[2].ToString() + " " + dr[3].ToString();
            LabelDate.Text = dr[8].ToString();
            LabelSts.Text = dr[12].ToString();
            LabelJob.Text = dr[9].ToString();
            LabelPN.Text = dr[6].ToString();
            LabelEml.Text = dr[5].ToString();


            try { LabelLV.Text = dr2[0].ToString(); }
            catch { LabelLV.Text = "Non"; }
            LabelNBB.Text = dr3[0].ToString();

        }

        protected void LVisitButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/MemberVisitingLog.aspx");
        }

        protected void BookButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/MemberBorrowedBooks.aspx");
        }

        protected void ResPassButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/ResetPassword.aspx");
        }

        protected void InfoButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/EditInformation.aspx");
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Forms/Survey.aspx");
        }
    }
}