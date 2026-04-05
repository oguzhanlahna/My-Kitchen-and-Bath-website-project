using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace mykb_modern
{
    public partial class blogs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "blog-single")
            {


                Response.Redirect("blog-single.aspx?id=" + e.CommandArgument.ToString());

            }
        }
    }
}