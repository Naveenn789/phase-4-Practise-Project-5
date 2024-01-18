<%@ Page Title="" Language="C#" MasterPageFile="~/OurSite.Master" AutoEventWireup="true" CodeBehind="Display.aspx.cs" Inherits="WebAppAzure.Display" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <table class="w-100">
    <tr>
        <td><h1>Display</h1></td>
    </tr>
    <tr>
        <td>
            
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SchoolDbConnectionString %>" ProviderName="<%$ ConnectionStrings:SchoolDbConnectionString.ProviderName %>" SelectCommand="SELECT [EmployeeId], [Name], [Email], [Rating] FROM [FeedbackForm]"></asp:SqlDataSource>
            
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
