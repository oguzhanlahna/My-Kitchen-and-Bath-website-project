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
    public partial class services_flooring : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            services();
            footer();
            home4();

        }

        public void services() // services-flooring-cat_id=10
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from services where services_id=5";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal1.Text = dr["ser_title"].ToString();
                Literal2.Text = dr["ser_desc"].ToString();

                Image1.ImageUrl = dr["big_image_file"].ToString();


            }
            con.Close();
        }

        public void footer() // footer
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from footer where footer_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {



                HyperLink30.Text = dr["showroom1_phone"].ToString();
                HyperLink31.Text = dr["showroom1_mail"].ToString();
                HyperLink32.Text = dr["showroom1_location"].ToString();

                HyperLink33.Text = dr["showroom2_phone"].ToString();
                HyperLink34.Text = dr["showroom2_mail"].ToString();
                HyperLink35.Text = dr["showroom2_location"].ToString();



            }
            con.Close();
        }

        public void home4() // home4
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from home4 where section_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal29.Text = dr["mini_title"].ToString();
                Literal30.Text = dr["title"].ToString();
                Literal31.Text = dr["description"].ToString();

                Literal32.Text = dr["icon1_title"].ToString();
                Literal33.Text = dr["icon1_desc"].ToString();

                Literal34.Text = dr["icon2_title"].ToString();
                Literal35.Text = dr["icon2_desc"].ToString();

                Literal36.Text = dr["icon3_title"].ToString();
                Literal37.Text = dr["icon3_desc"].ToString();

                Literal38.Text = dr["icon4_title"].ToString();
                Literal39.Text = dr["icon4_desc"].ToString();

                Literal40.Text = dr["icon5_title"].ToString();
                Literal41.Text = dr["icon5_desc"].ToString();



            }
            con.Close();
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "project-single")
            {


                Response.Redirect("project-single.aspx?id=" + e.CommandArgument.ToString());

            }
        }
    }
}