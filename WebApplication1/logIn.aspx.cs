using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class logIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void login(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["WebApplication1"].ToString();
                SqlConnection conn = new SqlConnection(connStr);
            int id = Int16.Parse(username.Text);
               string pass = password.Text;
            SqlCommand logincommand = new SqlCommand("userLogin", conn);
            logincommand.CommandType = CommandType.StoredProcedure;
            logincommand.Parameters.Add(new SqlParameter("@id", id));
            logincommand.Parameters.Add(new SqlParameter("@password", pass));
            SqlParameter success=logincommand.Parameters.Add("@success", SqlDbType.Int);
            success.Direction = ParameterDirection.Output;
            conn.Open();
            logincommand.ExecuteNonQuery();
            conn.Close();
            if(success.Value.ToString()=="1")
            {
                Response.Write("Hello Welcome In ");
                Response.Redirect("");
            }
            else if (success.Value.ToString() == "0")
            {
                Response.Write("You do not have an account.Please Click on Register");
            }

        }
        protected void Student_button(object sender, EventArgs e)
        {
            Response.Redirect("StudentRegisteration.aspx");
        }
        protected void Supervisor_button(object sender, EventArgs e)
        {
            Response.Redirect("SupervisorRegisteration.aspx");

        }


    }
}