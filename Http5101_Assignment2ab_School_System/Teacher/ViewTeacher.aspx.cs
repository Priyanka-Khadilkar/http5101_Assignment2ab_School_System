using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Http5101_Assignment2ab_School_System.Teacher
{
    public partial class ViewTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                bool Valid = true;
                string Teacher_Id = Request.QueryString["teacherid"];
                if (String.IsNullOrEmpty(Teacher_Id)) Valid = false;

                //We will attempt to get the record we need
                if (Valid)
                {
                    //Get Connection string value from web.config.
                    string DB_ConnectionString = ConfigurationManager.ConnectionStrings["default"].ConnectionString;

                    //Make a connection to db
                    using (MySqlConnection con = new MySqlConnection(DB_ConnectionString))
                    {
                        try
                        {
                            //My SQL query to fetch data from db
                            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM TEACHERS where TEACHERID=" + Teacher_Id))
                            {
                                using (MySqlDataAdapter da = new MySqlDataAdapter())
                                {
                                    cmd.Connection = con;
                                    da.SelectCommand = cmd;
                                    using (DataTable dt = new DataTable())
                                    {
                                        da.Fill(dt);
                                        foreach (DataRow row in dt.Rows)
                                        {
                                            //Assign values to label
                                            teacher_firstname.Text = row["TEACHERFNAME"].ToString();
                                            teacher_lastname.Text = row["TEACHERLNAME"].ToString();
                                            teacher_employee_no.Text = row["EMPLOYEENUMBER"].ToString();
                                            teacher_hire_date.Text = row["HIREDATE"].ToString();
                                            teacher_salary.Text = row["SALARY"].ToString();
                                        }

                                    }
                                }
                            }
                        }
                        catch (Exception ex)
                        {
                            Debug.WriteLine("Something went wrong!");
                            Debug.WriteLine(ex.ToString());
                        }
                    }
                }
                else
                {
                    teacher_detail.InnerHtml = "There was an error finding teacher.";
                }
            }

        }

        /// <summary>
        /// Back button click to redirect list page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void back_btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListTeachers.aspx");
        }
    }
}