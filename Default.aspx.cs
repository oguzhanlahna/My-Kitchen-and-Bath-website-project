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
    public partial class _Default : Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            home2();
            home3();
            home4();
            home5();
            home6();


        }

        public void home2() // home2
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from home2 where section_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal1.Text = dr["mini_title"].ToString();
                Literal2.Text = dr["title"].ToString();
                Literal3.Text = dr["description"].ToString();

                Literal4.Text = dr["photo1_title"].ToString();
                Literal5.Text = dr["photo2_title"].ToString();
                Literal6.Text = dr["photo3_title"].ToString();

                Literal16.Text = dr["photo1_desc"].ToString();
                Literal7.Text = dr["photo1_line1"].ToString();
                Literal8.Text = dr["photo1_line2"].ToString();
                Literal9.Text = dr["photo1_line3"].ToString();

                Literal17.Text = dr["photo2_desc"].ToString();
                Literal10.Text = dr["photo2_line1"].ToString();
                Literal11.Text = dr["photo2_line2"].ToString();
                Literal12.Text = dr["photo2_line3"].ToString();

                Literal18.Text = dr["photo3_desc"].ToString();
                Literal13.Text = dr["photo3_line1"].ToString();
                Literal14.Text = dr["photo3_line2"].ToString();
                Literal15.Text = dr["photo3_line3"].ToString();


            }
            con.Close();
        }
        public void home3() // home3
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from home3 where section_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal19.Text = dr["mini_title"].ToString();
                Literal20.Text = dr["title"].ToString();

                Literal21.Text = dr["photo1_title"].ToString();
                Literal22.Text = dr["photo1_desc"].ToString();

                Literal23.Text = dr["photo2_title"].ToString();
                Literal24.Text = dr["photo2_desc"].ToString();

                Literal25.Text = dr["photo3_title"].ToString();
                Literal26.Text = dr["photo3_desc"].ToString();

                Literal27.Text = dr["photo4_title"].ToString();
                Literal28.Text = dr["photo4_desc"].ToString();



            }
            con.Close();
        }
        public void home4() // home4
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from home4 where section_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal29.Text = dr["mini_title"].ToString();
                Literal30.Text = dr["title"].ToString();
                Literal31.Text = dr["description"].ToString();

                Literal32.Text = dr["icon1_title"].ToString();
                Literal33.Text = dr["icon1_desc"].ToString();

                Literal34.Text = dr["icon2_title"].ToString();
                Literal35.Text = dr["icon2_desc"].ToString();

                Literal36.Text = dr["icon3_title"].ToString();
                Literal37.Text = dr["icon3_desc"].ToString();

                Literal38.Text = dr["icon4_title"].ToString();
                Literal39.Text = dr["icon4_desc"].ToString();

                Literal40.Text = dr["icon5_title"].ToString();
                Literal41.Text = dr["icon5_desc"].ToString();



            }
            con.Close();
        }
        public void home5() // home5
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from home5 where section_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal42.Text = dr["mini_title"].ToString();
                Literal43.Text = dr["title"].ToString();
               




            }
            con.Close();
        }
        public void home6() // home6 // ABOUT INTERIOR
        {

            SqlConnection con = new SqlConnection(connString);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = "select * from home6 where section_id=1";
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {

                Literal46.Text = dr["mini_title"].ToString();
                Literal47.Text = dr["title"].ToString();
                Literal48.Text = dr["description"].ToString();

                Literal49.Text = dr["icon1_title"].ToString();
                Literal50.Text = dr["icon1_desc"].ToString();

                Literal51.Text = dr["icon2_title"].ToString();
                Literal52.Text = dr["icon2_desc"].ToString();





            }
            con.Close();
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e) // PROJECTS
        {
            if (e.CommandName == "project-single")
            {


                Response.Redirect("project-single.aspx?id=" + e.CommandArgument.ToString());

            }
        }

        protected void Repeater3_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "blog-single")
            {


                Response.Redirect("blog-single.aspx?id=" + e.CommandArgument.ToString());

            }
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
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