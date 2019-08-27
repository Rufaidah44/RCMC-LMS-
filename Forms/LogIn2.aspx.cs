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
    public partial class LogIn2 : System.Web.UI.Page
    {
       // MasterPage.vi = MasterPage();


        protected void Page_Load(object sender, EventArgs e)
        {
           // Label1.Text = Session["mm"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            OracleDataReader dr;
            OracleCommand cmd;
            con.Open();
            cmd = new OracleCommand("select mem_id, mem_password from members where mem_id='" + IDTBox.Text + "'", con);
            dr = cmd.ExecuteReader();
            dr.Read();
            try
            {
                if (dr[0].ToString() == IDTBox.Text && dr[1].ToString() == PassTBox.Text)
                {

                    Session["ID"] = IDTBox.Text; ;
                    Session["memIDtext"] = IDTBox.Text;
                    if (IDTBox.Text == "161020001" )
                        Response.Redirect("~/Forms/LibHomePage.aspx");
                    else 
                    Response.Redirect("~/Forms/HomePage.aspx");
                }
                else
                {
                    Label4.Visible = true;
                }
            }
            catch(Exception ex)
            {
                Label4.Visible = true;
            }
        }

        protected void LinkButton22_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/ForgetPassword.aspx");
        }
    }
}