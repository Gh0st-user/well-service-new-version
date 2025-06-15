<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="apply.aspx.cs" Inherits="E_library.files.html.apply" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        section{
/*            border: 2px solid red;*/
            margin: 120px 0px 0px 0px; 
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="container border py-3">
            <%--  SEARCHING PART STARTED HERE --%>
            <div class="row">
                <div class="col-12">
                    <div class="text-secondary">Services / Apply</div>
                </div>
            </div>
            <div class="row py-3">
                <div class="col-12">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" CssClass="ps-3 py-2" placeholder="Search your work here."></asp:TextBox>
                    <asp:Button ID="Button1" CssClass="py-2 px-3" runat="server" Text="Search" />
                </div>
            </div>
            <%--  SEARCHING PART ENDED HERE --%>
            <%--  WORKS PART START HERE --%>
            <div class="row">
                <%-- AADHAAR STARTS HERE --%>
                <div class="col-12 border py-3">
                    <h3>
                        AADHAAR
                    </h3>
                    <p class="text-secondary">
                        Lorem ipsum doller etc joker ghost.
                    </p>
                    <div class="row">
                        <div class="col">
                            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="r" Text="&nbsp;New Apply" />
                        </div>
                        <div class="col">
                            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="r" Text="&nbsp;Update Existing" />
                        </div>
                        <div class="col">
                            <asp:Button ID="Button2" runat="server" Text="Go" />
                        </div>
                    </div>
                </div>
                <%-- PAN STARTS HERE --%>
                <div class="col-12 border py-3">
                    <h3>PAN
                    </h3>
                    <p class="text-secondary">
                        Lorem ipsum doller etc joker ghost.
                    </p>
                    <div class="row">
                        <div class="col">
                            <asp:RadioButton ID="RadioButton3" runat="server" GroupName="r" Text="&nbsp;New Apply" />
                        </div>
                        <div class="col">
                            <asp:RadioButton ID="RadioButton4" runat="server" GroupName="r" Text="&nbsp;Update Existing" />
                        </div>
                        <div class="col">
                            <asp:Button ID="Button3" runat="server" Text="Go" />
                        </div>
                    </div>
                </div>
                <%-- VOTING STARTS HERE --%>
                <div class="col-12 border py-3">
                    <h3>VOTER ID
                    </h3>
                    <p class="text-secondary">
                        Lorem ipsum doller etc joker ghost.
                    </p>
                    <div class="row">
                        <div class="col">
                            <asp:RadioButton ID="RadioButton5" runat="server" GroupName="r" Text="&nbsp;New Apply" />
                        </div>
                        <div class="col">
                            <asp:RadioButton ID="RadioButton6" runat="server" GroupName="r" Text="&nbsp;Update Existing" />
                        </div>
                        <div class="col">
                            <asp:Button ID="Button4" runat="server" Text="Go" />
                        </div>
                    </div>
                </div>
                <%-- DOMICILE STARTS HERE --%>
                <div class="col-12 border py-3">
                    <h3>DOMICILE
                    </h3>
                    <p class="text-secondary">
                        Lorem ipsum doller etc joker ghost.
                    </p>
                    <div class="row">
                        <div class="col">
                            <asp:Button ID="Button5" runat="server" Text="Go" />
                        </div>
                    </div>
                </div>
                <%-- GAZETTE STARTS HERE --%>
                <div class="col-12 border py-3">
                    <h3>GAZETTE CERTIFICATE
                    </h3>
                    <p class="text-secondary">
                        Lorem ipsum doller etc joker ghost.
                    </p>
                    <div class="row">
                        <div class="col">
                            <asp:Button ID="Button6" runat="server" Text="Go" />
                        </div>
                    </div>
                </div>
            </div>
            <%--  WORKS PART ENDED HERE --%>
        </div>
    </section>
</asp:Content>
