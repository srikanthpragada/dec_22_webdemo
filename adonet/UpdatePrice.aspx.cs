using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adonet_UpdatePrice : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnChange_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection
           (@"Data Source=(localdb)\v11.0;Initial Catalog=msdb;Integrated Security=True");

        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand
                ("update products set price = @newprice where prodid= @prodid", con);
            cmd.Parameters.AddWithValue("@prodid", txtId.Text);
            cmd.Parameters.AddWithValue("@newprice", txtPrice.Text);
            int count = cmd.ExecuteNonQuery();

            if (count == 0)
                lblMsg.Text = "Product Id Not Found!";
            else
                lblMsg.Text = "Updated price successfully!";
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error : " + ex.Message;
        }
        finally
        {
            if (con.State == ConnectionState.Open)
                con.Close();
        }
    }


}