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
    public partial class products_decorative_hardware : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            products();
            footer();
        }


        public void products() // products-decorative-cat_id=4
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from products where product_id=4";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal1.Text = dr["pro_title"].ToString();
                Literal2.Text = dr["pro_desc"].ToString();

                Image1.ImageUrl = dr["big_image_file"].ToString();

                Literal3.Text = dr["image1_title"].ToString();
                Literal4.Text = dr["image2_title"].ToString();
                Literal5.Text = dr["image3_title"].ToString();
               





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