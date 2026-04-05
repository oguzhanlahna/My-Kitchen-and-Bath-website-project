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
using System.IO;

namespace mykb_modern.admin
{
    public partial class admin_FAQ_detail : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            FAQ();
        }


        public void FAQ()
        {
            if (IsPostBack)
            {
                DataTable dt = new DataTable();

                DataRow dr;


            }
            else
            {

                if (Request.QueryString["id"] != null)
                {
                    DataTable dt = new DataTable();
                    DataRow dr;

                    dr = dt.NewRow();
                    SqlConnection mycon = new SqlConnection(connString);
                    String myquery = "select * from FAQ_QA where FAQ_id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = mycon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dt.Rows.Add(dr);

                    TextBox1.Text = ds.Tables[0].Rows[0]["FAQ_question"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["FAQ_answer"].ToString();

                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connString);

            try
            {
                SqlCommand komut = new SqlCommand("update FAQ_QA SET FAQ_question=@FAQ_question, FAQ_answer=@FAQ_answer where FAQ_id=" + Request.QueryString["id"], con);


                komut.Parameters.AddWithValue("FAQ_question", TextBox1.Text);
                komut.Parameters.AddWithValue("FAQ_answer", TextBox2.Text);


                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-FAQ.aspx';</script>");

            }
            catch (Exception)
            {
                //Label1.Text = error.Message;
                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-FAQ.aspx';</script>");

            }
        }
    }
}