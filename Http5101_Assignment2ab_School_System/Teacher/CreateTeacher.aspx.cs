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
    public partial class CreateTeacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                bool Valid = true;
                string Teacher_Id = Request.QueryString["teacherid"];
                if (String.IsNullOrEmpty(Teacher_Id)) Valid = false;

                //If Querystring has value then pull data for teacher and make page available for Edit Teacher 
                if (Valid)
                {
                    page_title.InnerText = "Edit Teacher";
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
                                            teacher_employee_number.Text = row["EMPLOYEENUMBER"].ToString();
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
            }

        }

    
        protected void Btn_Cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ListTeachers.aspx");
        }
    }
}