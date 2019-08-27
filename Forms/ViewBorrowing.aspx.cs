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
    public partial class ViewBorrowing : System.Web.UI.Page
    {
        OracleDataAdapter da; 
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        DataSet ds = new DataSet();
        OracleCommand cmd2, cmd3;


        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }

        public void BindData()
        {
           cmd2 = new OracleCommand();
            
            cmd2.CommandText = "Select * from borrowing order by brw_date DESC";
            cmd2.Connection = con;
            da = new OracleDataAdapter(cmd2);
            da.Fill(ds);
            con.Open();
            cmd2.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd3 = new OracleCommand(" UPDATE borrowing set status='RETURNED' where brw_id='" + TextBox1.Text + "'", con);
            cmd3.ExecuteNonQuery();
            con.Close();
        }

    }

 }
