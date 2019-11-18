<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewClass.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Class.ViewClass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="container">
        <h1>Student Details</h1>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Class Code :</label>
            <div class="col-sm-10">
                <asp:Label ID="Class_code" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Class Name :</label>
            <div class="col-sm-10">
                <asp:Label ID="Class_Name" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Teacher Id :</label>
            <div class="col-sm-10">
                <asp:Label ID="Teacher_Id" runat="server"></asp:Label>
            </div>
        </div>
        <div class="form-group row">
            <label class="col-sm-2 col-form-label">Start Date :</label>
            <div class="col-sm-10">
                <asp:Label ID="Start_Date" runat="server"></asp:Label>
            </div>
        </div>
         <div class="form-group row">
            <label class="col-sm-2 col-form-label">End Date :</label>
            <div class="col-sm-10">
                <asp:Label ID="End_Date" runat="server"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>
