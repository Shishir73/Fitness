using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_page
{
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            using (DnpAssignmentEntities data = new DnpAssignmentEntities())
            {
                User d = new User();
                d.Fname = fName.Text;
                d.Lname = lName.Text;

                d.Date_of_birth = date.Text;
                d.Gender = gender.Text;
                d.Address = address.Text;
                d.Email = email.Text;
                d.Password = password.Text;


                var user = data.Users.FirstOrDefault(u => u.Email == email.Text);
                if (email.Text != null)
                {
                    data.Users.Add(d);
                    data.SaveChanges();
                    result.Text = "New User registered";
                    fName.Text = lName.Text = date.Text = gender.Text = address.Text 
                        = email.Text = password.Text = null;
                }
                else
                {
                    result.Text = "User already exists! \n Choose another username";
                }
            }


        }
    }
}