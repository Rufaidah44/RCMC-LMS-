using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace RCMC.Forms
{
    public partial class forgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            string mssg = "Good Morning ... \n\n I have forgetten my assword \n please reset my password.\n This is my Job ID "+TextBox1.Text+"\nThis is my email address "+ TextBox2.Text + "\n" + today.ToString("dd-MMM-yyyy") + "\n";
            MailMessage o = new MailMessage("www-rffood-sa@hotmail.com", "rufaidah.ab@gmail.com", "Urgent: Forgetten Password ", mssg);
            NetworkCredential netCred = new NetworkCredential("www-rffood-sa@hotmail.com", "dhvfg;hgpl]44");
            SmtpClient smtpobj = new SmtpClient("smtp.live.com", 587);
            smtpobj.EnableSsl = true;
            smtpobj.Credentials = netCred;
            smtpobj.Send(o);

            string display = "Request is Sent";
            ClientScript.RegisterStartupScript(this.GetType(), "Request is Sent", "alert('" + display + "');", true);
        }
    }
}