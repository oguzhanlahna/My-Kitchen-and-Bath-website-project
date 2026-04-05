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
    public partial class admin_privacy_policy : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                DataTable dt = new DataTable();

                DataRow dr;


                dt.Columns.Add("privacy_mini_title");
                dt.Columns.Add("privacy_title");
                dt.Columns.Add("privacy_desc");




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


                TextBox1.Text = ds.Tables[0].Rows[0]["privacy_mini_title"].ToString();
                TextBox2.Text = ds.Tables[0].Rows[0]["privacy_title"].ToString();
                CKEditorControl1.Text = ds.Tables[0].Rows[0]["privacy_desc"].ToString();







            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE pages SET privacy_mini_title=@privacy_mini_title, privacy_title=@privacy_title, privacy_desc=@privacy_desc WHERE page_id = 1", con);


                komut.Parameters.AddWithValue("@privacy_mini_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@privacy_title", TextBox2.Text);
                komut.Parameters.AddWithValue("@privacy_desc", CKEditorControl1.Text);







                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-privacy-policy.aspx';</script>");

            }
            catch (Exception hata)
            {

                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-privacy-policy.aspx';</script>");
            }
        }
    }
}