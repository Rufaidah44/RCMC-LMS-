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
    public partial class SearchBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["Sname"] = null;
            Session["Aname"] = null;
            Session["Bname"] = BNTBox.Text;
            Response.Redirect("~/Forms/BookSearchResult.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Session["Bname"] = null;
            Session["Sname"] = null;
            Session["Aname"] = ANTBox.Text;
            Response.Redirect("~/Forms/BookSearchResult.aspx");
        }

        protected void BNTBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Session["Bname"] = null;
            Session["Aname"] = null;
            Session["Sname"] = SNDropDownList.SelectedValue;
            Response.Redirect("~/Forms/BookSearchResult.aspx");
        }
    }
}