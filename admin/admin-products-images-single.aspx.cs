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
    public partial class admin_products_images_single : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            products();
        }


        public void products()
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
                    String myquery = "select * from products where product_id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = mycon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dt.Rows.Add(dr);

                    Image1.ImageUrl = ds.Tables[0].Rows[0]["big_image_file"].ToString();
                    Image2.ImageUrl = ds.Tables[0].Rows[0]["image1_file"].ToString();
                    Image3.ImageUrl = ds.Tables[0].Rows[0]["image2_file"].ToString();
                    Image4.ImageUrl = ds.Tables[0].Rows[0]["image3_file"].ToString();
                    Image5.ImageUrl = ds.Tables[0].Rows[0]["image4_file"].ToString();
                    Image6.ImageUrl = ds.Tables[0].Rows[0]["image5_file"].ToString();
                    Image7.ImageUrl = ds.Tables[0].Rows[0]["image6_file"].ToString();
                    Image8.ImageUrl = ds.Tables[0].Rows[0]["image7_file"].ToString();
                    Image9.ImageUrl = ds.Tables[0].Rows[0]["image8_file"].ToString();


                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e) // BIG IMAGE
        {
            if (FileUpload1.HasFile)
            {
                try
                {
                    string str1 = FileUpload1.FileName;
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/" + str1));
                    string newImagePath = "~/Uploads/Pages/" + str1;

                    using (SqlConnection con = new SqlConnection(connString))
                    {
                        con.Open();

                        // Eski dosya yolunu alın
                        SqlCommand selectCmd = new SqlCommand("SELECT big_image_file FROM products WHERE product_id = @product_id", con);
                        selectCmd.Parameters.AddWithValue("@product_id", Request.QueryString["id"]);
                        string oldImagePath = (string)selectCmd.ExecuteScalar();

                        // Dosyayı güncelleyin
                        SqlCommand updateCmd = new SqlCommand("UPDATE products SET big_image_file = @big_image_file WHERE product_id = @product_id", con);
                        updateCmd.Parameters.AddWithValue("@big_image_file", newImagePath);
                        updateCmd.Parameters.AddWithValue("@product_id", Request.QueryString["id"]);
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
                        Response.Write("<script language='javascript'>window.alert('Update successful!'); window.location.href='admin-products-images.aspx';</script>");
                        //        Label1.Text = "Dosya başarıyla yüklendi ve veritabanına eklendi!";

                    }
                }
                catch (Exception ex)
                {
                    // Hata durumunda gerekli işlemleri yapın

                    //        // Hata durumunda mesajı göster
                    Label1.Text = "Hata oluştu: " + ex.Message;
                    //Response.Write("<script language='javascript'>window.alert('Something error!'); window.location.href='admin-products-images.aspx';</script>");

                }
            }
            else
            {
                // Dosya yüklenmediğinde gerekli işlemleri yapın

                Response.Write("<script language='javascript'>window.alert('Please choose a file!'); window.location.href='admin-products-images.aspx';</script>");
                //    Label1.Text = "Lütfen bir dosya seçin!";

            }
        }
    }
}