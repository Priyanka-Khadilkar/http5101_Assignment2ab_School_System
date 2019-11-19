<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewStudent.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Student.ViewStudent" %>
<asp:Content ID="student_view" ContentPlaceHolderID="MainContent" runat="server">

    <!-- 
        Note: this page is intentionally styled poorly.
        Work with your group members to understand how it works and improve it!
    -->
    <div class="container">
            <h1>Student Details: </h1>
            <div id="student" runat="server"></div>
            <div class="main-container">
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">First Name :</label>
                    <div class="col-sm-10">
                        <span id="student_fname" runat="server"></span>
                    </div>
                </div>

                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Last Name :</label>
                    <div class="col-sm-10">
                        <span id="student_lname" runat="server"></span>
                    </div>   
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Student Number :</label>
                    <div class="col-sm-10">
                        <span id="student_number" runat="server"></span>
                    </div>   
                </div>
                <div class="form-group row">
                    <label class="col-sm-2 col-form-label">Enrolment Date :</label>
                    <div class="col-sm-10">
                        <span id="enrolment_date" runat="server"></span>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-sm-offset-2 col-sm-10">
                        <input type="button" value="Back" onclick="location.href='ListStudents.aspx'" class="btn btn-dark">
                    </div>
                </div>
            </div>
    </div>
</asp:Content>
