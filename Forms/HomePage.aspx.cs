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
    public partial class HomePage2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["ID"] != null)
                if (Session["ID"].ToString() == "1610221")
                    LinkButton1.Visible = true;         
            
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


        protected void Button1_Click1(object sender, EventArgs e)
        {
            Session["Bname"] = TextBox1.Text;
            Response.Redirect("~/Forms/BookSearchResult.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Forms/ViewMembers.aspx");
        }
    }
}