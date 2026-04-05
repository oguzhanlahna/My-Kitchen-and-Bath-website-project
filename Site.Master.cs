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
using System.Net;
using System.Net.Mail;


namespace mykb_modern
{
    public partial class SiteMaster : MasterPage
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

                Literal1.Text = dr["footer_coupon_title"].ToString();
                Literal2.Text = dr["footer_coupon_desc"].ToString();

                Literal3.Text = dr["logo_desc"].ToString();

                Literal4.Text = dr["showroom1_title"].ToString();
                HyperLink9.Text = dr["showroom1_phone"].ToString();
                HyperLink10.Text = dr["showroom1_mail"].ToString();
                HyperLink11.Text = dr["showroom1_location"].ToString();

                Literal8.Text = dr["showroom2_title"].ToString();
                HyperLink12.Text = dr["showroom2_phone"].ToString();
                HyperLink13.Text = dr["showroom2_mail"].ToString();
                HyperLink14.Text = dr["showroom2_location"].ToString();

                HyperLink1.NavigateUrl = dr["social_facebook"].ToString();
                HyperLink2.NavigateUrl = dr["social_instagram"].ToString();
                HyperLink3.NavigateUrl = dr["social_pinterest"].ToString();
                HyperLink4.NavigateUrl = dr["social_twitter"].ToString();
                HyperLink5.NavigateUrl = dr["social_linkedin"].ToString();
                HyperLink7.NavigateUrl = dr["social_youtube"].ToString();




            }
            con.Close();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            try
            {
                if (Page.IsValid)
                {
                    MailMessage msg = new MailMessage();
                    msg.From = new MailAddress("YOUR_FROM_EMAIL");
                    msg.To.Add("YOUR_TO_EMAIL");
                    msg.Subject = "New Subscription";
                    msg.Body =
                    "Please add this e-mail into mailing list. " + Environment.NewLine +
                    "E-Mail: " + TextBox1.Text;
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

        //protected void LinkButton1_Click(object sender, EventArgs e)
        //{

        //    try
        //    {
        //        if (Page.IsValid)
        //        {
        //            MailMessage msg = new MailMessage();
        //            msg.From = new MailAddress("YOUR_FROM_EMAIL");
        //            msg.To.Add("YOUR_TO_EMAIL");
        //            msg.Subject = "New Subscription";
        //            msg.Body =
        //            "Please add this e-mail into mailing list. " + Environment.NewLine +
        //            "E-Mail: " + TextBox1.Text;
        //            msg.IsBodyHtml = true;
        //            // MailMessage instance to a specified SMTP server
        //            SmtpClient smtp = new SmtpClient("YOUR_SMTP_HOST", 587);
        //            smtp.Credentials = new System.Net.NetworkCredential("YOUR_SMTP_USER", "YOUR_SMTP_PASSWORD");

        //            smtp.EnableSsl = false;

        //            // Sending the email
        //            smtp.Send(msg);
        //            // destroy the message after sent
        //            msg.Dispose();
        //            //TextBox1.Text = "Thanks for email us.. will get back ASAP..!";
        //            //TextBox1.Text = "";
        //            //TextBox2.Text = "";
        //            //TextBox3.Text = "";
        //            //TextBox4.Text = "";
        //            //Label1.Text = "Succesfull ";
        //            Response.Write("<script language='javascript'>window.alert('Successfull! '); window.location.href='default.aspx';</script>");


        //        }

        //        else
        //        {

        //            //Label1.Text = "Error! Check the information. ";
        //        }
        //    }
        //    catch (Exception hata)
        //    {

        //        //Label1.Text = "Error! Something must have gone wrong, please try again." + hata.Message;
        //    }

        //}


    }
}