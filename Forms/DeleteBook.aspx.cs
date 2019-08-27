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
    public partial class DeleteBook : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleCommand cmd ;
        OracleDataReader dr;

        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Visible = false;
            Button2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new OracleCommand("select book_name from books where book_id='" + UCTBox.Text + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            Label2.Text += dr[0].ToString() + "'' ??";
            con.Close();
            Button2.Visible = true;
            Label2.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            cmd = new OracleCommand("delete from books where book_id='" + UCTBox.Text +"'", con);
            cmd.ExecuteNonQuery();
            string display = "Book Deleted";
            ClientScript.RegisterStartupScript(this.GetType(), "Book Deleted", "alert('" + display + "');", true);

        }
    }
}