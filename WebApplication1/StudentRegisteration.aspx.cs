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
    public partial class StudentRegisteration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Register_button(object sender, EventArgs e)
        {
            String connStr = WebConfigurationManager.ConnectionStrings["WebApplication1"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

         //   int id = Int16.Parse(.Text);
            string firstName = first.Text;
            string lastName = last.Text;
            string password = pass.Text;
            string email = emaill.Text;
            string faculty = fac.Text;
            string address = add.Text;
            Boolean gucian=false;

            if (CheckBox.Checked == true)
            {
                gucian = true;
            }

            SqlCommand registercommand = new SqlCommand("StudentRegister", conn);
            registercommand.CommandType = CommandType.StoredProcedure;
            registercommand.Parameters.Add(new SqlParameter("@first_Name", firstName));
            registercommand.Parameters.Add(new SqlParameter("@last_Name", lastName));
            registercommand.Parameters.Add(new SqlParameter("@password", pass));
            SqlParameter success = registercommand.Parameters.Add("@success", SqlDbType.Int);
            success.Direction = ParameterDirection.Output;
            conn.Open();
            logincommand.ExecuteNonQuery();
            conn.Close();
        }
    }
}