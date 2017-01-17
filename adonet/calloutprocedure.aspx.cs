using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adonet_calloutprocedure : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=(localdb)\v11.0;Initial Catalog = msdb; Integrated Security = True");
        try
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("GetPriceRange", con);
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter("@lowprice", SqlDbType.Money);
            p1.Direction = ParameterDirection.Output;

            SqlParameter p2 = new SqlParameter("@highprice", SqlDbType.Money);
            p2.Direction = ParameterDirection.Output;

            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);

            cmd.ExecuteNonQuery();
            lblOutput.Text = "Low price : " + p1.Value + " High Price : " + p2.Value; 
        }
        catch (Exception ex)
        {
            lblOutput.Text = "Error -->" + ex.Message;
        }
        finally
        {
            if (con.State == ConnectionState.Open) con.Close();
        }
    }
}