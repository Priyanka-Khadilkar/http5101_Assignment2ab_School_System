<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <asp:ImageButton ID="teachers" runat="server" ImageUrl="images/Teachers.png" OnClick="ImageButton1_Click" />
    <asp:ImageButton ID="students" runat="server" ImageUrl="images/Students.png" OnClick="ImageButton2_Click" />
    <asp:ImageButton ID="classes" runat="server" ImageUrl="images/Classes.png" OnClick="ImageButton3_Click" />

</asp:Content>
