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

namespace RCMC
{
    public partial class Regestration_Form : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = "INSERT INTO members (mem_id, mem_first_name, mem_mid_name, mem_last_name, mem_position, mem_email, mem_phone_num, mem_bdate, mem_date_of_join, mem_gender, mem_job, mem_address, mem_address2, mem_password, mem_repassword, mem_status)";
            insert += " VALUES (";
            insert += "'" + TextBox1.Text + "'";
            insert += ", '" + TextBox4.Text + "'";
            insert += ", '" + TextBox5.Text + "'";
            insert += ", '" + TextBox6.Text + "'";
            insert += ", 'MEMBER'";
            insert += ", '" + TextBox7.Text + "'";
            insert += ", '" + TextBox8.Text + "'";
            DateTime today = DateTime.Today;
            insert += "," + "1998/01/01";
            //insert += ", '" + DropDownList2.SelectedValue + '/' + DropDownList1.SelectedValue + '/' + DropDownList3.Text + " 00:00:00 AM'";
            insert += "," + "1998/01/01";
            if (RadioButton1.Checked)
                insert += ", '" + RadioButton1.Text + "'";
            else if (RadioButton1.Checked)
                insert += ", '" + RadioButton2.Text + "'";
            insert += ", '" + DropDownList4.SelectedIndex + "'";
            insert += ", '" + TextBox9.Text + "'";
            insert += ", '" + TextBox10.Text + "'";
            insert += ", '" + TextBox11.Text + "'";
            insert += ", '" + TextBox2.Text + "'";
            insert += ", '" + TextBox3.Text + "'";
            insert += ", 'ACTIVE'";
            insert += ")";

            OracleCommand cmd = new OracleCommand(insert, con);

            cmd.ExecuteNonQuery();
            con.Close();

        }

        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}