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
    public partial class admin_services_outdoor_kitchen : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DataTable dt = new DataTable();

                DataRow dr;


                dt.Columns.Add("ser_title");
                dt.Columns.Add("ser_desc");
                dt.Columns.Add("ser_title2");
                dt.Columns.Add("ser_desc2");

                dt.Columns.Add("image1_line1");
                dt.Columns.Add("image1_line2");
                dt.Columns.Add("image1_line3");
                dt.Columns.Add("image1_line4");
                dt.Columns.Add("image1_line5");

                dt.Columns.Add("image2_line1");
                dt.Columns.Add("image2_line2");
                dt.Columns.Add("image2_line3");
                dt.Columns.Add("image2_line4");
                dt.Columns.Add("image2_line5");

                dt.Columns.Add("image3_line1");
                dt.Columns.Add("image3_line2");
                dt.Columns.Add("image3_line3");
                dt.Columns.Add("image3_line4");




            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from services where services_id=7";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = mycon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt.Rows.Add(dr);


                TextBox1.Text = ds.Tables[0].Rows[0]["ser_title"].ToString();
                CKEditorControl1.Text = ds.Tables[0].Rows[0]["ser_desc"].ToString();

                TextBox2.Text = ds.Tables[0].Rows[0]["image1_line1"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["image1_line2"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["image1_line3"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["image1_line4"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["image1_line5"].ToString();

                TextBox7.Text = ds.Tables[0].Rows[0]["image2_line1"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["image2_line2"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["image2_line3"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["image2_line4"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["image2_line5"].ToString();

                TextBox12.Text = ds.Tables[0].Rows[0]["image3_line1"].ToString();
                TextBox13.Text = ds.Tables[0].Rows[0]["image3_line2"].ToString();
                TextBox14.Text = ds.Tables[0].Rows[0]["image3_line3"].ToString();
                TextBox15.Text = ds.Tables[0].Rows[0]["image3_line4"].ToString();





            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE services SET ser_title = @ser_title, ser_desc = @ser_desc, " +
    "image1_line1 = @image1_line1, image1_line2 = @image1_line2, image1_line3 = @image1_line3, " +
    "image1_line4 = @image1_line4, image1_line5 = @image1_line5, image2_line1 = @image2_line1, " +
    "image2_line2 = @image2_line2, image2_line3 = @image2_line3, image2_line4 = @image2_line4, " +
    "image2_line5 = @image2_line5, image3_line1 = @image3_line1, image3_line2 = @image3_line2, " +
    "image3_line3 = @image3_line3, image3_line4 = @image3_line4 WHERE services_id = 7", con);


                komut.Parameters.AddWithValue("@ser_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@ser_desc", CKEditorControl1.Text);

                komut.Parameters.AddWithValue("@image1_line1", TextBox2.Text);
                komut.Parameters.AddWithValue("@image1_line2", TextBox3.Text);
                komut.Parameters.AddWithValue("@image1_line3", TextBox4.Text);
                komut.Parameters.AddWithValue("@image1_line4", TextBox5.Text);
                komut.Parameters.AddWithValue("@image1_line5", TextBox6.Text);

                komut.Parameters.AddWithValue("@image2_line1", TextBox7.Text);
                komut.Parameters.AddWithValue("@image2_line2", TextBox8.Text);
                komut.Parameters.AddWithValue("@image2_line3", TextBox9.Text);
                komut.Parameters.AddWithValue("@image2_line4", TextBox10.Text);
                komut.Parameters.AddWithValue("@image2_line5", TextBox11.Text);

                komut.Parameters.AddWithValue("@image3_line1", TextBox12.Text);
                komut.Parameters.AddWithValue("@image3_line2", TextBox13.Text);
                komut.Parameters.AddWithValue("@image3_line3", TextBox14.Text);
                komut.Parameters.AddWithValue("@image3_line4", TextBox15.Text);
                







                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-services-kitchen-remodeling.aspx';</script>");

            }
            catch (Exception hata)
            {

                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-services-kitchen-remodeling.aspx';</script>");
            }
        }
    }
}