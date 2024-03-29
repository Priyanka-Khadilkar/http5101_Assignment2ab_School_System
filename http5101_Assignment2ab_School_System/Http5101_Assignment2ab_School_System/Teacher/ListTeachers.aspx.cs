﻿using MySql.Data.MySqlClient;
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
    public partial class ListTeachers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                //het Connection string value from web.config.
                string DB_ConnectionString = ConfigurationManager.ConnectionStrings["default"].ConnectionString;

                //Make a connection to db
                using (MySqlConnection con = new MySqlConnection(DB_ConnectionString))
                {
                    try
                    {
                        //My SQL query to fetch data from db
                        using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM TEACHERS"))
                        {
                            using (MySqlDataAdapter da = new MySqlDataAdapter())
                            {
                                cmd.Connection = con;
                                da.SelectCommand = cmd;
                                using (DataTable dt = new DataTable())
                                {
                                    //fill all data in to the datatable
                                    da.Fill(dt);

                                    //Assign Data to gridview
                                    teachers_list_gridview.DataSource = dt;

                                    //Bind Data of gridview
                                    teachers_list_gridview.DataBind();
                                }
                            }
                        }
                    }
                    catch(Exception ex)
                    {
                        Debug.WriteLine("Something went wrong!");
                        Debug.WriteLine(ex.ToString());
                    }
                }
            }

        }

        /// <summary>
        /// Row command for view, edit and delete teacher.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void teachers_list_gridview_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //if user clicks on view button then it will redirect to view page of teacher.

            if(e.CommandName == "view_teacher")
            {
                Response.Redirect("ViewTeacher.aspx?id=" + e.CommandArgument.ToString());
            }
            else if(e.CommandName == "edit_teacher")
            {
                Response.Redirect("CreateTeacher.aspx?id=" + e.CommandArgument.ToString());
            }

        }

        protected void add_teacher_button_Click(object sender, EventArgs e)
        {
            Response.Redirect("CreateTeacher.aspx");
        }
    }
}