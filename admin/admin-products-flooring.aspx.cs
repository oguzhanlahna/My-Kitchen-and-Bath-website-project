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
    public partial class admin_products_flooring : System.Web.UI.Page
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
                dt.Columns.Add("image1_desc");
                dt.Columns.Add("image2_title");
                dt.Columns.Add("image2_desc");
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
                String myquery = "select * from products where product_id=5";
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
                CKEditorControl2.Text = ds.Tables[0].Rows[0]["image1_desc"].ToString();

                TextBox3.Text = ds.Tables[0].Rows[0]["image2_title"].ToString();
                CKEditorControl2.Text = ds.Tables[0].Rows[0]["image2_desc"].ToString();

                TextBox4.Text = ds.Tables[0].Rows[0]["image3_title"].ToString();
                CKEditorControl4.Text = ds.Tables[0].Rows[0]["image3_desc"].ToString();

                TextBox5.Text = ds.Tables[0].Rows[0]["image4_title"].ToString();
                CKEditorControl5.Text = ds.Tables[0].Rows[0]["image4_desc"].ToString();

                TextBox6.Text = ds.Tables[0].Rows[0]["image5_title"].ToString();
                CKEditorControl6.Text = ds.Tables[0].Rows[0]["image5_desc"].ToString();

                TextBox7.Text = ds.Tables[0].Rows[0]["image6_title"].ToString();
                CKEditorControl7.Text = ds.Tables[0].Rows[0]["image6_desc"].ToString();

                TextBox8.Text = ds.Tables[0].Rows[0]["image7_title"].ToString();
                CKEditorControl8.Text = ds.Tables[0].Rows[0]["image7_desc"].ToString();









            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE products SET pro_title = @pro_title, pro_desc = @pro_desc, " +
                    "image1_title = @image1_title, image1_desc = @image1_desc, " +
                    "image2_title = @image2_title, image2_desc = @image2_desc, " +
                    "image3_title = @image3_title, image3_desc = @image3_desc, " +
                    "image4_title = @image4_title, image4_desc = @image4_desc, " +
                    "image5_title = @image5_title, image5_desc = @image5_desc, " +
                    "image6_title = @image6_title, image6_desc = @image6_desc, " +
                    "image7_title = @image7_title, image7_desc = @image7_desc " +
                    "WHERE product_id = 5", con);


                komut.Parameters.AddWithValue("@pro_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@pro_desc", CKEditorControl1.Text);

                komut.Parameters.AddWithValue("@image1_title", TextBox2.Text);
                komut.Parameters.AddWithValue("@image1_desc", CKEditorControl2.Text);

                komut.Parameters.AddWithValue("@image2_title", TextBox3.Text);
                komut.Parameters.AddWithValue("@image2_desc", CKEditorControl3.Text);

                komut.Parameters.AddWithValue("@image3_title", TextBox4.Text);
                komut.Parameters.AddWithValue("@image3_desc", CKEditorControl4.Text);

                komut.Parameters.AddWithValue("@image4_title", TextBox5.Text);
                komut.Parameters.AddWithValue("@image4_desc", CKEditorControl5.Text);

                komut.Parameters.AddWithValue("@image5_title", TextBox6.Text);
                komut.Parameters.AddWithValue("@image5_desc", CKEditorControl6.Text);

                komut.Parameters.AddWithValue("@image6_title", TextBox7.Text);
                komut.Parameters.AddWithValue("@image6_desc", CKEditorControl7.Text);

                komut.Parameters.AddWithValue("@image7_title", TextBox8.Text);
                komut.Parameters.AddWithValue("@image7_desc", CKEditorControl8.Text);








                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-products-flooring.aspx';</script>");

            }
            catch (Exception hata)
            {
                //Label1.Text = hata.Message;
                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-products-flooring.aspx';</script>");
            }
        }
    }
}