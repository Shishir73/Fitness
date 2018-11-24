using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_page
{
    public partial class MonthlySummary : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("DailyWorkout.aspx");
        }
    }
}