using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Front_page
{
    public partial class DailyWorkout1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["id"] == null)
            {
                Response.Redirect("front.aspx");
            }
            else
            {
                Response.Write(Session["id"]);
            }
        }

        protected void Btn_registerWorkout_Click(object sender, EventArgs e)
        {
            using(DnpAssignmentEntities data = new DnpAssignmentEntities())
            {

                DailyWorkout dailyWorkout = new DailyWorkout();

                dailyWorkout.TypeofWorkout = DropDown_Type.Text;
                dailyWorkout.Duration = TextBox_Duration.Text;
                dailyWorkout.CaloriesBurned = TextBox_CalBurn.Text;
                dailyWorkout.Date = TextBox_Date.Text;
                dailyWorkout.UserId = Convert.ToInt32(Session["id"].ToString());


                data.DailyWorkouts.Add(dailyWorkout);
                data.SaveChanges();
                Label_Result.Text = "Data Saved!";
            }
        }

        protected void Button_Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void Btn_Summary_Click(object sender, EventArgs e)
        {
            Response.Redirect("MonthlySummary.aspx");
        }
    }
}