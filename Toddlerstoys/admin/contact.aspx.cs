using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Kid_s_Garment_admin_contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            
        }
        else
        {
            Response.Redirect("admin_login.aspx");
        }
}

   
    protected void submit_Click(object sender, EventArgs e)
    {
        string cnstr;
        cnstr = WebConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
        SqlConnection con = new SqlConnection(cnstr);


        string ins = @"INSERT INTO [dbo].[contact_us]
           ([name]
           ,[email]
           ,[phone]
           ,[address])
            VALUES
           ('" + name.Text + "','" + email.Text + "'," + phone.Text + ",'" + address.InnerText + "')";
        
        con.Open();
        SqlCommand cmd = new SqlCommand(ins, con);



        int a = cmd.ExecuteNonQuery();

        if (a > 0)
        {
           
            name.Text = "";
            email.Text = "";
            phone.Text = "";
            address.InnerText = "";

        }
        else
        {
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "alert", "alert('Something Went Wrong.. ');window.location ='registration.aspx';", true);
        }

        con.Close();


    }
    protected void clear_Click(object sender, EventArgs e)
    {
        name.Text = "";
        email.Text = "";
        phone.Text = "";
        address.InnerText = "";
    }

}
