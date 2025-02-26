using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class adminPage_Default2 : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(strcon);
     
        conn.Open();
        //if status = 1 then order is pending
        SqlCommand cmd = new SqlCommand("update order_tbl set status=0 where Cname='" +DropDownList1.SelectedItem.ToString() + "'", conn);
  cmd.ExecuteNonQuery();
  GridView1.DataBind();
        conn.Close();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.DataBind();
    }
}