using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RCMC.Master_Pages
{
    public partial class Library2 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] == null)
            {

                memIdLinkButton1.Visible = false;
                welcomeLabel11.Text += " Guest ";
            }
            }

        protected void loginLinkButton_Click(object sender, EventArgs e)
        {

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

        protected void logonLinkButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/LogIn2.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Session["ID"] = null ;
            Response.Redirect("~/Forms/LogIn2.aspx");
        }
    }
}