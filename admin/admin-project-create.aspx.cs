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
    public partial class admin_project_create : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string admin = "admin";
            try
            {

                using (SqlConnection con = new SqlConnection(connString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO projects (pro_title, pro_mini_desc, pro_desc, pro_name, pro_client, pro_loc, pro_year, pro_cat, home_top, single_top, created_date, admin) VALUES (@pro_title, @pro_mini_desc, @pro_desc, @pro_name, @pro_client, @pro_loc, @pro_year, @pro_cat, @home_top, @single_top, @created_date, @admin)", con);
                    cmd.Parameters.AddWithValue("@pro_title", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@pro_mini_desc", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@pro_desc", CKEditorControl1.Text);

                    cmd.Parameters.AddWithValue("@pro_name", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@pro_client", TextBox4.Text);
                    cmd.Parameters.AddWithValue("@pro_loc", TextBox5.Text);
                    cmd.Parameters.AddWithValue("@pro_year", TextBox6.Text);

                    cmd.Parameters.AddWithValue("@pro_cat", TextBox6.Text);
                    cmd.Parameters.AddWithValue("@home_top", DropDownList1.Text);
                    cmd.Parameters.AddWithValue("@single_top", DropDownList2.Text);
                    cmd.Parameters.AddWithValue("@created_date", DateTime.Now);
                    cmd.Parameters.AddWithValue("@admin", admin);




                    cmd.ExecuteNonQuery();
                    con.Close();
                }

                ////Başarılı mesajı göster
                Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-projects.aspx';</script>");
                Label1.Text = "Dosya başarıyla yüklendi ve veritabanına eklendi!";
            }
            catch (Exception ex)
            {
                //Hata durumunda mesajı göster
                Label1.Text = "Hata oluştu: " + ex.Message;
                //Response.Write("<script language='javascript'>window.alert('Something error!'); window.location.href='admin-project-create.aspx';</script>");
            }
        }
    }
}





            //if (FileUpload1.HasFile && FileUpload2.HasFile && FileUpload3.HasFile && FileUpload4.HasFile && FileUpload5.HasFile)
            //{
            //    try
            //    {
            //        string str1 = FileUpload1.FileName; string str2 = FileUpload2.FileName; string str3 = FileUpload3.FileName; string str4 = FileUpload4.FileName; string str5 = FileUpload5.FileName;
            //        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str1));
            //        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str2));
            //        FileUpload3.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str3));
            //        FileUpload4.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str4));
            //        FileUpload5.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str5));
            //        string Image1 = "~/Uploads/" + str1.ToString();
            //        string Image2 = "~/Uploads/" + str2.ToString();
            //        string Image3 = "~/Uploads/" + str3.ToString();
            //        string Image4 = "~/Uploads/" + str4.ToString();
            //        string Image5 = "~/Uploads/" + str5.ToString();



            //        using (SqlConnection con = new SqlConnection(connString))
            //        {
            //            con.Open();
            //            SqlCommand cmd = new SqlCommand("INSERT INTO projects (pro_title, pro_mini_desc, pro_desc, pro_name, pro_client, pro_loc, pro_year, pro_cat, home_top, single_top, pro_big_img, pro_img1, pro_img2, pro_img3, pro_home_img) VALUES (@pro_title, @pro_mini_desc, @pro_desc, @pro_name, @pro_client, @pro_loc, @pro_year, @pro_cat, @home_top, @single_top, @pro_big_img, @pro_img1, @pro_img2, @pro_img3, @pro_home_img)", con);

            //            cmd.Parameters.AddWithValue("@pro_title", TextBox1.Text);
            //            cmd.Parameters.AddWithValue("@pro_mini_desc", TextBox2.Text);
            //            cmd.Parameters.AddWithValue("@pro_desc", CKEditorControl1.Text);

            //            cmd.Parameters.AddWithValue("@pro_name", TextBox3.Text);
            //            cmd.Parameters.AddWithValue("@pro_client", TextBox4.Text);
            //            cmd.Parameters.AddWithValue("@pro_loc", TextBox5.Text);
            //            cmd.Parameters.AddWithValue("@pro_year", TextBox6.Text);

            //            cmd.Parameters.AddWithValue("@pro_cat", TextBox6.Text);
            //            cmd.Parameters.AddWithValue("@home_top", DropDownList1.Text);
            //            cmd.Parameters.AddWithValue("@single_top", DropDownList2.Text);




            //            cmd.Parameters.AddWithValue("@pro_big_img", "~/Uploads/" + Image1);
            //            cmd.Parameters.AddWithValue("@pro_img1", "~/Uploads/" + Image2);
            //            cmd.Parameters.AddWithValue("@pro_img2", "~/Uploads/" + Image3);
            //            cmd.Parameters.AddWithValue("@pro_img3", "~/Uploads/" + Image4);
            //            cmd.Parameters.AddWithValue("@pro_home_img", "~/Uploads/" + Image5);

            //            cmd.ExecuteNonQuery();
            //            con.Close();
            //        }

            //        // Başarılı mesajı göster
            //        Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-home4.aspx';</script>");
            //        Label1.Text = "Dosya başarıyla yüklendi ve veritabanına eklendi!";
            //    }
            //    catch (Exception ex)
            //    {
            //        // Hata durumunda mesajı göster
            //        Label1.Text = "Hata oluştu: " + ex.Message;
            //        //Response.Write("<script language='javascript'>window.alert('Something error!'); window.location.href='admin-home4.aspx';</script>");
            //    }
            //}
            //else
            //{
            //    Response.Write("<script language='javascript'>window.alert('Please choose a file!'); window.location.href='admin-home4.aspx';</script>");
            //    Label1.Text = "Lütfen bir dosya seçin!";
            //}
