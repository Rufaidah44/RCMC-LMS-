using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;


namespace RCMC.Forms
{
    public partial class RegistrationForm : System.Web.UI.Page
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            string insert = "INSERT INTO members (mem_id, mem_first_name, mem_mid_name, mem_last_name, mem_position, mem_email, mem_phone_num, mem_bdate, mem_date_of_join, mem_job, mem_password, mem_repassword, mem_status, Department)";
            insert += " VALUES (";
            insert += "'" + EmpTBox.Text + "'";
            insert += ", '" + FNTBox.Text + "'";
            insert += ", '" + MNTBox.Text + "'";
            insert += ", '" + LNTBox.Text + "'";
            insert += ", 'MEMBER'";
            insert += ", '" + EmTBox.Text + "'";
            insert += ", '" + PNTBox.Text + "'";
            insert += ", '" + dayDropDownList.SelectedValue + "-" + monthDropDownList.SelectedValue + "-" + yearDropDownList.SelectedValue + "'";
            DateTime today = DateTime.Today;
            string x = today.ToString("dd-MMM-yyyy");
            insert += ", '" + x + "'" ;
            insert += ", '" + jobDropDownList.SelectedValue + "'";
            insert += ", '" + PassTBox.Text + "'";
            insert += ", '" + Pass2TBox.Text + "'";
            insert += ", 'ACTIVE'";
            insert += ", '" + DepDropDownList.SelectedValue + "'"; 
            insert += ")";


            OracleCommand cmd = new OracleCommand(insert, con);

            if (PassTBox.Text == Pass2TBox.Text)
            {
                try
                {
                    cmd.ExecuteNonQuery();
                    con.Close();
                    Label3.Visible = true;
                    string display = "Registred Successfully";
                    ClientScript.RegisterStartupScript(this.GetType(), "Registred Successfully", "alert('" + display + "');", true);
                    Session["ID"] = EmpTBox.Text;
                    Response.Redirect("~/Forms/UserAccount.aspx");
                }
                catch
                {
                    string display = " This ID already Exist";
                    ClientScript.RegisterStartupScript(this.GetType(), "Registred Successfully", "alert('" + display + "');", true);
                }

            }
            else
                NotMatchLabel.Visible = true;
            
        }
    }
}