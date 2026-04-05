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
    public partial class admin_products_fixtures : System.Web.UI.Page
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
                dt.Columns.Add("image2_title");
                dt.Columns.Add("image3_title");
                dt.Columns.Add("image4_title");
                dt.Columns.Add("image5_title");
                dt.Columns.Add("image6_title");






            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from products where product_id=6";
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
                TextBox3.Text = ds.Tables[0].Rows[0]["image2_title"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["image3_title"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["image4_title"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["image5_title"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["image6_title"].ToString();









            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE products SET pro_title = @pro_title, pro_desc = @pro_desc, image1_title = @image1_title, image2_title = @image2_title, image3_title = @image3_title, image4_title = @image4_title, image5_title = @image5_title, image6_title = @image6_title WHERE product_id = 6", con);



                komut.Parameters.AddWithValue("@pro_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@pro_desc", CKEditorControl1.Text);

                komut.Parameters.AddWithValue("@image1_title", TextBox2.Text);
                komut.Parameters.AddWithValue("@image2_title", TextBox3.Text);
                komut.Parameters.AddWithValue("@image3_title", TextBox4.Text);
                komut.Parameters.AddWithValue("@image4_title", TextBox5.Text);
                komut.Parameters.AddWithValue("@image5_title", TextBox6.Text);
                komut.Parameters.AddWithValue("@image6_title", TextBox7.Text);








                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-products-fixtures.aspx';</script>");
            }
            catch (Exception hata)
            {

                //Label1.Text = hata.Message;
                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-products-fixtures.aspx';</script>");
            }
        }
    }
}