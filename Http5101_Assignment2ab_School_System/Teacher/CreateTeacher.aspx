<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateTeacher.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Teacher.CreateTeacher" %>

<asp:Content ID="teacher_add" ContentPlaceHolderID="MainContent" runat="server">
    <h1 id="page_title" runat="server">Create Teacher</h1>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2">First Name:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="teacher_firstname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="teacher_firstname" ForeColor="Red" ErrorMessage="Please Enter First Name."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Last Name:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="teacher_lastname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="teacher_lastname" ForeColor="Red" ErrorMessage="Please Enter Last Name."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Employee Number:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="teacher_employee_number" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="teacher_employee_number" ForeColor="Red" ErrorMessage="Please Enter Employee Number"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Hire Date:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="teacher_hire_date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="teacher_hire_date" ForeColor="Red" runat="server" ErrorMessage="Please Enter Hire Date."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Salary:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="teacher_salary" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="teacher_salary" ForeColor="Red" runat="server" ErrorMessage="Please Enter Salary."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button ID="btn_submit" CssClass="btn btn-dark" CausesValidation="true" runat="server" Text="Submit" />
                <asp:Button ID="btn_cancel" CssClass="btn btn-dark" CausesValidation="false" OnClick="Btn_Cancel_Click" runat="server" Text="Cancel" />
            </div>
        </div>
    </div>
</asp:Content>
