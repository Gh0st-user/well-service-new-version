using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_library.files.html
{
    public partial class voting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Session checking
            if (Session["role"] == null)
            {
                Response.Redirect("~/files/html/login_pages/login.aspx");
            }
        }
    }
}