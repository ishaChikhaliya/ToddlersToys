using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

public partial class Kid_s_Garment_add_to_cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {

        }
        else
        {
            Response.Redirect("login.aspx");
        }
        if (!IsPostBack)
        {
            BindGrid();
        }
    }
    public void BindGrid()
    {
        try
        {
            string cnstr = WebConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
            SqlConnection con = new SqlConnection(cnstr);
            string qry = "SELECT [cno],[date],[pid],[pname],[price],[img],[quantity],[total] FROM [DB_Toddlertoys].[dbo].[cart] where uno=" + Session["uno"];
          
            con.Open();
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            
            DataSet ds = new DataSet();
            da.Fill(ds);
            Session["count"]= ds.Tables[0].Rows.Count;
            
            GridView1.DataSource = ds;
            GridView1.DataBind();
            con.Close();
        }
        catch (Exception e)
        {
            Response.Write(e.ToString());
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        BindGrid();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        BindGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        Label id = GridView1.Rows[e.RowIndex].FindControl("cid") as Label;
        TextBox qty = GridView1.Rows[e.RowIndex].FindControl("txtqty") as TextBox;
        string cnstr = WebConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
        SqlConnection con = new SqlConnection(cnstr);
        string qry = "UPDATE cart SET quantity=" + qty.Text + " where cno=" + id.Text;

        SqlCommand cmd = new SqlCommand(qry, con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        GridView1.EditIndex = -1;
        BindGrid();

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id = GridView1.Rows[e.RowIndex].FindControl("cid") as Label;
        string cnstr = WebConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
        SqlConnection con = new SqlConnection(cnstr);
        con.Open();
        string qry = "delete from cart where cno=" + id.Text;

        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.ExecuteNonQuery();
        Response.Write("Record Deleted");
        con.Close();

        GridView1.EditIndex = -1;
        BindGrid();
    }

    
    protected void plcordr_Click1(object sender, EventArgs e)
    {
        try
        {
            string date = DateTime.Now.ToString("M/d/yyyy");
            string cnstr = WebConfigurationManager.ConnectionStrings["cnstr"].ConnectionString;
            SqlConnection con = new SqlConnection(cnstr);
            con.Open();

            string cart = "SELECT * from cart ";
            SqlCommand cmd2 = new SqlCommand(cart, con);
            SqlDataReader sdr1 = cmd2.ExecuteReader();
            sdr1.Read();

            int quantity = (int)sdr1["quantity"];


            string sel = "SELECT [product_id],[product_name],[product_img],[product_price],[product_description],[product_quantity] FROM [dbo].[product] where product_id =" + sdr1["pid"];
            sdr1.Close();
            SqlCommand cmd = new SqlCommand(sel, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            sdr.Read();

            string pro_name = sdr["product_name"].ToString();
            string pro_img = sdr["product_img"].ToString();
            int pro_price = (int)sdr["product_price"];
            string pro_disc = sdr["product_description"].ToString();
            int txtqty = (int)sdr["product_quantity"];
            int tot = txtqty * pro_price;
            sdr.Close();

            string ins = @"INSERT INTO [dbo].[order] ([fodate],[pname],[img],[quantity],[price],[description],[uno],[uname],[contact],[address],[total])
     VALUES ('" + date + "','" + pro_name + "','" + pro_img + "'," + quantity + "," + pro_price + ",'" + pro_disc + "'," + Session["uno"] + ",'" + Session["name"] + "'," + Session["mobile"] + ",'" + Session["address"] + "'," + tot + ")";


            SqlCommand cmd1 = new SqlCommand(ins, con);

            cmd1.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this.Page, Page.GetType(), "alert", "alert('Order Placed Successfully...');", true);
            con.Close();
        }
        catch (Exception a)
        {
            Response.Write(a);
        }
    }
}