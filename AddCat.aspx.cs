using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminPage_Default : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(strcon);
        //if (conn.State == ConnectionState.Closed)
        //{
        //    conn.Open();

        //}
        conn.Open();

        SqlCommand cmd = new SqlCommand("insert into  category_tbll values ('" + TextBox1.Text + "')", conn);
        int a = cmd.ExecuteNonQuery();
        if (a > 0)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('ADDED');</script>");


        }
        else
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('signup faailed');</script>");
        }
        conn.Close();
    }
}