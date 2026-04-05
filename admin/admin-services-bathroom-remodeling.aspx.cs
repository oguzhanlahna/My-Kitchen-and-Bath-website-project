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
    public partial class admin_services_bathroom_remodeling : System.Web.UI.Page
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

                dt.Columns.Add("image1_title");
                dt.Columns.Add("image1_desc");

                dt.Columns.Add("image2_title");
                dt.Columns.Add("image2_desc");

                dt.Columns.Add("ser_title2");
                dt.Columns.Add("ser_desc2");



            }
            else
            {



                DataTable dt = new DataTable();
                DataRow dr;
                dr = dt.NewRow();
                SqlConnection mycon = new SqlConnection(connString);
                String myquery = "select * from services where services_id=2";
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

                TextBox2.Text = ds.Tables[0].Rows[0]["image1_title"].ToString();
                CKEditorControl2.Text = ds.Tables[0].Rows[0]["image1_desc"].ToString();

                TextBox3.Text = ds.Tables[0].Rows[0]["image2_title"].ToString();
                CKEditorControl3.Text = ds.Tables[0].Rows[0]["image2_desc"].ToString();

                TextBox4.Text = ds.Tables[0].Rows[0]["ser_title2"].ToString();
                CKEditorControl4.Text = ds.Tables[0].Rows[0]["ser_desc2"].ToString();






            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(connString);
                SqlCommand komut = new SqlCommand("UPDATE services SET ser_title = @ser_title, ser_desc = @ser_desc, image1_title = @image1_title, image1_desc = @image1_desc, image2_title = @image2_title, image2_desc = @image2_desc, ser_title2 = @ser_title2, ser_desc2 = @ser_desc2 WHERE services_id = 2", con);

                komut.Parameters.AddWithValue("@ser_title", TextBox1.Text);
                komut.Parameters.AddWithValue("@ser_desc", CKEditorControl1.Text);


                komut.Parameters.AddWithValue("@image1_title", TextBox2.Text);
                komut.Parameters.AddWithValue("@image1_desc", CKEditorControl2.Text);


                komut.Parameters.AddWithValue("@image2_title", TextBox3.Text);
                komut.Parameters.AddWithValue("@image2_desc", CKEditorControl3.Text);


                komut.Parameters.AddWithValue("@ser_title2", TextBox4.Text);
                komut.Parameters.AddWithValue("@ser_desc2", CKEditorControl4.Text);








                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-services-bathroom-remodeling.aspx';</script>");

            }
            catch (Exception hata)
            {

                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-services-bathroom-remodeling.aspx';</script>");
            }
        }
    }
}