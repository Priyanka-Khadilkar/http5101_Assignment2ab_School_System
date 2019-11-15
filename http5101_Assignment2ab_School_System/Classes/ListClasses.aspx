<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListClasses.aspx.cs" Inherits="Http5101_Assignment2ab_School_System.Class.ListClasses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <div class="class_container">
        <div>
            <h1 class="floatleft">Classes</h1>
            <asp:Button ID="add_class_button" OnClick="add_class_button_Click" CssClass="floatright btn btn-dark margintop" runat="server" Text="Add Class" />
        </div>
        <asp:GridView ID="classes_list_gridview" CssClass="table table-hover table-striped" runat="server" GridLines="None"
            AutoGenerateColumns="false" OnRowCommand="classes_list_gridview_RowCommand">
            <Columns>
                <asp:BoundField DataField="CLASSCODE" HeaderText="Class Code" />
                <asp:BoundField DataField="CLASSNAME" HeaderText="Class Name" />
                <asp:BoundField DataField="TEACHERID" HeaderText="Teacher Id" />

                <asp:BoundField DataField="STARTDATE" DataFormatString="{0:MM/dd/yyyy}"  HeaderText="Start Date" />
                <asp:BoundField DataField="FINISHDATE" DataFormatString="{0:MM/dd/yyyy}" HeaderText="End Date" />
                <asp:TemplateField ShowHeader="false">
                    <ItemTemplate>
                        <asp:Button ID="class_view_action" runat="server" CausesValidation="false" CssClass="btn btn-dark" CommandName="view_class"
                            Text="View" CommandArgument='<%# Eval("CLASSID") %>' />
                        <asp:Button ID="class_edit_action" runat="server" CausesValidation="false" CssClass="btn btn-dark" CommandName="edit_class"
                            Text="Edit" CommandArgument='<%# Eval("CLASSID") %>' />
                        <asp:Button ID="class_delete_action" runat="server" CausesValidation="false" CssClass="btn btn-dark" OnClientClick="return confirm('Are you sure want to delete the teacher?')"
                            CommandName="delete_class"
                            Text="Delete" CommandArgument='<%# Eval("CLASSID") %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
