using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data;
using MySql.Data.MySqlClient;

using System.Diagnostics;
using System.Web.UI.HtmlControls;

namespace Http5101_Assignment2ab_School_System.Student
{
    public partial class ListStudents : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

            System.Diagnostics.Debug.WriteLine("Entered ResultSet");
            string tid = Request.QueryString["studentid"];

            string query = "select * from STUDENTS";

            var db = new SCHOOLDB();
            List<Dictionary<String, String>> ResultSet = db.List_Query(query);


            foreach (Dictionary<String, String> row in ResultSet)
            {
                System.Diagnostics.Debug.WriteLine("Entered ResultSet");
                //students_result.InnerHtml += "<div class=\"listitem\">";

                //string studentid = row["STUDENTID"];

                //string studentfirstname = row["STUDENTFNAME"];
                //students_result.InnerHtml += "<div class=\"col4\"><a href=\"ViewStudent.aspx?studentid=" + studentid + "\">" + studentfirstname + "</a></div>";

                //string studentlastname = row["STUDENTLNAME"];
                //students_result.InnerHtml += "<div class=\"col4\">" + studentlastname + "</div>";

                //string studentnumber = row["STUDENTNUMBER"];
                //students_result.InnerHtml += "<div class=\"col4\">" + studentnumber + "</div>";

                //string enrolmentdate = row["ENROLMENTDATE"];
                //students_result.InnerHtml += "<div class=\"col4last\">" + enrolmentdate + "</div>";

                //students_result.InnerHtml += "<button onclick=\"myFunction()\" class=\"btn btn-dar\">View</button>";
                //students_result.InnerHtml += "<button onclick=\"myFunction()\" class=\"btn btn-dar\">Edit</button>";
                //students_result.InnerHtml += "<button onclick=\"myFunction()\" class=\"btn btn-dar\">Delete</button>";

                //students_result.InnerHtml += "</div>";

                HtmlTableRow tRow = new HtmlTableRow();

                HtmlTableCell tb1 = new HtmlTableCell();
                tb1.InnerText = row["STUDENTFNAME"];
                tRow.Controls.Add(tb1);

                HtmlTableCell tb2 = new HtmlTableCell();
                tb2.InnerText = row["STUDENTLNAME"];
                tRow.Controls.Add(tb2);

                HtmlTableCell tb3 = new HtmlTableCell();
                tb3.InnerText = row["STUDENTNUMBER"];
                tRow.Controls.Add(tb3);

                HtmlTableCell tb4 = new HtmlTableCell();
                string str = row["ENROLMENTDATE"];
                str = str.Substring(0, 10);
                System.Diagnostics.Debug.WriteLine("String" + str);
                tb4.InnerText = str;
                tRow.Controls.Add(tb4);

                HtmlTableCell tb5 = new HtmlTableCell();
                tb5.InnerHtml = "<input type=\"button\" value=\"view\" onclick=\"location.href='ViewStudent.aspx?studentid=" + row["STUDENTID"] + "'\" class=\"btn btn-dar\"/>";
                tb5.InnerHtml += "<input type=\"button\" value=\"Edit\" onclick=\"location.href='CreateStudent.aspx?studentid=" + row["STUDENTID"] + "'\" class=\"btn btn-dar\"/>";
                tb5.InnerHtml += "<input type=\"button\" value=\"Delete\"  OnClick=\"return confirm('Are you sure want to delete the teacher?')\" class=\"btn btn-dar\"/>";
                tRow.Controls.Add(tb5);


                table1.Rows.Add(tRow);


            }
        }

    }
}