<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="E_library.files.html.login" %>
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
            <h1>Login
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
                <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" onclick="Submit_btn"/>
                <br />
                <br />
                <a href="admin_login.aspx" runat="server">Admin login</a>
            </div>
        </center>
    </div>
</section>

</asp:Content>
