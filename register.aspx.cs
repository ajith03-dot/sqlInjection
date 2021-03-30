using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.Data;

public partial class register : System.Web.UI.Page
{
    SqlCommand cmd = new SqlCommand();
    SqlConnection con = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = (@"Data Source=LAPTOP-ECOQ5AC8\SQLEXPRESS;Initial Catalog=register;Integrated Security=True");
        con.Open();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd=new SqlCommand("insert into register "+"(FirstName,LastName,Email)values(@Firstname,@LastName,@Email)",con);
        cmd.Parameters.AddWithValue("@FirstName", fname.Text);
        cmd.Parameters.AddWithValue("@LastName", lname.Text);
        cmd.Parameters.AddWithValue("@Email", email.Text);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Succesfully Registered')</script>");
        Response.Redirect("search.aspx");

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        //con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "delete from register where FirstName='" + fname.Text + "' or LastName='"+lname.Text+"' or Email='"+email.Text+"'";
        cmd.ExecuteNonQuery();
        //con.Close();
        
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        fname.Text = "";
        lname.Text = "";
        email.Text = "";
    }
}

