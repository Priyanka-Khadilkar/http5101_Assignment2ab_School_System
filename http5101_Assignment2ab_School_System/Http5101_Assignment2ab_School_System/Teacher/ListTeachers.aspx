<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListTeachers.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Teacher.ListTeachers" %>

<asp:Content ID="teachers_list" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">
        <div>
            <h1 class="floatleft">Teachers</h1>
            <asp:Button ID="add_teacher_button" OnClick="add_teacher_button_Click" CssClass="floatright btn btn-dark margintop" runat="server" Text="Add Teacher" />
        </div>
        <asp:GridView ID="teachers_list_gridview" CssClass="table table-hover table-striped" runat="server" GridLines="None"
            AutoGenerateColumns="false" OnRowCommand="teachers_list_gridview_RowCommand">
            <Columns>
                <asp:BoundField DataField="TEACHERFNAME" HeaderText="First Name" />
                <asp:BoundField DataField="TEACHERLNAME" HeaderText="Last Name" />

                <asp:BoundField DataField="EMPLOYEENUMBER" HeaderText="Employee Number" />
                <asp:BoundField DataField="HIREDATE" DataFormatString="{0:MM/dd/yyyy}" HeaderText="Hiring Date" />
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <asp:Button ID="teacher_view_action" runat="server" CausesValidation="false" CssClass="btn btn-dark" CommandName="view_teacher"
                            Text="View" CommandArgument='<%# Eval("TEACHERID") %>' />
                        <asp:Button ID="teacher_edit_action" runat="server" CausesValidation="false" CssClass="btn btn-dark" CommandName="edit_teacher"
                            Text="Edit" CommandArgument='<%# Eval("TEACHERID") %>' />
                        <asp:Button ID="teacher_delete_action" runat="server" CausesValidation="false" CssClass="btn btn-dark" OnClientClick="return confirm('Are you sure want to delete the teacher?')"
                            CommandName="delete_teacher"
                            Text="Delete" CommandArgument='<%# Eval("TEACHERID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
