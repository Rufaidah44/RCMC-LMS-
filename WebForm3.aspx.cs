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
using System.Net;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Xml;
using ClosedXML.Excel;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace RCMC
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           /* OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            con.Open();
            string insert = "INSERT INTO mdate (bdate, mdate)";
            insert += " VALUES (";
            insert += "'" + DropDownList1.SelectedValue + "-" + DropDownList2.SelectedValue + "-" + DropDownList3.SelectedValue + "'";
            insert += ", '" + TextBox2.Text + "'";
            insert += ")";

            OracleCommand cmd = new OracleCommand(insert, con);

            cmd.ExecuteNonQuery();
            con.Close();*/
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            MailMessage o = new MailMessage("www-rffood-sa@hotmail.com", "rufaidah.ab@gmail.com", "Hi ", "I'm There..");
            NetworkCredential netCred = new NetworkCredential("www-rffood-sa@hotmail.com", "dhvfg;hgpl]44");
            SmtpClient smtpobj = new SmtpClient("smtp.live.com", 587);
            smtpobj.EnableSsl = true;
            smtpobj.Credentials = netCred;
            smtpobj.Send(o);
        }

        protected void ExportExcel(object sender, EventArgs e)
        {
            OracleConnection noc;
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (noc = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM survey"))
                {
                    using (OracleDataAdapter da = new OracleDataAdapter())
                    {
                        cmd.Connection = noc;
                        da.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            da.Fill(dt);
                            using (XLWorkbook wb = new XLWorkbook())
                            {
                                wb.Worksheets.Add(dt, "members");

                                Response.Clear();
                                Response.Buffer = true;
                                Response.Charset = "";
                                Response.ContentType = "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet";
                                Response.AddHeader("content-disposition", "attachment;filename=survey.xlsx");
                                using (MemoryStream MyMemoryStream = new MemoryStream())
                                {
                                    wb.SaveAs(MyMemoryStream);
                                    MyMemoryStream.WriteTo(Response.OutputStream);
                                    Response.Flush();
                                    Response.End();
                                }
                            }
                        }
                    }
                }
            }
        }
        
    }
}