using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Principal;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_library.files.html
{
    public partial class sign_up : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        // ON SUBMIT BUTTON CLICK EVENT START
        protected void Button1_Click(object sender, EventArgs e)
        {
            // Confirm password logic

            string password = TextBox9.Text;
            string confirm_pass = TextBox10.Text;
            if (password == confirm_pass)
            {
                if (check_user_exists())
                {
                    Response.Write("<script>alert('User already exists with this username, try another username');</script>");
                    return;
                }
                else
                {
                    new_sign_up();
                }
            }
            else
            {
                Response.Write("<script>alert('Password does not match.')</script>");
            }
        }

        // ON SUBMIT BUTTON CLICK EVENT END
        // USER DEFINED FUNCTIONS SIGNUP START

        bool check_user_exists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * FROM sign_up WHERE user_name = '"+ TextBox8.Text.Trim() +"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);   
                DataTable dt = new DataTable();
                da.Fill(dt);    

                if (dt.Rows.Count >= 1)
                {
                    return true; // User already exists
                }
                else
                {
                    return false; // User does not exist
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
            return false;
        }
        protected void new_sign_up()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                    //Response.Write("<script>alert('Conected successfully : ');</script>");
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO sign_up (first_name, middle_name, last_name, age, mobile_no, address, ex, user_name, password) values (@first_name, @middle_name, @last_name, @age, @mobile_no, @address, @ex, @user_name, @password)", con);
                cmd.Parameters.AddWithValue("@first_name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@middle_name", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@last_name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@age", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@mobile_no", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox6.Text.Trim());
                //cmd.Parameters.AddWithValue("@state", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@ex", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@user_name", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Sign Up Successfully');</script>");
                Response.Redirect("login.aspx");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error: " + ex.Message + "');</script>");
            }
        }

        // USER DEFINED FUNCTIONS SIGNUP END

    }
}