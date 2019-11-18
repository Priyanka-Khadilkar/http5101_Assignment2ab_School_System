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

namespace Http5101_Assignment2ab_School_System.Class
{
    public partial class CreateClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                string Class_Id = "";
                if (!String.IsNullOrEmpty(Request.QueryString["id"]))
                {
                    // Query string value is there so now use it
                    Class_Id = Request.QueryString["id"].ToString();

                }

                //If Querystring has value then pull data for teacher and make page available for Edit Teacher 
                if (!String.IsNullOrEmpty(Class_Id))
                {
                    page_title.InnerText = "Edit Class";
                    //Get Connection string value from web.config.
                    string DB_ConnectionString = ConfigurationManager.ConnectionStrings["default"].ConnectionString;

                    //Make a connection to db
                    using (MySqlConnection con = new MySqlConnection(DB_ConnectionString))
                    {
                        try
                        {
                            //My SQL query to fetch data from db
                            using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM CLASSES where CLASSID=" + Class_Id))
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
                                            Class_Code.Text = row["CLASSCODE"].ToString();
                                            Class_Name.Text = row["CLASSNAME"].ToString();
                                            Teacher_Id.Text = row["TEACHERID"].ToString();
                                            Start_Date.Text = row["STARTDATE"].ToString();
                                            End_Date.Text = row["ENDDATE"].ToString();
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
            Response.Redirect("CreateClass.aspx");
        }
    }
}