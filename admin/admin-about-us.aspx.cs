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
    public partial class admin_about_us : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DataTable dt = new DataTable();

                DataRow dr;


                dt.Columns.Add("about_mini_title");
                dt.Columns.Add("about_title");
                dt.Columns.Add("about_desc");

                dt.Columns.Add("about_line1");
                dt.Columns.Add("about_line2");
                dt.Columns.Add("about_line3");
                dt.Columns.Add("about_line4");


                dt.Columns.Add("faq_mini_title");
                dt.Columns.Add("faq_title");
                dt.Columns.Add("faq_desc");




            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from aboutus where about_id=1";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = mycon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt.Rows.Add(dr);


                TextBox1.Text = ds.Tables[0].Rows[0]["about_mini_title"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["about_title"].ToString();
                CKEditorControl1.Text = ds.Tables[0].Rows[0]["about_desc"].ToString(); 
                TextBox3.Text = ds.Tables[0].Rows[0]["about_line1"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["about_line2"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["about_line3"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["about_line4"].ToString();

                CKEditorControl2.Text = ds.Tables[0].Rows[0]["about_quote"].ToString();
                CKEditorControl3.Text = ds.Tables[0].Rows[0]["about_quote2"].ToString();

                TextBox7.Text = ds.Tables[0].Rows[0]["counter1"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["counter1_title"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["counter2"].ToString();
                TextBox10.Text = ds.Tables[0].Rows[0]["counter2_title"].ToString();
                TextBox11.Text = ds.Tables[0].Rows[0]["counter3"].ToString();
                TextBox12.Text = ds.Tables[0].Rows[0]["counter3_title"].ToString();
                TextBox13.Text = ds.Tables[0].Rows[0]["counter4"].ToString();
                TextBox14.Text = ds.Tables[0].Rows[0]["counter4_title"].ToString();

                TextBox15.Text = ds.Tables[0].Rows[0]["about_quote3_mini"].ToString();
                CKEditorControl4.Text = ds.Tables[0].Rows[0]["about_quote3"].ToString();

                TextBox16.Text = ds.Tables[0].Rows[0]["faq_mini_title"].ToString();
                TextBox17.Text = ds.Tables[0].Rows[0]["faq_title"].ToString();
                CKEditorControl5.Text = ds.Tables[0].Rows[0]["faq_desc"].ToString();







            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE aboutus SET about_mini_title = @about_mini_title, about_title = @about_title, about_desc = @about_desc, about_line1 = @about_line1, about_line2 = @about_line2, about_line3 = @about_line3, about_line4 = @about_line4, about_quote = @about_quote, about_quote2 = @about_quote2, counter1 = @counter1, counter1_title = @counter1_title, counter2 = @counter2, counter2_title = @counter2_title, counter3 = @counter3, counter3_title = @counter3_title, counter4 = @counter4, counter4_title = @counter4_title, about_quote3_mini = @about_quote3_mini, about_quote3 = @about_quote3, faq_mini_title = @faq_mini_title, faq_title = @faq_title, faq_desc = @faq_desc WHERE about_id = 1", con);


                komut.Parameters.AddWithValue("@about_mini_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@about_title", TextBox2.Text);
                komut.Parameters.AddWithValue("@about_desc", CKEditorControl1.Text);
                komut.Parameters.AddWithValue("@about_line1", TextBox3.Text);
                komut.Parameters.AddWithValue("@about_line2", TextBox4.Text);
                komut.Parameters.AddWithValue("@about_line3", TextBox5.Text);
                komut.Parameters.AddWithValue("@about_line4", TextBox6.Text);
                komut.Parameters.AddWithValue("@about_quote", CKEditorControl2.Text);
                komut.Parameters.AddWithValue("@about_quote2", CKEditorControl3.Text);
                komut.Parameters.AddWithValue("@counter1", TextBox7.Text);
                komut.Parameters.AddWithValue("@counter1_title", TextBox8.Text);
                komut.Parameters.AddWithValue("@counter2", TextBox9.Text);
                komut.Parameters.AddWithValue("@counter2_title", TextBox10.Text);
                komut.Parameters.AddWithValue("@counter3", TextBox11.Text);
                komut.Parameters.AddWithValue("@counter3_title", TextBox12.Text);
                komut.Parameters.AddWithValue("@counter4", TextBox13.Text);
                komut.Parameters.AddWithValue("@counter4_title", TextBox14.Text);
                komut.Parameters.AddWithValue("@about_quote3_mini", TextBox15.Text);
                komut.Parameters.AddWithValue("@about_quote3", CKEditorControl4.Text);
                komut.Parameters.AddWithValue("@faq_mini_title", TextBox16.Text);
                komut.Parameters.AddWithValue("@faq_title", TextBox17.Text);
                komut.Parameters.AddWithValue("@faq_desc", CKEditorControl5.Text);




                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-about-us.aspx';</script>");

            }
            catch (Exception hata)
            {
                Label1.Text = hata.Message;
                //Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-about-us.aspx';</script>");
            }
        }

    }
}