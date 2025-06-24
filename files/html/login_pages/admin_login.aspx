<%@ Page Title="" Language="C#" MasterPageFile="~/master_page/master_page.Master" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="E_library.files.html.admin_login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

section{
    padding-top: 120px;
}

</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section>
    <div class="container shadow-lg rounded-4 py-5">
        <center>
            <h1>Admin Login
            </h1>
            <br />
            <div>
                <asp:Label ID="Label1" runat="server" Text="User ID : "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Button1_Click" />
                <br />
                <br />
                <a href="~/files/html/login_pages/login.aspx" runat="server">User login</a>
            </div>
        </center>
    </div>
</section>

</asp:Content>
