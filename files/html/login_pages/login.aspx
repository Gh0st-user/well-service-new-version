<%@ Page Title="" Language="C#" MasterPageFile="~/master_page/master_page.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="E_library.files.html.login" %>
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
        <div class="row">
            <div class="col-md-6">
                <center>
                <div class="row">
                    <div class="col-12 pb-5">
                        <h2>Login
                        </h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12 py-2">
                        <asp:Label ID="Label1" runat="server" Text="User ID : "></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-12 py-2">
                        <asp:Label ID="Label2" runat="server" Text="Password : "></asp:Label>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                        <br />
                    </div>
                    <div class="col-12 pt-5">
                        <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Login" OnClick="Submit_btn" />
                        <a href="~/files/html/login_pages/admin_login.aspx" class="btn btn-success" runat="server">Admin login</a>
                    </div>
                </div>
                </center>
            </div>
            <div class="col-md-6 d-none d-md-block shadow" >
                <asp:Image ID="Image1" CssClass="img-fluid" runat="server" ImageUrl="~/files/img/aadhaar.png" />
            </div>
        </div>
    </div>
</section>

</asp:Content>
