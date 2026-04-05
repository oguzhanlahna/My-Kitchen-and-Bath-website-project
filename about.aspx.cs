using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace mykb_modern
{
    public partial class about : System.Web.UI.Page
    {

        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            aboutus();
        }

        public void aboutus() // aboutus
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from aboutus where about_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal1.Text = dr["about_mini_title"].ToString();
                Literal2.Text = dr["about_title"].ToString();
                Literal3.Text = dr["about_desc"].ToString();
                Literal4.Text = dr["about_line1"].ToString();
                Literal5.Text = dr["about_line2"].ToString();
                Literal6.Text = dr["about_line3"].ToString();
                Literal7.Text = dr["about_line4"].ToString();
                Literal8.Text = dr["about_quote"].ToString();
                Literal9.Text = dr["about_quote2"].ToString();
                //Literal10.Text = dr["counter1"].ToString();
                Literal11.Text = dr["counter1_title"].ToString();
                //Literal12.Text = dr["counter2"].ToString();
                Literal13.Text = dr["counter2_title"].ToString();
                //Literal14.Text = dr["counter3"].ToString();
                Literal15.Text = dr["counter3_title"].ToString();
                //Literal16.Text = dr["counter4"].ToString();
                Literal17.Text = dr["counter4_title"].ToString();
                Literal18.Text = dr["photo1_title"].ToString();
                Literal19.Text = dr["photo1_desc"].ToString();

                Literal20.Text = dr["faq_mini_title"].ToString();
                Literal21.Text = dr["faq_title"].ToString();
                Literal22.Text = dr["faq_desc"].ToString();


            }
            con.Close();
        }

    }
}