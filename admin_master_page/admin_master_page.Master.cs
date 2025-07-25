﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_library
{
    public partial class admin_master_page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] != null && Session["role"].Equals(""))
                {
                    // LINKS TO HIDE FOR UNSIGN-UP USERS
                    HyperLink6.Visible = true; // Hides sign-up link for users
                    HyperLink5.Visible = true; // Hides login link for users
                    // LINKS TO DISPLAY UNSIGN-UP FOR USERS
                    Button1.Visible = false; // Shows logout link for users
                    HyperLink8.Visible = false; // Shows user name link for users

                }
                else if (Session["role"] != null && Session["role"].Equals("user"))
                {

                    // LINKS TO HIDE FOR USERS
                    HyperLink6.Visible = false; // Hides sign-up link for users
                    HyperLink5.Visible = false; // Hides login link for users
                    // LINKS TO DISPLAY FOR USERS
                    Button1.Visible = true; // Shows logout link for users
                    HyperLink8.Visible = true; // Shows user name link for users
                    HyperLink8.Text = $"Hello {Session["user_name"].ToString()}"; // Shows user name for users

                }
                else if (Session["role"] != null && Session["role"].Equals("admin"))
                {
                    // LINKS TO HIDE FOR ADMIN
                    HyperLink6.Visible = false; // Hides sign-up link for admin
                    HyperLink5.Visible = false; // Hides login link for admin
                    // LINKS TO DISPLAY FOR ADMIN
                    Button1.Visible = true; // Shows logout link for admin
                    HyperLink8.Visible = true; // Shows user name link for admin
                    HyperLink9.Visible = true; // Shows Members Detail link for admin
                    HyperLink8.Text = $"Hello {Session["user_name"].ToString()}"; // Shows user name for admin
                    Label1.Text = $"Hello {Session["user_name"].ToString()}";

                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        protected void Side_nav_btn(object sender, EventArgs e)
        {
            Panel1.Visible = !Panel1.Visible;
        }
        protected void Log_out(object sender, EventArgs e)
        {
            Session["user_name"] = "";
            Session["role"] = "";
            // LINKS TO HIDE FOR LOGGED OUT USERS
            Button1.Visible = false; // Hides logout link for users
            HyperLink8.Visible = false; // Hides user name for unsign-up users
            // LINKS TO DISPLAY FOR LOGGED OUT USERS
            HyperLink6.Visible = true; // Displays sign-up link for unsign-up users
            HyperLink5.Visible = true; // displays login link for unsign-up users
            Response.Redirect("~/files/html/start_pages/home.aspx");
        }
    }
}