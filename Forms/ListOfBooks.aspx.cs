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
    public partial class ListOfBooks : System.Web.UI.Page
    {
            OracleDataAdapter da;
            OracleConnection con = new OracleConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            DataSet ds = new DataSet();
           
           OracleCommand cmd, cmd2, cmd3, cmd4, cmd5, cmd6, cmd7, cmd8, cmd9 ;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Tab1.CssClass = "Clicked";
                MainView.ActiveViewIndex = 0;
            }

            BindData();
            BindData2();
            BindData3();
            BindData4();
            BindData5();
            BindData6();
            BindData7();
            BindData8();
            BindData9();
        }

        protected void Tab1_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Clicked";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Initial";

            MainView.ActiveViewIndex = 0;
        }

        protected void Tab2_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Clicked";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Initial";
            MainView.ActiveViewIndex = 1;
        }

        protected void Tab3_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Clicked";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Initial";
            MainView.ActiveViewIndex = 2;
        }
        protected void Tab4_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Clicked";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Initial";
            MainView.ActiveViewIndex = 3;
        }
        protected void Tab5_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Clicked";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Initial";
            MainView.ActiveViewIndex = 4;
        }
        protected void Tab6_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Clicked";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Initial";
            MainView.ActiveViewIndex = 5;
        }
        protected void Tab7_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Clicked";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Initial";
            MainView.ActiveViewIndex = 6;
        }
        protected void Tab8_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Clicked";
            Tab9.CssClass = "Initial";
            MainView.ActiveViewIndex = 7;
        }
        protected void Tab9_Click(object sender, EventArgs e)
        {
            Tab1.CssClass = "Initial";
            Tab2.CssClass = "Initial";
            Tab3.CssClass = "Initial";
            Tab4.CssClass = "Initial";
            Tab5.CssClass = "Initial";
            Tab6.CssClass = "Initial";
            Tab7.CssClass = "Initial";
            Tab8.CssClass = "Initial";
            Tab9.CssClass = "Clicked";
            MainView.ActiveViewIndex = 8;
        }
        public void BindData()
        {
            cmd = new OracleCommand();
            cmd.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='610'";
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

        public void BindData2()
        {
            DataSet ds2 = new DataSet();
            cmd2 = new OracleCommand();
            cmd2.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='611'";
            cmd2.Connection = con;
            da = new OracleDataAdapter(cmd2);
            da.Fill(ds2);
            con.Open();
            cmd2.ExecuteNonQuery();
            GridView2.DataSource = ds2;
            GridView2.DataBind();
            con.Close();
        }
        public void BindData3()
        {
            DataSet ds3 = new DataSet();
            cmd3 = new OracleCommand();
            cmd3.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='612'";
            cmd3.Connection = con;
            da = new OracleDataAdapter(cmd3);
            da.Fill(ds3);
            con.Open();
            cmd3.ExecuteNonQuery();
            GridView3.DataSource = ds3;
            GridView3.DataBind();
            con.Close();
        }
        public void BindData4()
        {
            DataSet ds4 = new DataSet();
            cmd4 = new OracleCommand();
            cmd4.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='613'";
            cmd4.Connection = con;
            da = new OracleDataAdapter(cmd4);
            da.Fill(ds4);
            con.Open();
            cmd4.ExecuteNonQuery();
            GridView4.DataSource = ds4;
            GridView4.DataBind();
            con.Close();
        }
        public void BindData5()
        {
            DataSet ds5 = new DataSet();
            cmd5 = new OracleCommand();
            cmd5.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='614'";
            cmd5.Connection = con;
            da = new OracleDataAdapter(cmd5);
            da.Fill(ds5);
            con.Open();
            cmd5.ExecuteNonQuery();
            GridView5.DataSource = ds5;
            GridView5.DataBind();
            con.Close();
        }
        public void BindData6()
        {
            DataSet ds6 = new DataSet();
            cmd6 = new OracleCommand();
            cmd6.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='615'";
            cmd6.Connection = con;
            da = new OracleDataAdapter(cmd6);
            da.Fill(ds6);
            con.Open();
            cmd6.ExecuteNonQuery();
            GridView6.DataSource = ds6;
            GridView6.DataBind();
            con.Close();
        }
        public void BindData7()
        {
            DataSet ds7 = new DataSet();
            cmd7 = new OracleCommand();
            cmd7.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='616'";
            cmd7.Connection = con;
            da = new OracleDataAdapter(cmd7);
            da.Fill(ds7);
            con.Open();
            cmd7.ExecuteNonQuery();
            GridView7.DataSource = ds7;
            GridView7.DataBind();
            con.Close();
        }
        public void BindData8()
        {
            DataSet ds8 = new DataSet();
            cmd8 = new OracleCommand();
            cmd8.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='617'";
            cmd8.Connection = con;
            da = new OracleDataAdapter(cmd8);
            da.Fill(ds8);
            con.Open();
            cmd8.ExecuteNonQuery();
            GridView8.DataSource = ds8;
            GridView8.DataBind();
            con.Close();
        }
        public void BindData9()
        {
            DataSet ds9 = new DataSet();
            cmd9 = new OracleCommand();
            cmd9.CommandText = "Select book_name as book_name, book_auther as auther, book_edition_num as edition_number, book_date_of_publish as coppyRight, borrowed as borrowed, book_statuse as status from books where ctg_id='618'";
            cmd9.Connection = con;
            da = new OracleDataAdapter(cmd9);
            da.Fill(ds9);
            con.Open();
            cmd9.ExecuteNonQuery();
            GridView9.DataSource = ds9;
            GridView9.DataBind();
            con.Close();
        }

    }


}