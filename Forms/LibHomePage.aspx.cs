using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using ClosedXML.Excel;
using System.Configuration;
using System.Data;
using Oracle.ManagedDataAccess.Client;



namespace RCMC.Forms
{
    public partial class LibHomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["ID"] == null)
                BSMenu.Visible = false;
            else
            {
                if (Session["ID"].ToString() == "161020001")
                {
                    BSMenu.Visible = true;
                    BFImageButton.Visible = true;
                    VLImageButton.Visible = true;
                    msgImageButton.Visible = true;
                    LinkButton3.Visible = true;
                }
            }
        }



        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Forms/ListOfBooks.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Forms/RegistrationForm.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Forms/ContactUs.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Forms/BorrowingForm.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Forms/VisitorsLog.aspx");
        }

        protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Forms/ViewMessages.aspx");
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
                                Response.AddHeader("content-disposition", "attachment;filename=LMSsurvey.xlsx");
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

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            OracleConnection noc;
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (noc = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM members"))
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
                                Response.AddHeader("content-disposition", "attachment;filename=LMSmembers1.xlsx");
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

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            OracleConnection noc;
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (noc = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM Books"))
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
                                Response.AddHeader("content-disposition", "attachment;filename=LMSbooks1.xlsx");
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

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            OracleConnection noc;
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (noc = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM borrowing"))
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
                                Response.AddHeader("content-disposition", "attachment;filename=LMSborrowing1.xlsx");
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

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            OracleConnection noc;
            //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
            using (noc = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
            {
                using (OracleCommand cmd = new OracleCommand("SELECT * FROM categories"))
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
                                Response.AddHeader("content-disposition", "attachment;filename=LMScategories1.xlsx");
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

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            {
                OracleConnection noc;
                //string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
                using (noc = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString))
                {
                    using (OracleCommand cmd = new OracleCommand("SELECT * FROM visitors_log"))
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
                                    Response.AddHeader("content-disposition", "attachment;filename=LMSvisitorslogs1.xlsx");
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
}

   