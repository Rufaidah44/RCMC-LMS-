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

    public partial class NewBook : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleCommand cmd, cmd2;

        OracleDataReader dr;
        int Acc_no;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            cmd2 = new OracleCommand("select acc_no from books ORDER BY acc_no DESC", con);
            dr = cmd2.ExecuteReader();
            dr.Read();
            string acc_no = dr[0].ToString();
            int.TryParse(acc_no, out Acc_no);
            Acc_no += 1;
            ACCTBox.Text = Acc_no.ToString();
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //@ when i add new book i update section no of books
            try
            {
                con.Open();
                string insert = "INSERT INTO Books ( book_id, book_name, ctg_id, book_auther, book_edition_num, book_date_of_publish, book_num_of_coppies, borrowed, book_statuse, acc_no, unit_cost)";
                insert += " VALUES (";
                insert += "'" + BIDTBox.Text + "'";
                insert += ", '" + BNTBox.Text + "'";
                insert += ", '" + SIDTBox.Text + "'";
                insert += ", '" + BATBox.Text + "'";
                insert += ", '" + BENTBox.Text + "'";
                insert += ", '" + PYTBox.Text + "'";
                insert += ", " + NCTBox.Text;
                insert += ", '" + DropDownList2.SelectedValue + "'";
                insert += ", '" + DropDownList1.SelectedValue + "'";
                insert += ", " + ACCTBox.Text;
                insert += ", " + UCTBox.Text;
                insert += ")";

                cmd = new OracleCommand(insert, con);
                cmd.ExecuteNonQuery();
                con.Close();
                Label3.Visible = true;

                string display = "Book Added";
                ClientScript.RegisterStartupScript(this.GetType(), "Book Added", "alert('" + display + "');", true);
            }
            catch {
                string display = "This Book Alresdy Exist";
                ClientScript.RegisterStartupScript(this.GetType(), "Book Added", "alert('" + display + "');", true);
            }

            // ابحث عن الترقرز عشان يسوي ابديت للنمبر بوك


        }
    }
}