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
    public partial class admin_home2 : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DataTable dt = new DataTable();

                DataRow dr;


                dt.Columns.Add("mini_title");
                dt.Columns.Add("title");
                dt.Columns.Add("description");
                dt.Columns.Add("photo1_title");
                dt.Columns.Add("photo1_desc");
                dt.Columns.Add("photo1_line1");
                dt.Columns.Add("photo1_line2");
                dt.Columns.Add("photo1_line3");
                dt.Columns.Add("photo2_title");
                dt.Columns.Add("photo2_desc");
                dt.Columns.Add("photo2_line1");
                dt.Columns.Add("photo2_line2");
                dt.Columns.Add("photo2_line3");
                dt.Columns.Add("photo3_title");
                dt.Columns.Add("photo3_desc");
                dt.Columns.Add("photo3_line1");
                dt.Columns.Add("photo3_line2");
                dt.Columns.Add("photo3_line3");




            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from home2 where section_id=1";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = mycon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt.Rows.Add(dr);


                TextBox1.Text = ds.Tables[0].Rows[0]["mini_title"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["title"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["description"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["photo1_title"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["photo1_desc"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["photo1_line1"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["photo1_line2"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["photo1_line3"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["photo2_title"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["photo2_desc"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["photo2_line1"].ToString();
                TextBox12.Text = ds.Tables[0].Rows[0]["photo2_line2"].ToString();
                TextBox13.Text = ds.Tables[0].Rows[0]["photo2_line3"].ToString();
                TextBox14.Text = ds.Tables[0].Rows[0]["photo3_title"].ToString();
                TextBox15.Text = ds.Tables[0].Rows[0]["photo3_desc"].ToString();
                TextBox16.Text = ds.Tables[0].Rows[0]["photo3_line1"].ToString();
                TextBox17.Text = ds.Tables[0].Rows[0]["photo3_line2"].ToString();
                TextBox18.Text = ds.Tables[0].Rows[0]["photo3_line3"].ToString();



            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("update home2 set mini_title=@mini_title, title=@title, description=@description, photo1_title=@photo1_title, photo1_desc=@photo1_desc, photo1_line1=@photo1_line1, photo1_line2=@photo1_line2, photo1_line3=@photo1_line3, photo2_title=@photo2_title, photo2_desc=@photo2_desc, photo2_line1=@photo2_line1, photo2_line2=@photo2_line2, photo2_line3=@photo2_line3, photo3_title=@photo3_title, photo3_desc=@photo3_desc, photo3_line1=@photo3_line1, photo3_line2=@photo3_line2, photo3_line3=@photo3_line3 where section_id=1", con);

                komut.Parameters.AddWithValue("@mini_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@title", TextBox2.Text);
                komut.Parameters.AddWithValue("@description", TextBox3.Text);

                komut.Parameters.AddWithValue("@photo1_title", TextBox4.Text);
                komut.Parameters.AddWithValue("@photo1_desc", TextBox5.Text);
                komut.Parameters.AddWithValue("@photo1_line1", TextBox6.Text);
                komut.Parameters.AddWithValue("@photo1_line2", TextBox7.Text);
                komut.Parameters.AddWithValue("@photo1_line3", TextBox8.Text);

                komut.Parameters.AddWithValue("@photo2_title", TextBox9.Text);
                komut.Parameters.AddWithValue("@photo2_desc", TextBox10.Text);
                komut.Parameters.AddWithValue("@photo2_line1", TextBox11.Text);
                komut.Parameters.AddWithValue("@photo2_line2", TextBox12.Text);
                komut.Parameters.AddWithValue("@photo2_line3", TextBox13.Text);

                komut.Parameters.AddWithValue("@photo3_title", TextBox14.Text);
                komut.Parameters.AddWithValue("@photo3_desc", TextBox15.Text);
                komut.Parameters.AddWithValue("@photo3_line1", TextBox16.Text);
                komut.Parameters.AddWithValue("@photo3_line2", TextBox17.Text);
                komut.Parameters.AddWithValue("@photo3_line3", TextBox18.Text);



                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-home2.aspx';</script>");

            }
            catch (Exception hata)
            {
                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-home2.aspx';</script>");
            }
        }
    }
}