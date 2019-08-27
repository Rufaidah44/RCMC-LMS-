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
    
    public partial class NewSection : System.Web.UI.Page
    {    OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
         OracleCommand cmd ;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = "INSERT INTO categories ( ctg_id, ctg_name, num_of_books )";
            insert += " VALUES (";
            insert += "'" + SIDTBox.Text + "'";
            insert += ", '" + SNTBox.Text + "'";
            insert += ", '" + BNTBox.Text + "'";
            insert += ")";

            cmd = new OracleCommand(insert, con);
            cmd.ExecuteNonQuery();
            con.Close();
            string display = "Section Added";
            ClientScript.RegisterStartupScript(this.GetType(), "Section Added", "alert('" + display + "');", true);

        }
    }
}