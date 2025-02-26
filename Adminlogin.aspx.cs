using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Adminloginaspx : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
      
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(strcon);
        conn.Open();

        SqlCommand cmd = new SqlCommand("select *  from login_tbl where username='" + TextBox1.Text.Trim() + "' AND password='" + TextBox2.Text.Trim() + "'", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows)
        {
            while (dr.Read())
            {
                Session["role"] = "admin";

                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('Login sucessful');</script>");
            }
            Response.Redirect("~/AddCat.aspx");
        }
        else
        {
            Response.Write("<script>alert('Invalid credentials');</script>");
        }
        conn.Close();
    }
}