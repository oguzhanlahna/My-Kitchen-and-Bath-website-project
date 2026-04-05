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
    public partial class admin_FAQ : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DataTable dt = new DataTable();

                DataRow dr;


                dt.Columns.Add("faq_mini_title");
                dt.Columns.Add("faq_title");




            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from pages where page_id=1";
                SqlCommand cmd = new SqlCommand();
                cmd.CommandText = myquery;
                cmd.Connection = mycon;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt.Rows.Add(dr);


                TextBox1.Text = ds.Tables[0].Rows[0]["faq_mini_title"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["faq_title"].ToString();



            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int FAQ_id = (int)GridView1.DataKeys[e.RowIndex].Value;
        }

        protected void Button1_Click(object sender, EventArgs e) //SAVE
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE pages SET faq_mini_title=@faq_mini_title, faq_title=@faq_title WHERE page_id = 1", con);


                komut.Parameters.AddWithValue("@faq_mini_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@faq_title", TextBox2.Text);


                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-FAQ.aspx';</script>");

            }
            catch (Exception hata)
            {

                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-FAQ.aspx';</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e) //ADD QUES-ANSW
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand(@"INSERT INTO FAQ_QA (FAQ_question,FAQ_answer  ) VALUES(@FAQ_question, @FAQ_answer)", con);


                komut.Parameters.AddWithValue("@FAQ_question", TextBox3.Text);
                komut.Parameters.AddWithValue("@FAQ_answer", TextBox4.Text);
  



                con.Open();
                komut.ExecuteNonQuery();
                con.Close();
                Response.Write("<script language='javascript'>window.alert('Creating successful!'); window.location.href='admin-FAQ.aspx';</script>");

            }
            catch (Exception er)
            {
                //Label1.Text = "Hata " + er.Message;
                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-FAQ.aspx';</script>");
            }
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "FAQ-detail")
            {


                Response.Redirect("admin-FAQ-detail.aspx?id=" + e.CommandArgument.ToString());

            }
        }


        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    // Silme işlemini gerçekleştirme
        //   
        //    // Silme işlemini yapmak için FAQ_id'yi kullanabilirsiniz
        //    // Örneğin, veritabanından silme işlemi yapabilirsiniz.
        //}

    }
}