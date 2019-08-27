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
    public partial class VisitorsLogHistory : System.Web.UI.Page
    {
        OracleDataAdapter da;
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        DataSet ds = new DataSet();
        OracleCommand cmd = new OracleCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            //TextBox1.Text = today.ToString("dd-MMM-yyyy");
        }

        public void BindData()
        {

            cmd.CommandText = "Select today_date as day, mem_id as visitor_id, visitor_job, department, timein, timeout from visitors_log where today_date='" + TextBox1.Text + "'";
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        } 

        protected void Button1_Click(object sender, EventArgs e)
        {
            BindData();
        }

    }
}