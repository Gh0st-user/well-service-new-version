<%@ Page Title="" Language="C#" MasterPageFile="~/master_page/master_page.Master" AutoEventWireup="true" CodeBehind="sign-up.aspx.cs" Inherits="E_library.files.html.sign_up" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>

section{
    padding-top: 120px;
}

.field_con{
    display: flex;
    flex-direction: column;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="container-fluid">
    <div class="container shadow-lg rounded-4 py-5 px-sm-5">
        <div class="row">
            <div class="col-12">
                <center>
                    <h2 class="m-0 py-3 mb-2">Sign-up
                    </h2>
                </center>
            </div>
        </div>
        <%--  --%>
        <div class="row">
            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <label for="TextBox1">
                    First Name : 
                </label>
                <asp:TextBox ID="TextBox1" runat="server" required="true"></asp:TextBox>
            </div>

            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <label for="TextBox2">
                    Middle Name : 
                </label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>

            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <label for="TextBox3">
                    Last Name : 
                </label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>

            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <label for="TextBox4">
                    Age : 
                </label>
                <asp:TextBox ID="TextBox4" runat="server" TextMode="Number" MaxLength="3"></asp:TextBox>
            </div>

            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <label for="TextBox5">
                    Mobile No.
                </label>
                <asp:TextBox ID="TextBox5" runat="server" TextMode="Number" MaxLength="10" required="true"></asp:TextBox>
            </div>

            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <label for="TextBox6">
                    Address : 
                </label>
                <asp:TextBox ID="TextBox6" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>

            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <%--<label for="ListBox1">
                    Select State : 
                </label>
                <asp:DropDownList runat="server" DataMember="option_1" Visible="False"></asp:DropDownList>--%>
            </div>

            <div class="col-lg-3 col-md-4 col-6 mt-3 field_con">
                <label for="TextBox7">
                    Ex : 
                </label>
                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            </div>
        </div>
        <%--  --%>
        <div class="row">
            <div class="col-md-3 ms-md-auto mt-3 field_con">
                <label for="TextBox8">
                    User Name :
                </label>
                <asp:TextBox ID="TextBox8" runat="server" required="true"></asp:TextBox>
            </div>

            <div class="col-md-3 mt-3 field_con">
                <label for="TextBox9">
                    Password :
                </label>
                <asp:TextBox ID="TextBox9" runat="server" TextMode="Password" required="true"></asp:TextBox>
            </div>

            <div class="col-md-3 me-auto mt-3 field_con">
                <label for="TextBox10">
                    Confirm Password :
                </label>
                <asp:TextBox ID="TextBox10" runat="server" TextMode="Password" required="true"></asp:TextBox>
            </div>
        </div>
        <%--  --%>
        <div class="row">
            <div class="col-md-3 mx-auto mt-5">
                <center>
                    <asp:Button ID="Button1" CssClass="btn btn-success" runat="server" Text="Submit" OnClick="Button1_Click" />
                </center>
            </div>
        </div>
    </div>
</section>

</asp:Content>
