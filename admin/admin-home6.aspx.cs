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
    public partial class admin_home6 : System.Web.UI.Page
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
                dt.Columns.Add("icon1_title");
                dt.Columns.Add("icon1_desc");
                dt.Columns.Add("icon2_title");
                dt.Columns.Add("icon2_desc");






            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from home6 where section_id=1";
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

                TextBox4.Text = ds.Tables[0].Rows[0]["icon1_title"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["icon1_desc"].ToString();

                TextBox6.Text = ds.Tables[0].Rows[0]["icon2_title"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["icon2_desc"].ToString();





            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE home6 SET mini_title = @mini_title, title = @title, description = @description, icon1_title = @icon1_title, icon1_desc = @icon1_desc, icon2_title = @icon2_title, icon2_desc = @icon2_desc WHERE section_id = 1", con);


                komut.Parameters.AddWithValue("@mini_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@title", TextBox2.Text);
                komut.Parameters.AddWithValue("@description", TextBox3.Text);

                komut.Parameters.AddWithValue("@icon1_title", TextBox4.Text);
                komut.Parameters.AddWithValue("@icon1_desc", TextBox5.Text);

                komut.Parameters.AddWithValue("@icon2_title", TextBox6.Text);
                komut.Parameters.AddWithValue("@icon2_desc", TextBox7.Text);






                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-home4.aspx';</script>");

            }
            catch (Exception hata)
            {
                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-home4.aspx';</script>");
            }
        }
    }
}