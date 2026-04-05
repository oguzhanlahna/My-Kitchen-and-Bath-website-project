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

namespace mykb_modern.admin
{
    public partial class admin_products_cabinets : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DataTable dt = new DataTable();

                DataRow dr;


                dt.Columns.Add("pro_title");
                dt.Columns.Add("pro_desc");

                dt.Columns.Add("image1_title");
                dt.Columns.Add("image1_sub_title");
                dt.Columns.Add("image1_line1");
                dt.Columns.Add("image1_line2");
                dt.Columns.Add("image1_line3");
                dt.Columns.Add("image1_line4");
                dt.Columns.Add("image1_line5");

                dt.Columns.Add("image2_title");
                dt.Columns.Add("image2_sub_title");
                dt.Columns.Add("image2_line1");
                dt.Columns.Add("image2_line2");
                dt.Columns.Add("image2_line3");
                dt.Columns.Add("image2_line4");
                dt.Columns.Add("image2_line5");

                dt.Columns.Add("image3_title");
                dt.Columns.Add("image3_desc");
                dt.Columns.Add("image4_title");
                dt.Columns.Add("image4_desc");
                dt.Columns.Add("image5_title");
                dt.Columns.Add("image5_desc");
                dt.Columns.Add("image6_title");
                dt.Columns.Add("image6_desc");
                dt.Columns.Add("image7_title");
                dt.Columns.Add("image7_desc");




            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from products where product_id=1";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = mycon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt.Rows.Add(dr);


                TextBox1.Text = ds.Tables[0].Rows[0]["pro_title"].ToString();
                CKEditorControl1.Text = ds.Tables[0].Rows[0]["pro_desc"].ToString();

                TextBox2.Text = ds.Tables[0].Rows[0]["image1_title"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["image1_sub_title"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["image1_line1"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["image1_line2"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["image1_line3"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["image1_line4"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["image1_line5"].ToString();

                TextBox9.Text = ds.Tables[0].Rows[0]["image2_title"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["image2_sub_title"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["image2_line1"].ToString();
                TextBox12.Text = ds.Tables[0].Rows[0]["image2_line2"].ToString();
                TextBox13.Text = ds.Tables[0].Rows[0]["image2_line3"].ToString();
                TextBox14.Text = ds.Tables[0].Rows[0]["image2_line4"].ToString();
                TextBox15.Text = ds.Tables[0].Rows[0]["image2_line5"].ToString();

                TextBox16.Text = ds.Tables[0].Rows[0]["image3_title"].ToString();
                CKEditorControl2.Text = ds.Tables[0].Rows[0]["image3_desc"].ToString();

                TextBox17.Text = ds.Tables[0].Rows[0]["image4_title"].ToString();
                CKEditorControl3.Text = ds.Tables[0].Rows[0]["image4_desc"].ToString();

                TextBox18.Text = ds.Tables[0].Rows[0]["image5_title"].ToString();
                CKEditorControl4.Text = ds.Tables[0].Rows[0]["image5_desc"].ToString();

                TextBox19.Text = ds.Tables[0].Rows[0]["image6_title"].ToString();
                CKEditorControl5.Text = ds.Tables[0].Rows[0]["image6_desc"].ToString();

                TextBox20.Text = ds.Tables[0].Rows[0]["image7_title"].ToString();
                CKEditorControl6.Text = ds.Tables[0].Rows[0]["image7_desc"].ToString();







            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE products SET pro_title = @pro_title, pro_desc = @pro_desc, " +
                    "image1_title = @image1_title, image1_sub_title = @image1_sub_title, image1_line1 = @image1_line1, " +
                    "image1_line2 = @image1_line2, image1_line3 = @image1_line3, image1_line4 = @image1_line4, " +
                    "image1_line5 = @image1_line5, image2_title = @image2_title, image2_sub_title = @image2_sub_title, " +
                    "image2_line1 = @image2_line1, image2_line2 = @image2_line2, image2_line3 = @image2_line3, " +
                    "image2_line4 = @image2_line4, image2_line5 = @image2_line5, image3_title = @image3_title, " +
                    "image3_desc = @image3_desc, image4_title = @image4_title, image4_desc = @image4_desc, " +
                    "image5_title = @image5_title, image5_desc = @image5_desc, image6_title = @image6_title, " +
                    "image6_desc = @image6_desc, image7_title = @image7_title, image7_desc = @image7_desc " +
                    "WHERE product_id = 1", con);


                komut.Parameters.AddWithValue("@pro_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@pro_desc", CKEditorControl1.Text);

                komut.Parameters.AddWithValue("@image1_title", TextBox2.Text);
                komut.Parameters.AddWithValue("@image1_sub_title", TextBox3.Text);
                komut.Parameters.AddWithValue("@image1_line1", TextBox4.Text);
                komut.Parameters.AddWithValue("@image1_line2", TextBox5.Text);
                komut.Parameters.AddWithValue("@image1_line3", TextBox6.Text);
                komut.Parameters.AddWithValue("@image1_line4", TextBox7.Text);
                komut.Parameters.AddWithValue("@image1_line5", TextBox8.Text);

                komut.Parameters.AddWithValue("@image2_title", TextBox9.Text);
                komut.Parameters.AddWithValue("@image2_sub_title", TextBox10.Text);
                komut.Parameters.AddWithValue("@image2_line1", TextBox11.Text);
                komut.Parameters.AddWithValue("@image2_line2", TextBox12.Text);
                komut.Parameters.AddWithValue("@image2_line3", TextBox13.Text);
                komut.Parameters.AddWithValue("@image2_line4", TextBox14.Text);
                komut.Parameters.AddWithValue("@image2_line5", TextBox15.Text);

                komut.Parameters.AddWithValue("@image3_title", TextBox16.Text);
                komut.Parameters.AddWithValue("@image3_desc", CKEditorControl2.Text);

                komut.Parameters.AddWithValue("@image4_title", TextBox17.Text);
                komut.Parameters.AddWithValue("@image4_desc", CKEditorControl3.Text);

                komut.Parameters.AddWithValue("@image5_title", TextBox18.Text);
                komut.Parameters.AddWithValue("@image5_desc", CKEditorControl4.Text);

                komut.Parameters.AddWithValue("@image6_title", TextBox19.Text);
                komut.Parameters.AddWithValue("@image6_desc", CKEditorControl5.Text);

                komut.Parameters.AddWithValue("@image7_title", TextBox20.Text);
                komut.Parameters.AddWithValue("@image7_desc", CKEditorControl6.Text);






                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-products-cabinets.aspx';</script>");

            }
            catch (Exception hata)
            {

                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-products-cabinets.aspx';</script>");
            }
        }
    }
}