using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using Oracle.ManagedDataAccess.Client;
using System.Net.Mail;
using System.Net;


namespace RCMC.Forms
{
    public partial class EmailTrigger : System.Web.UI.Page
    {
        OracleDataReader dr;
        OracleDataAdapter da;
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        DataSet ds = new DataSet();
        OracleCommand cmd = new OracleCommand();
        DateTime today = DateTime.Today;

        public void BindData()
        {

            cmd.CommandText = "Select * from borrowing where return_date <= '"+ today.ToString("dd-MMM-yyyy")+"' and status='NOT RETURNED' ORDER BY return_date DESC";
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            int i = 0;
            string emails = "";
            con.Open();
            cmd = new OracleCommand("Select members.mem_email from members FULL OUTER JOIN borrowing ON members.mem_id = borrowing.mem_id where borrowing.return_date <= '" + today.ToString("dd-MMM-yyyy") + "' and borrowing.status='NOT RETURNED' ORDER BY borrowing.return_date DESC", con);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                emails += dr[0].ToString() + ",";
                i++;
            }
            TextBox1.Text = emails;
            Session["Emails"] = emails;
            con.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
         {
            con.Open();
            cmd = new OracleCommand("Select books.book_name from books FULL OUTER JOIN borrowing ON books.book_id = borrowing.book_id where borrowing.return_date <= '" + today.ToString("dd-MMM-yyyy") + "' and borrowing.status='NOT RETURNED' ORDER BY borrowing.return_date DESC", con);
            dr = cmd.ExecuteReader();
            string bname="" ;
            while (dr.Read())
            { bname = dr[0].ToString(); }
            string s = bname;
            string mssg = "Good Morning ... \n\n This is RCMC Medical Library. \n We would like to worn you that you have met the deadline of returning ("+ bname + ") , Please visit us today to return it.\n Be aware, if you are late more than this date ather action will be taken. \n RCMC Librarian "+ today.ToString("dd-MMM-yyyy") +"\n";
            MailMessage o = new MailMessage("www-rffood-sa@hotmail.com", "rufaidah.ab@gmail.com", "Urgent: Late Returning ", mssg);
            NetworkCredential netCred = new NetworkCredential("www-rffood-sa@hotmail.com", "dhvfg;hgpl]44");
            SmtpClient smtpobj = new SmtpClient("smtp.live.com", 587);
            smtpobj.EnableSsl = true;
            smtpobj.Credentials = netCred;
            smtpobj.Send(o);
        }
    }
}