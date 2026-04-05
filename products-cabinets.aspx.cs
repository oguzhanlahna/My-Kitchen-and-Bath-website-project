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
    public partial class products_cabinets : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            products();
            footer();
            //banner();
        }

        //public void banner()
        //{
        //    SqlConnection con = new SqlConnection(connString);
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.CommandText = "select * from banners where banner_id=1";
        //    cmd.Connection = con;
        //    cmd.CommandType = CommandType.Text;
        //    SqlDataReader dr;
        //    dr = cmd.ExecuteReader();
        //    if (dr.Read())
        //    {
        //        string bannerText = dr["banner_text"].ToString(); // Veritabanından banner metnini al

        //        // Div içerisindeki metni ayarla
        //        divPageTitleRowInner.InnerHtml = bannerText;
        //    }
        //    con.Close();
        //}


        public void products() // products-cabinets-cat_id=1
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from products where product_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal1.Text = dr["pro_title"].ToString();
                Literal2.Text = dr["pro_desc"].ToString();

                Literal3.Text = dr["image1_title"].ToString();
                Literal4.Text = dr["image1_sub_title"].ToString();
                Literal5.Text = dr["image1_line1"].ToString();
                Literal6.Text = dr["image1_line2"].ToString();
                Literal7.Text = dr["image1_line3"].ToString();
                Literal8.Text = dr["image1_line4"].ToString();
                Literal9.Text = dr["image1_line5"].ToString();

                Image1.ImageUrl = dr["big_image_file"].ToString();
                Image2.ImageUrl = dr["image1_file"].ToString();
                Image3.ImageUrl = dr["image2_file"].ToString();
                Image4.ImageUrl = dr["image3_file"].ToString();
                Image5.ImageUrl = dr["image4_file"].ToString();
                Image6.ImageUrl = dr["image5_file"].ToString();
                Image7.ImageUrl = dr["image6_file"].ToString();
                Image8.ImageUrl = dr["image7_file"].ToString();

                Literal10.Text = dr["image2_title"].ToString();
                Literal11.Text = dr["image2_sub_title"].ToString();
                Literal12.Text = dr["image2_line1"].ToString();
                Literal13.Text = dr["image2_line2"].ToString();
                Literal14.Text = dr["image2_line3"].ToString();
                Literal15.Text = dr["image2_line4"].ToString();
                Literal16.Text = dr["image2_line5"].ToString();

                Literal23.Text = dr["image3_title"].ToString();
                Literal24.Text = dr["image3_desc"].ToString();
                Literal25.Text = dr["image4_title"].ToString();
                Literal26.Text = dr["image4_desc"].ToString();

                Literal27.Text = dr["image5_title"].ToString();
                Literal28.Text = dr["image5_desc"].ToString();
                Literal29.Text = dr["image6_title"].ToString();
                Literal30.Text = dr["image6_desc"].ToString();


                Literal31.Text = dr["image7_title"].ToString();
                Literal32.Text = dr["image7_desc"].ToString();





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

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "project-single")
            {


                Response.Redirect("project-single.aspx?id=" + e.CommandArgument.ToString());

            }
        }

    }
}