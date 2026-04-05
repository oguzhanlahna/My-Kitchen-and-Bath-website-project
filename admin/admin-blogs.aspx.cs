using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mykb_modern.admin
{
    public partial class admin_blogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int blog_id = (int)GridView1.DataKeys[e.RowIndex].Value;
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "blog-single-detail")
            {


                Response.Redirect("admin-blog-single-detail.aspx?id=" + e.CommandArgument.ToString());

            }
        }
    }
}