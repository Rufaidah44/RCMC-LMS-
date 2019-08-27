using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;

namespace RCMC.Forms
{
    public partial class NewCoppyOfBook : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleCommand cmd ;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new OracleCommand("UPDATE books set book_num_of_coppies ='"+ CNTBox.Text + "' where book_id ='"+ BIDTBox.Text +"'", con);
            cmd.ExecuteNonQuery();
            con.Close();
            string display = "Book Updated";
            ClientScript.RegisterStartupScript(this.GetType(), "Section Added", "alert('" + display + "');", true);
        }
    }
}