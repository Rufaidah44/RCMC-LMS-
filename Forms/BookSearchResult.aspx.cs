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
    public partial class BookSearchResult : System.Web.UI.Page
    {
        OracleDataAdapter da;
        OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        DataSet ds = new DataSet();
        OracleCommand cmd = new OracleCommand();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Bname"] != null)
            {
                SRTBox.Text = Session["Bname"].ToString();
                BindData();
            }
            else if (Session["Aname"] != null)
            {
                SRTBox.Text = Session["Aname"].ToString();
                BindData2();
            }
            else if (Session["Sname"] != null)
            {
                SRTBox.Text = Session["Sname"].ToString();
                BindData3();
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        public void BindData()
        {

            cmd.CommandText = "Select book_name , book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed , book_statuse as status from books where book_name like'%"+ Session["Bname"].ToString() +"%'";
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }
        public void BindData2()
        {

            cmd.CommandText = "Select book_name , book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed , book_statuse as status from books where book_auther like'%" + Session["Aname"].ToString() + "%'";
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }
        public void BindData3()
        {
            
            cmd.CommandText = "Select books.book_name , books.book_auther as auther, books.book_edition_num as edition_number, books.book_date_of_publish as coppyRight, books.borrowed , books.book_statuse as status from books where ctg_id ='" + Session["Sname"].ToString() + "' ";
            cmd.Connection = con;
            da = new OracleDataAdapter(cmd);
            da.Fill(ds);
            con.Open();
            cmd.ExecuteNonQuery();
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}