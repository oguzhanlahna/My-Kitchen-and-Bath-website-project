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

namespace mykb_modern
{
    public partial class blog_single : System.Web.UI.Page
    {
        string connString = ConfigurationManager.ConnectionStrings["NewConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
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
                    String myquery = "select * from blogs where blog_id=" + Request.QueryString["id"];
                    SqlCommand cmd = new SqlCommand();
                    cmd.CommandText = myquery;
                    cmd.Connection = mycon;
                    SqlDataAdapter da = new SqlDataAdapter();
                    da.SelectCommand = cmd;
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    dt.Rows.Add(dr);

                    Image1.ImageUrl = ds.Tables[0].Rows[0]["blog_img"].ToString();
                    Literal1.Text = ds.Tables[0].Rows[0]["blog_desc"].ToString();

                }
            }
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "project-single")
            {


                Response.Redirect("project-single.aspx?id=" + e.CommandArgument.ToString());

            }
        }
    }
}