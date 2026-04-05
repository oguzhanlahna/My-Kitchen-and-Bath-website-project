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
using System.Net;
using System.Net.Mail;

namespace mykb_modern
{
    public partial class Contact : Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            footer();
        }

        public void footer() // footer
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from footer where footer_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                HyperLink1.Text = dr["showroom1_phone"].ToString();
                HyperLink2.Text = dr["showroom2_phone"].ToString();
                HyperLink3.Text = dr["showroom1_mail"].ToString();
                HyperLink4.Text = dr["showroom2_mail"].ToString();





            }
            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("YOUR_FROM_EMAIL");
                    msg.To.Add("YOUR_TO_EMAIL");
                    msg.Subject = "www.mykithenandbath.com Contact";
                    msg.Body =
                    "Full Name: " + TextBox1.Text + Environment.NewLine +
                    "Last Name: " + TextBox2.Text + Environment.NewLine +
                    "E-Mail: " + TextBox3.Text + Environment.NewLine +
                    "Phone Number: " + TextBox4.Text + Environment.NewLine +
                    "Project Type: " + DropDownList2.Text + Environment.NewLine +
                    "Message: " + TextBox5.Text;
                    msg.IsBodyHtml = true;
                    // MailMessage instance to a specified SMTP server
                    SmtpClient smtp = new SmtpClient("YOUR_SMTP_HOST", 587);
                    smtp.Credentials = new System.Net.NetworkCredential("YOUR_SMTP_USER", "YOUR_SMTP_PASSWORD");

                    smtp.EnableSsl = false;

                    // Sending the email
                    smtp.Send(msg);
                    // destroy the message after sent
                    msg.Dispose();
                    //TextBox1.Text = "Thanks for email us.. will get back ASAP..!";
                    //TextBox1.Text = "";
                    //TextBox2.Text = "";
                    //TextBox3.Text = "";
                    //TextBox4.Text = "";
                    //Label1.Text = "Succesfull ";
                    Response.Write("<script language='javascript'>window.alert('Successfull! '); window.location.href='default.aspx';</script>");


                }

                else
                {

                    //Label1.Text = "Error! Check the information. ";
                }
            }
            catch (Exception hata)
            {

                //Label1.Text = "Error! Something must have gone wrong, please try again." + hata.Message;
            }
        }



    }
}