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
    public partial class admin_project_single_detail : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            projects();
        }

         public void projects()
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
                    String myquery = "select * from projects where project_id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = mycon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dt.Rows.Add(dr);

                    Image1.ImageUrl = ds.Tables[0].Rows[0]["pro_big_img"].ToString();
                    Image2.ImageUrl = ds.Tables[0].Rows[0]["pro_img1"].ToString();
                    Image3.ImageUrl = ds.Tables[0].Rows[0]["pro_img2"].ToString();
                    Image4.ImageUrl = ds.Tables[0].Rows[0]["pro_img3"].ToString();
                    Image5.ImageUrl = ds.Tables[0].Rows[0]["pro_home_img"].ToString();

                    TextBox1.Text = ds.Tables[0].Rows[0]["pro_title"].ToString();
                    TextBox2.Text = ds.Tables[0].Rows[0]["pro_mini_desc"].ToString();
                    CKEditorControl1.Text = ds.Tables[0].Rows[0]["pro_desc"].ToString();

                    TextBox3.Text = ds.Tables[0].Rows[0]["pro_name"].ToString();
                    TextBox4.Text = ds.Tables[0].Rows[0]["pro_client"].ToString();
                    TextBox5.Text = ds.Tables[0].Rows[0]["pro_loc"].ToString();
                    TextBox6.Text = ds.Tables[0].Rows[0]["pro_year"].ToString();
                    TextBox7.Text = ds.Tables[0].Rows[0]["pro_cat"].ToString();
                    DropDownList1.Text = ds.Tables[0].Rows[0]["home_top"].ToString();
                    DropDownList2.Text = ds.Tables[0].Rows[0]["single_top"].ToString();
                }
            }
        }       

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connString);

            try
            {
                SqlCommand komut = new SqlCommand("update projects SET pro_title=@pro_title, pro_mini_desc=@pro_mini_desc, pro_desc=@pro_desc, pro_name=@pro_name, pro_client=@pro_client, pro_loc=@pro_loc, pro_year=@pro_year, pro_cat=@pro_cat, home_top=@home_top, single_top=@single_top  where project_id=" + Request.QueryString["id"], con);


                komut.Parameters.AddWithValue("pro_title", TextBox1.Text);
                komut.Parameters.AddWithValue("pro_mini_desc", TextBox2.Text);
                komut.Parameters.AddWithValue("pro_desc", CKEditorControl1.Text);
                komut.Parameters.AddWithValue("pro_name", TextBox3.Text);
                komut.Parameters.AddWithValue("pro_client", TextBox4.Text);
                komut.Parameters.AddWithValue("pro_loc", TextBox5.Text);
                komut.Parameters.AddWithValue("pro_year", TextBox6.Text);
                komut.Parameters.AddWithValue("pro_cat", TextBox7.Text);
                komut.Parameters.AddWithValue("home_top", DropDownList1.Text);
                komut.Parameters.AddWithValue("single_top", DropDownList2.Text);

                con.Open();
                komut.ExecuteNonQuery();
                con.Close();

                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-projects.aspx';</script>");

            }
            catch (Exception error)
            {
                //Label1.Text = error.Message;
                Response.Write("<script language='javascript'>window.alert('Something went wrong. Try again or contact the administrator.'); window.location.href='admin-projects.aspx';</script>");

            }
        }

        protected void Button3_Click(object sender, EventArgs e) //big-img
        {
            //SqlCommand komut = new SqlCommand("update page_banners set banner_img=@banner_img where bannerid=" + Request.QueryString["id"], con);


            if (FileUpload1.HasFile)
            {
                try
                {
                    string str1 = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str1));
                    string newImagePath = "~/Uploads/" + str1;

                    using (SqlConnection con = new SqlConnection(connString))
                    {
                        con.Open();

                        // Eski dosya yolunu alın
                        SqlCommand selectCmd = new SqlCommand("SELECT pro_big_img FROM projects WHERE project_id = @project_id", con);
                        selectCmd.Parameters.AddWithValue("@project_id", Request.QueryString["id"]);
                        string oldImagePath = (string)selectCmd.ExecuteScalar();

                        // Dosyayı güncelleyin
                        SqlCommand updateCmd = new SqlCommand("UPDATE projects SET pro_big_img = @pro_big_img WHERE project_id = @project_id", con);
                        updateCmd.Parameters.AddWithValue("@pro_big_img", newImagePath);
                        updateCmd.Parameters.AddWithValue("@project_id", Request.QueryString["id"]);
                        updateCmd.ExecuteNonQuery();

                        con.Close();

                        // Eski dosyayı silin
                        if (!string.IsNullOrEmpty(oldImagePath) && oldImagePath != newImagePath)
                        {
                            string physicalPath = Server.MapPath(oldImagePath);
                            if (File.Exists(physicalPath))
                            {
                                File.Delete(physicalPath);
                            }
                        }


                        //        // Başarılı mesajı göster
                        Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-projects.aspx';</script>");
                        //        Label1.Text = "Dosya başarıyla yüklendi ve veritabanına eklendi!";

                    }
                }
                catch (Exception ex)
                {
                    // Hata durumunda gerekli işlemleri yapın

                    //        // Hata durumunda mesajı göster
                    //        Label1.Text = "Hata oluştu: " + ex.Message;
                    Response.Write("<script language='javascript'>window.alert('Something error!'); window.location.href='admin-projects.aspx';</script>");

                }
            }
            else
            {
                // Dosya yüklenmediğinde gerekli işlemleri yapın

                Response.Write("<script language='javascript'>window.alert('Please choose a file!'); window.location.href='admin-projects.aspx';</script>");
                //    Label1.Text = "Lütfen bir dosya seçin!";

            }





            //if (FileUpload1.HasFile)
            //{
            //    try
            //    {
            //        string str1 = FileUpload1.FileName;
            //        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str1));
            //        string Image1 = "~/Uploads/" + str1.ToString();

            //        using (SqlConnection con = new SqlConnection(connString))
            //        {
            //            con.Open();
            //            SqlCommand cmd = new SqlCommand("update projects set pro_big_img=@pro_big_img where project_id=" + Request.QueryString["id"], con);


            //            cmd.Parameters.AddWithValue("@pro_big_img", "~/Uploads/" + Image1);

            //            cmd.ExecuteNonQuery();
            //            con.Close();
            //        }

            //        // Başarılı mesajı göster
            //        Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-projects.aspx';</script>");
            //        Label1.Text = "Dosya başarıyla yüklendi ve veritabanına eklendi!";
            //    }
            //    catch (Exception ex)
            //    {
            //        // Hata durumunda mesajı göster
            //        Label1.Text = "Hata oluştu: " + ex.Message;
            //        //Response.Write("<script language='javascript'>window.alert('Something error!'); window.location.href='admin-projects.aspx';</script>");
            //    }
            //}
            //else
            //{
            //    Response.Write("<script language='javascript'>window.alert('Please choose a file!'); window.location.href='admin-projects.aspx';</script>");
            //    Label1.Text = "Lütfen bir dosya seçin!";
            //}


        }

        protected void Button4_Click(object sender, EventArgs e) //image1
        {

        }

        protected void Button5_Click(object sender, EventArgs e) //image2
        {

        }

        protected void Button6_Click(object sender, EventArgs e) //image3
        {

        }

        protected void Button7_Click(object sender, EventArgs e) //home-img
        {
            if (FileUpload5.HasFile)
            {
                try
                {
                    string str1 = FileUpload5.FileName;
                    FileUpload5.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str1));
                    string newImagePath = "~/Uploads/" + str1;

                    using (SqlConnection con = new SqlConnection(connString))
                    {
                        con.Open();

                        // Eski dosya yolunu alın
                        SqlCommand selectCmd = new SqlCommand("SELECT pro_home_img FROM projects WHERE project_id = @project_id", con);
                        selectCmd.Parameters.AddWithValue("@project_id", Request.QueryString["id"]);

                        object oldImagePathObj = selectCmd.ExecuteScalar();
                        string oldImagePath = oldImagePathObj == DBNull.Value ? null : (string)oldImagePathObj;

                        // Dosyayı güncelleyin
                        SqlCommand updateCmd = new SqlCommand("UPDATE projects SET pro_home_img = @pro_home_img WHERE project_id = @project_id", con);
                        updateCmd.Parameters.AddWithValue("@pro_home_img", newImagePath);
                        updateCmd.Parameters.AddWithValue("@project_id", Request.QueryString["id"]);
                        updateCmd.ExecuteNonQuery();

                        con.Close();

                        // Eski dosyayı silin (sadece silinecek dosya varsa ve yeni dosya yüklenmişse)
                        if (!string.IsNullOrEmpty(oldImagePath) && oldImagePath != newImagePath && File.Exists(Server.MapPath(oldImagePath)))
                        {
                            File.Delete(Server.MapPath(oldImagePath));
                        }

                        // Başarılı mesajı göster
                        Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-projects.aspx';</script>");
                        // Label1.Text = "Dosya başarıyla yüklendi ve veritabanına eklendi!";
                    }
                }
                catch (Exception ex)
                {
                    // Hata durumunda gerekli işlemleri yapın

                    // Hata durumunda mesajı göster
                    Label1.Text = "Hata oluştu: " + ex.Message;
                    //Response.Write("<script language='javascript'>window.alert('Something error!'); window.location.href='admin-projects.aspx';</script>");
                }
            }
            else
            {
                // Dosya yüklenmediğinde gerekli işlemleri yapın

                //Response.Write("<script language='javascript'>window.alert('Please choose a file!'); window.location.href='admin-projects.aspx';</script>");
                // Label1.Text = "Lütfen bir dosya seçin!";
            }
        }
    }
}