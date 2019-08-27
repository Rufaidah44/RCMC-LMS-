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
    public partial class ViewMessages : System.Web.UI.Page
    {
        OracleDataAdapter da;
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        DataSet ds = new DataSet();
        OracleCommand cmd = new OracleCommand();
        public void BindData()
        {

            cmd.CommandText = "Select * from contacts ORDER BY mssg_date DESC" ;
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        public void BindData2()
        {

            cmd.CommandText = "Select * from contacts where mssg_date='"+ Calendar1.SelectedDate.ToString("dd-MMM-yyyy") + "' ORDER BY mssg_date DESC";
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds ;
            GridView1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            BindData2();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            BindData();

        }
    }
}