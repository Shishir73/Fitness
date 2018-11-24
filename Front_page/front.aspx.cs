using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_page
{
    public partial class front : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            var username = TextBox1.Text;
            var password = TextBox2.Text;

            using(DnpAssignmentEntities data = new DnpAssignmentEntities())
            {

                var user = data.Users.FirstOrDefault(u => u.Email == username);
                
                if (user != null)
                {
                    if (user.Password == password)
                    {
                        if(username == "admin" && password == user.Password)
                        {
                                Response.Redirect("AdminView.aspx");
                        }

                      //using(var iden = new SqlCommand("Select UserId from user where email='" + username+"'", data))


                        Session["id"] = user.UserId;
                        Response.Redirect("DailyWorkout.aspx");

                        Label1.Text = "Login successful!";
                    }
                    else
                    {
                        Label1.Text = "Wrong password!";
                    }
                }
                else
                    Label1.Text = "No user found!";
            }
        }

    }
}