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
    public partial class VisitorsLog : System.Web.UI.Page
    {
        DateTime today = DateTime.Today;
        DateTime timeIn = DateTime.Now;
        DateTime timeOut = DateTime.Now;
        string tIn, tOut;

        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleCommand cmd2, cmd;

       


        protected void Page_Load(object sender, EventArgs e)
        {
            DateLabel.Text = today.ToString("dd/MM/yyyy");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = " insert into visitors_log (today_date, visitor_job, mem_id, timein, timeout, department)";
            insert += " VALUES (";
            string tody = today.ToString("dd-MMM-yyyy");
            insert += "'" + tody + "'";
            insert += ",'" + V1JTBox.Text + "'";
            insert += ",'" + V1IdTBox.Text + "'";
            insert += ",'" + V1TITBox.Text + "'";
            insert += ",'" + V1TOTBox.Text + "'";
            insert += ",'" + DepDropDownList.SelectedValue + "'";
            insert += ")";

            OracleCommand cmd = new OracleCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Label11.Text += V1IdTBox.Text;
            V1IdTBox.Visible = false;

            Label12.Text += V1JTBox.Text ;
            V1JTBox.Visible = false;

            Label13.Text += DepDropDownList.SelectedValue ;
            DepDropDownList.Visible = false;

            Label14.Text += V1TITBox.Text;
            V1TITBox.Visible = false;

            Label15.Text += V1TOTBox.Text;
            V1TOTBox.Visible = false;

            V1Button.Visible = false;
            LinkButton2.Visible = false;
            LinkButton3.Visible = false;
            LinkButton12.Visible = false;

        }

        protected void V2Button_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = " insert into visitors_log (today_date, visitor_job, mem_id, timein, timeout, department)";
            insert += " VALUES (";
            string tody = today.ToString("dd-MMM-yyyy");
            insert += "'" + tody + "'";
            insert += ",'" + TextBox1.Text + "'";
            insert += ",'" + TextBox2.Text + "'";
            insert += ",'" + TextBox3.Text + "'";
            insert += ",'" + TextBox4.Text + "'";
            insert += ",'" + DropDownList1.SelectedValue + "'";
            insert += ")";

            OracleCommand cmd = new OracleCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Label6.Text += TextBox1.Text;
            TextBox1.Visible = false;

            Label7.Text += TextBox2.Text;
            TextBox2.Visible = false;

            Label17.Text += DropDownList1.SelectedValue;
            TextBox3.Visible = false;

            Label18.Text += TextBox3.Text;
            TextBox4.Visible = false;

            Label35.Text +=  TextBox4.Text;
            DropDownList1.Visible = false;

            Button2.Visible = false;
            LinkButton4.Visible = false;
            LinkButton5.Visible = false;
            LinkButton1.Visible = false;
        }

        protected void V3Button_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = " insert into visitors_log (today_date, visitor_job, mem_id, timein, timeout, department)";
            insert += " VALUES (";
            string tody = today.ToString("dd-MMM-yyyy");
            insert += "'" + tody + "'";
            insert += ",'" + V3IdTBox.Text + "'";
            insert += ",'" + V3JTBox.Text + "'";
            insert += ",'" + V3TITBox.Text + "'";
            insert += ",'" + V3TOTBox.Text + "'";
            insert += ",'" + DropDownList2.SelectedValue + "'";
            insert += ")";

            OracleCommand cmd = new OracleCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Label8.Text += V3IdTBox.Text;
            V3IdTBox.Visible = false;

            Label10.Text += V3JTBox.Text;
            V3JTBox.Visible = false;

            Label16.Text += DropDownList2.SelectedValue;
            DropDownList2.Visible = false;

            Label19.Text += V3TITBox.Text;
            V3TITBox.Visible = false;

            Label20.Text += V3TOTBox.Text;
            V3TOTBox.Visible = false;

            V3Button.Visible = false;
            LinkButton13.Visible = false;
            LinkButton7.Visible = false;
            LinkButton66.Visible = false;
        }
        protected void V4Button_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = " insert into visitors_log (today_date, visitor_job, mem_id, timein, timeout, department)";
            insert += " VALUES (";
            string tody = today.ToString("dd-MMM-yyyy");
            insert += "'" + tody + "'";
            insert += ",'" + V4IdTBox.Text + "'";
            insert += ",'" + V4JTBox.Text + "'";
            insert += ",'" + V4TITBox.Text + "'";
            insert += ",'" + V4TOTBox.Text + "'";
            insert += ",'" + DropDownList3.SelectedValue + "'";
            insert += ")";

            OracleCommand cmd = new OracleCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Label23.Text += V4IdTBox.Text;
            V4IdTBox.Visible = false;

            Label24.Text += V4JTBox.Text;
            V4JTBox.Visible = false;

            Label25.Text += DropDownList3.SelectedValue;
            DropDownList3.Visible = false;

            Label26.Text += V4TITBox.Text;
            V4TITBox.Visible = false;

            Label27.Text += V4TOTBox.Text;
            V4TOTBox.Visible = false;

            V4Button.Visible = false;
            LinkButton8.Visible = false;
            LinkButton9.Visible = false;

        }
        protected void V5Button_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = " insert into visitors_log (today_date, visitor_job, mem_id, timein, timeout, department)";
            insert += " VALUES (";
            string tody = today.ToString("dd-MMM-yyyy");
            insert += "'" + tody + "'";
            insert += ",'" + V5IdTBox.Text + "'";
            insert += ",'" + V5JTBox.Text + "'";
            insert += ",'" + V5TITBox.Text + "'";
            insert += ",'" + V5TOTBox.Text + "'";
            insert += ",'" + DropDownList4.SelectedValue + "'";
            insert += ")";

            OracleCommand cmd = new OracleCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();

            Label30.Text += V5IdTBox.Text;
            V5IdTBox.Visible = false;

            Label31.Text += V5JTBox.Text;
            V5JTBox.Visible = false;

            Label32.Text += DropDownList4.SelectedValue;
            DropDownList4.Visible = false;

            Label33.Text += V5TITBox.Text;
            V5TITBox.Visible = false;

            Label34.Text += V5TOTBox.Text;
            V5TOTBox.Visible = false;

            V5Button.Visible = false;
            LinkButton10.Visible = false;
            LinkButton11.Visible = false;
            DropDownList4.Visible = false; 
        }


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/VisitorsLogHistory.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            tIn = timeIn.ToString("dd-MMM-yyyy hh.mm.ss ");
            V1TITBox.Text = tIn;
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            tOut = timeOut.ToString("dd-MMM-yyyy hh.mm.ss ");
            V1TOTBox.Text = tOut;
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            tIn = timeIn.ToString("dd-MMM-yyyy hh.mm.ss ");
            TextBox3.Text = tIn;
        }
        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            tOut = timeOut.ToString("dd-MMM-yyyy hh.mm.ss ");
            TextBox4.Text = tOut;
        }
        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            tIn = timeIn.ToString("dd-MMM-yyyy hh.mm.ss ");
            V3TITBox.Text = tIn;
        }
        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            tOut = timeOut.ToString("dd-MMM-yyyy hh.mm.ss ");
            V3TOTBox.Text = tOut;
        }
        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            tIn = timeIn.ToString("dd-MMM-yyyy hh.mm.ss ");
            V4TITBox.Text = tIn;
        }
        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            tOut = timeOut.ToString("dd-MMM-yyyy hh.mm.ss ");
            V4TOTBox.Text = tOut;
        }
        protected void LinkButton10_Click(object sender, EventArgs e)
        {
            tIn = timeIn.ToString("dd-MMM-yyyy hh.mm.ss ");
            V5TITBox.Text = tIn;
        }

        protected void LinkButton12_Click(object sender, EventArgs e)
        {
            OracleDataReader dr;
            con.Open();
            cmd2 = new OracleCommand("select mem_id, mem_job, department from members where mem_id='" + V1IdTBox.Text + "'", con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            try
            {
                V1IdTBox.Text = dr[0].ToString();
                V1JTBox.Text = dr[1].ToString();
                DepDropDownList.SelectedValue = dr[2].ToString();
            }
            catch { }
        }

        protected void LinkButton122_Click(object sender, EventArgs e)
        {
            OracleDataReader dr;
            con.Open();
            cmd2 = new OracleCommand("select mem_id, mem_job, department from members where mem_id='" + TextBox1.Text + "'", con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            try
            {
                TextBox1.Text = dr[0].ToString();
                TextBox2.Text = dr[1].ToString();
                DropDownList1.SelectedValue = dr[2].ToString();
            }
            catch { }
        }

        protected void LinkButton44_Click(object sender, EventArgs e)
        {
            OracleDataReader dr;
            con.Open();
            cmd2 = new OracleCommand("select mem_id, mem_job, department from members where mem_id='" + V4IdTBox.Text + "'", con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            try
            {
                V4IdTBox.Text = dr[0].ToString();
                V4JTBox.Text = dr[1].ToString();
                DropDownList3.SelectedValue = dr[2].ToString();
            }
            catch { }
        }

        protected void LinkButton55_Click(object sender, EventArgs e)
        {
            OracleDataReader dr;
            con.Open();
            cmd2 = new OracleCommand("select mem_id, mem_job, department from members where mem_id='" + V5IdTBox.Text + "'", con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            try
            {
                V5IdTBox.Text = dr[0].ToString();
                V5JTBox.Text = dr[1].ToString();
                DropDownList4.SelectedValue = dr[2].ToString();
            }
            catch { }
        }

        protected void LinkButton67_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/VisitorsLog.aspx");
        }

        protected void LinkButton6_Click1(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/VisitorsLog1.aspx");
        }

        protected void LinkButton14_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/VisitorsLog1.aspx");
        }

        protected void LinkButton15_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/VisitorsLog1.aspx");
        }

        protected void LinkButton16_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/VisitorsLog1.aspx");
        }

        protected void LinkButton66_Click(object sender, EventArgs e)
        {
            OracleDataReader dr;
            con.Open();
            cmd2 = new OracleCommand("select mem_id, mem_job, department from members where mem_id='" + V3IdTBox.Text + "'", con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            try
            {
                V3IdTBox.Text = dr[0].ToString();
                V3JTBox.Text = dr[1].ToString();
                DropDownList2.SelectedValue = dr[2].ToString();
            }
            catch { }
        }

       

        protected void LinkButton11_Click(object sender, EventArgs e)
        {
            tOut = timeOut.ToString("dd-MMM-yyyy hh.mm.ss ");
            V5TOTBox.Text = tOut;
        }
        
    }
}