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
    public partial class products_tiles : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            products();
            footer();
        }

        public void products() // products-tiles-cat_id=3
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from products where product_id=3";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal1.Text = dr["pro_title"].ToString();
                Literal2.Text = dr["pro_desc"].ToString();

                Image1.ImageUrl = dr["big_image_file"].ToString();
                Image4.ImageUrl = dr["image1_file"].ToString();
                Image5.ImageUrl = dr["image2_file"].ToString();
                Image6.ImageUrl = dr["image3_file"].ToString();
                Image7.ImageUrl = dr["image4_file"].ToString();
;



                Literal23.Text = dr["image1_title"].ToString();
                Literal24.Text = dr["image1_desc"].ToString();

                Literal25.Text = dr["image2_title"].ToString();
                Literal26.Text = dr["image2_desc"].ToString();

                Literal11.Text = dr["image3_title"].ToString();
                Literal12.Text = dr["image3_desc"].ToString();

                Literal13.Text = dr["image4_title"].ToString();
                Literal14.Text = dr["image4_desc"].ToString();








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