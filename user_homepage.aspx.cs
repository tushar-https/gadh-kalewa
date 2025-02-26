using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        {
            SqlConnection conn = new SqlConnection(strcon);
            string str = "insert into order_tbl values (@cname,@pname,@odetail,@address,@number,@Qnt,@date,1)";
            SqlCommand cmd = new SqlCommand(str, conn);
            cmd.Parameters.AddWithValue("@cname", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@pname", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@odetail", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@address", TextBox4.Text.Trim());
            cmd.Parameters.AddWithValue("@number", TextBox5.Text.Trim());
            cmd.Parameters.AddWithValue("@Qnt", TextBox6.Text.Trim());
            cmd.Parameters.AddWithValue("@date", TextBox7.Text.Trim());

            conn.Open();

            int a = cmd.ExecuteNonQuery();
            if (a > 0)
            {
                Response.Write("<script>alert(' pay to delivery boy... thank you')</script>");
                Label1.Visible = true;
            }
            else
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scripts", "<script>alert('faailed');</script>");
            }

            conn.Close();
        }
    }
}