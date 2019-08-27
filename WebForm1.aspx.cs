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
using System.Net.Mail;




namespace RCMC
{
    public partial class WebForm1 : System.Web.UI.Page
    {


        //string connectionstring = ConfigurationManager.ConnectionStrings["OracleDB"].ConnectionString
        //string conString = "User ID=RAB;Password=1234;" + "DATA SOURCE=LAPTOP-RFK4O8A7:1521/XE;USER ID=RAB";
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);


        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();

            //string sql1 = "select * from members";

           // sql1, con);
           // GridView1.DataSource = command.ExecuteReader();
           // GridView1.DataBind();
           // con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //con.ConnectionString = conString;
            //con.Open();
            //OracleCommand command = con.CreateCommand();
            // command.CommandType = CommandType.Text;
            //command.CommandText = "insert into library_section values{'"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"'}";
            // command.ExecuteNonQuery();
            //con.Close();
            //OracleCommand cmd = new OracleCommand("insert into library_sections()"+" values{'"++"','"+TextBox2.Text+"','"++"'}", con);
            string insert = "INSERT INTO library_sections (sec_id, sec_name, num_of_books)";
            insert += " VALUES (";
            insert += "'" + TextBox1.Text + "'";
            insert += ", '" + TextBox2.Text + "'";
            insert += ", '" + TextBox3.Text + "'";
            insert += ")";
            OracleCommand cmd = new OracleCommand(insert, con);

            cmd.ExecuteNonQuery();
            con.Close();


        }

        protected void Button4_Click(object sender, EventArgs e)
        {
           
        }
    }
}