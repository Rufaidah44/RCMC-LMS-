using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Oracle.ManagedDataAccess.Client;

namespace RCMC.Master_Pages
{
    public partial class Lbary : System.Web.UI.MasterPage
    {
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        OracleDataReader dr;
        OracleCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {

                memIdLinkButton.Visible = false;
                Label1.Visible = true;
                LinkButton2.Visible = false;
                loginLinkButton.Visible = true;
                signupLinkButton.Visible = true;
            }
            else
            {
                con.Open();
                cmd = new OracleCommand("select mem_First_name from members where mem_id='" + Session["ID"].ToString() + "'", con);
                dr = cmd.ExecuteReader();
                dr.Read();
                memIdLinkButton.Text = dr[0].ToString();
                loginLinkButton.Visible = false;
                signupLinkButton.Visible = false;
                LinkButton2.Visible = true;
                con.Close();
            }
        }

        protected void logonLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/LogIn2.aspx");
        }

        protected void signupLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/RegistrationForm.aspx");
        }

        protected void memIdLinkButton_Click(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
                Response.Redirect("~/Forms/RegistrationForm.aspx");
            else
                Response.Redirect("~/Forms/UserAccount.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["ID"] = null;
            Response.Redirect("~/Forms/LogIn2.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
                Response.Redirect("~/Forms/HomePage.aspx");
            else
            {
                if (Session["ID"].ToString() == "161020001")
                    Response.Redirect("~/Forms/LibHomePage.aspx");
                else
                    Response.Redirect("~/Forms/HomePage.aspx");

            }
            /*if (Session["ID"] != null)
            {
                try {
                    if(Session["ID'"].ToString() == "161020001")
                          Response.Redirect("~/Forms/LibHomePage.aspx");
                }
                catch { 
                         Response.Redirect("~/Forms/HomePage.aspx");
                }
                
            }
            else
                Response.Redirect("~/Forms/HomePage.aspx");
            }*/
        }
    }
}
    
