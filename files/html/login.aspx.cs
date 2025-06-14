using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_library.files.html
{
    public partial class login : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void Submit_btn(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    //Response.Write("<script>alert('Conected successfully : ');</script>");
                }



                SqlCommand cmd = new SqlCommand("select * from sign_up where user_name = '" + TextBox1.Text.Trim() + "' and password = '" + TextBox2.Text.Trim() + "';", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login successfully. :)');</script>");
                        Session["user_name"] = dr.GetValue(8).ToString();
                        Session["first_name"] = dr.GetValue(0).ToString();
                        Session["role"] = "user";
                    }
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Username or Password');</script>");
                }
                
                dr.Close();
                con.Close();
                //Response.Write("<script>alert('Connection closed');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }
    }
}