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
    public partial class Survey : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleCommand cmd, cmd2;
        OracleDataReader dr;
        string srv_ID;
        DateTime tdy = DateTime.Today;
        protected void Page_Load(object sender, EventArgs e)
        {
            tdy = DateTime.Today;
            con.Open();
            cmd = new OracleCommand("select count(survey_no) from survey where srv_date='" + tdy.ToString("dd-MMM-yyyy") + "' ", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            string tdt = tdy.ToString("yyyyMMdd");
            srv_ID = tdt + dr[0].ToString();
            con.Close();
            
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/ContactUs.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = "INSERT INTO survey ( mem_id, srv_date, books, pcs, serves, dealing, general, survey_no)";
            insert += " VALUES (";
            insert += "'" + Session["ID"].ToString()+ "'";
            insert += ", '" + tdy.ToString("dd-MMM-yyyy") + "'";
            insert += ", '" + Q1RadioButtonList.SelectedValue + "'";
            insert += ", '" + Q2RadioButtonList.SelectedValue + "'";
            insert += ", '" + Q3RadioButtonList.SelectedValue + "'";
            insert += ", '" + Q4RadioButtonList.SelectedValue + "'";
            insert += ", '" + Q5RadioButtonList.SelectedValue + "'";
            insert += ", '" + srv_ID + "'";
            insert += ")";
            cmd2 = new OracleCommand(insert, con);
            cmd2.ExecuteNonQuery();
            con.Close();
            string display = "Thank You For Taking the Survey";
            ClientScript.RegisterStartupScript(this.GetType(), "Book Added", "alert('" + display + "');", true);
        }
    }
}