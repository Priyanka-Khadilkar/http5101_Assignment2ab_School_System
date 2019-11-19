using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Http5101_Assignment2ab_School_System.Student
{
    public partial class CreateStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            bool valid = true;
            string studentid = Request.QueryString["studentid"];
            System.Diagnostics.Debug.WriteLine("StudentID:" + studentid);

            if (String.IsNullOrEmpty(studentid)) valid = false;

            if (valid)
            {
                var db = new SCHOOLDB();
                Dictionary<String, String> student_record = db.FindStudent(Int32.Parse(studentid));

                if (student_record.Count > 0)
                {

                    student_firstname.Text = student_record["STUDENTFNAME"];
                    student_lastname.Text = student_record["STUDENTLNAME"];
                    student_number.Text = student_record["STUDENTNUMBER"];
                    student_enrolment_date.Text = student_record["ENROLMENTDATE"];
                }
                else
                {
                    valid = false;
                }
            }





        }
    }
}