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
    public partial class ViewMembers : System.Web.UI.Page
    {
        OracleDataAdapter da;
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        DataSet ds = new DataSet();
        OracleCommand cmd = new OracleCommand();
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }
        public void BindData()
        {

            cmd.CommandText = "Select * from Members";
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
    }
}