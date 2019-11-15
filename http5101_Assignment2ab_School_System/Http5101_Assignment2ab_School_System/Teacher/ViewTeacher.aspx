<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewTeacher.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Teacher.ViewTeacher" %>

<asp:Content ID="teacher_view" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h1>Teacher Details</h1>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">First Name :</label>
            <div class="col-sm-10">
                <asp:Label ID="teacher_firstname" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Last Name :</label>
            <div class="col-sm-10">
                <asp:Label ID="teacher_lastname" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Employee No. :</label>
            <div class="col-sm-10">
                <asp:Label ID="teacher_employee_no" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Hire Date :</label>
            <div class="col-sm-10">
                <asp:Label ID="teacher_hire_date" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Salary :</label>
            <div class="col-sm-10">
                <asp:Label ID="teacher_salary" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-offset-2 col-sm-10">
                <asp:Button CssClass="btn btn-dark" ID="back_btn" OnClick="back_btn_Click" runat="server" Text="Back" />
            </div>
        </div>
    </div>
</asp:Content>
