using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_library
{
    public partial class master_page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] != null && Session["role"].Equals(""))
                {
                    HyperLink6.Visible = true; // displays sign-up link for users
                    HyperLink5.Visible = true; // displays login link for users
                    HyperLink3.NavigateUrl = "files/html/login.aspx"; // Documentation page before login
                    HyperLink7.NavigateUrl = "files/html/login.aspx"; // Apply page before login
                    Button1.Visible = false; // Hide logout link for users
                    HyperLink8.Visible = false; // Hide user name link after logout 
                }
                else if (Session["role"] != null && Session["role"].Equals("user"))
                {
                    HyperLink6.Visible = false; // displays sign-up link for users
                    HyperLink5.Visible = false; // displays login link for users
                    Button1.Visible = true;// Hide logout link for users
                    HyperLink3.NavigateUrl = "files/html/documentation.aspx"; // Documentation page after login 
                    HyperLink7.NavigateUrl = "files/html/apply.aspx"; // Apply page before login link
                    HyperLink8.Visible = true;
                    HyperLink8.Text = Session["user_name"].ToString();

                }
                else if (Session["role"] != null && Session["role"].Equals("admin"))
                {
                    HyperLink6.Visible = false; // displays sign-up link for users
                    HyperLink5.Visible = false; // displays login link for users
                    Button1.Visible = true;// Hide logout link for users
                    HyperLink3.NavigateUrl = "files/html/documentation.aspx"; // Documentation page after login 
                    HyperLink7.NavigateUrl = "files/html/apply.aspx"; // Apply page before login
                    HyperLink8.Visible = true;
                    HyperLink8.Text = Session["user_name"].ToString();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        protected void Log_out(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Logout successfully. :)');</script>");

            Session["user_name"] = "";
            Session["role"] = "";

            HyperLink6.Visible = true; // displays sign-up link for users
            HyperLink5.Visible = true; // displays login link for users
            HyperLink3.NavigateUrl = "files/html/login.aspx"; // Documentation page before login link
            Button1.Visible = false; // Hide logout link for users
            HyperLink8.Visible = false; // Hide user name link after logout

            Response.Redirect("home.aspx");
        }
    }
}