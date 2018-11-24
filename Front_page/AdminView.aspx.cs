using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_page
{
    public partial class AdminView : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ViewAllData_Click(object sender, EventArgs e)
        {
            using(DnpAssignmentEntities data = new DnpAssignmentEntities())
            {
                GridView1.DataSource = data.Users.ToList<User>();
            }
        }
    }
}