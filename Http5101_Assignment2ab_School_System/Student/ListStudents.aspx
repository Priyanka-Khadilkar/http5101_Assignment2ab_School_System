<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListStudents.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Student.ListStudents" %>

<asp:Content ID="students_list" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <h1 class="floatleft">Students</h1>
        <asp:Button ID="add_student_button"  runat="server" Text="Add Student" OnClientClick="window.location.href='CreateStudent.aspx'; return false;" CssClass="floatright btn btn-dark margintop"/>
    </div>

    <table id="table1" class="table table-hover table-striped" style="border-collapse:collapse" runat="server">
    <thead>
        <tr>
            <th scope="col">First Name</th>
            <th scope="col">Last Name</th>
            <th scope="col">Student Number</th>
            <th scope="col">Enrollment Date</th>
            <th scope="col">&nbsp;</th>
        </tr>
    </thead> 
    </table>



</asp:Content>
    