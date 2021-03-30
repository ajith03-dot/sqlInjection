using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Data;
using System.Configuration;
using System.Diagnostics;


public partial class search : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = (@"Data Source=LAPTOP-ECOQ5AC8\SQLEXPRESS;Initial Catalog=register;Integrated Security=True");
        con.Open();

    }
    
    protected void btnss_Click(object sender, EventArgs e)
    {
            string mainconn = ConfigurationManager.ConnectionStrings["registerConnectionstring"].ConnectionString;
            SqlConnection con = new SqlConnection(mainconn);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            string sqlquery = "select * from register where FirstName like '%'+@FirstName+'%' or LastName like '%'+@LastName+'%' or Email like '%'+@Email+'%'";
            System.Diagnostics.Debug.WriteLine(sqlquery);
            cmd.CommandText = sqlquery;
            cmd.Connection = con;
            cmd.Parameters.AddWithValue("FirstName", TextBox1.Text);
            cmd.Parameters.AddWithValue("LastName", TextBox1.Text);
            cmd.Parameters.AddWithValue("Email", TextBox1.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();

    }

    protected void btnis_Click(object sender, EventArgs e)
    {
        string mainconn = ConfigurationManager.ConnectionStrings["registerConnectionstring"].ConnectionString;
        SqlConnection con = new SqlConnection(mainconn);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        string sqlquery = "select * from register where FirstName= '" + TextBox1.Text + "'";
        System.Diagnostics.Debug.WriteLine(sqlquery);
        cmd.CommandText = sqlquery;
        cmd.Connection = con;
        DataTable dt = new DataTable();
        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        sda.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from register";
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
       // con.Close();
    }
}
    