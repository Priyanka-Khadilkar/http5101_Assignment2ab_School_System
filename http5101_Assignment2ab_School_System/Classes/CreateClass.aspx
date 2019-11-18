<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CreateClass.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Class.CreateClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h1 id="page_title" runat="server">Create Class</h1>
    <div class="form-horizontal">
        <div class="form-group">
            <label class="control-label col-sm-2">CLass Code:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="Class_Code" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Class_Code" ForeColor="Red" ErrorMessage="Please Enter Class Code."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Class Name:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="Class_Name" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Class_Name" ForeColor="Red" ErrorMessage="Please Enter Class Name."></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Teacher Id:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="Teacher_Id" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Teacher_Id" ForeColor="Red" ErrorMessage="Please Enter Teacher Id"></asp:RequiredFieldValidator>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label col-sm-2">Start Date:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="Start_Date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="Start_Date" ForeColor="Red" runat="server" ErrorMessage="Please Enter Start Date."></asp:RequiredFieldValidator>
            </div>
        </div>
                <div class="form-group">
            <label class="control-label col-sm-2">End Date:</label>
            <div class="col-sm-10">
                <asp:TextBox ID="End_Date" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ControlToValidate="End_Date" ForeColor="Red" runat="server" ErrorMessage="Please Enter End Date."></asp:RequiredFieldValidator>
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
