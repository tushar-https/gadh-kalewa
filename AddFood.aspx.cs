using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class AdminPage : System.Web.UI.Page
{
    string strcon = ConfigurationManager.ConnectionStrings["conn"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = FileUpload1.PostedFile.FileName;
        string filepath = "images/" + FileUpload1.FileName;
        FileUpload1.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
        string filename2 = FileUpload2.PostedFile.FileName;
        string filepath2 = "images/" + FileUpload2.FileName;
        FileUpload2.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
        string filename3 = FileUpload3.PostedFile.FileName;
        string filepath3 = "images/" + FileUpload3.FileName;
        FileUpload3.PostedFile.SaveAs(Server.MapPath("~/images/") + filename);
        SqlConnection conn = new SqlConnection(strcon);
        string str = "insert into food_tbl values (@pname,@pcat,@prate,@pdesc,@pimg,@img2,@img3,@qnt)";
        SqlCommand cmd = new SqlCommand(str, conn);
        cmd.Parameters.AddWithValue("@pname", TextBox1.Text.Trim());
        cmd.Parameters.AddWithValue("@pcat", DropDownList1.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@prate", TextBox3.Text.Trim());
        cmd.Parameters.AddWithValue("@pdesc", TextBox4.Text.Trim());
        cmd.Parameters.AddWithValue("@pimg", filepath);
        cmd.Parameters.AddWithValue("@img2", filepath2);
        cmd.Parameters.AddWithValue("@img3", filepath3);
        cmd.Parameters.AddWithValue("@qnt", TextBox2.Text.Trim());
        conn.Open();

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