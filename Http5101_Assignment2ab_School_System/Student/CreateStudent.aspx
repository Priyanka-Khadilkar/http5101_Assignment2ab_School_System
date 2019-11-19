
<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateStudent.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Student.CreateStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 id="page_title" runat="server">Create Student</h1>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2">First Name:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="student_firstname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="student_firstname" ForeColor="Red" ErrorMessage="Please Enter First Name."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Last Name:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="student_lastname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="student_lastname" ForeColor="Red" ErrorMessage="Please Enter Last Name."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Student Number:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="student_number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="student_number" ForeColor="Red" ErrorMessage="Please Enter Student Number"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Enrolment Date:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="student_enrolment_date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="student_enrolment_date" ForeColor="Red" runat="server" ErrorMessage="Please Enter enrolment Date."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="btn_submit" CssClass="btn btn-dark" CausesValidation="true"  runat="server" Text="Submit" />
                <asp:Button ID="btn_cancel" CssClass="btn btn-dark" CausesValidation="false" OnClientClick="window.location.href='ListStudents.aspx'; return false;" runat="server"   Text="Cancel" />
            </div>
        </div>
    </div>
</asp:Content>
