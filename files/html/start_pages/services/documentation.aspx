<%@ Page Title="" Language="C#" MasterPageFile="~/master_page/master_page.Master" AutoEventWireup="true" CodeBehind="documentation.aspx.cs" Inherits="E_library.files.html.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

#container a{
    background-color: indianred;
    color: var(--black);
    text-decoration: none;
}

#container{
    padding-top: 130px;
}

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="container" class="container-fluid">
        <%-- SEARCHING SECTION START --%>
        <div class="container border py-3">
            <div class="row ">
                <div class="col-12">
                    <div class="text-secondary">Services / Documentation</div>
                </div>
            </div>
            <div class="row py-3">
                <div class="col-12">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="Search" CssClass="ps-3 py-2" placeholder="Search your work here."></asp:TextBox>
                    <asp:Button ID="Button1" CssClass="py-2 px-3" runat="server" Text="Search" />
                </div>
            </div>
        </div>
        <%-- SEARCHING SECTION END --%>
        <div class="container">
            <div class="row">
                <%-- 1 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="#">
                        <center>
                            <h4>AADHAAR
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
                <%-- 2 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="tasks/pan-card.aspx">
                        <center>
                            <h4>PAN
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
                <%-- 3 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="tasks/voting.aspx">
                        <center>
                            <h4>VOTER ID
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
                <%-- 4 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="#">
                        <center>
                            <h4>DOMICILE
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
            </div>
            <div class="row">
                <%-- 5 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="tasks/gazette.aspx">
                        <center>
                            <h4>GAZETTE CERTIFICATE
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
                <%-- 6 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="#">
                        <center>
                            <h4>FOOD LICENSE
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
                <%-- 7 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="#">
                        <center>
                            <h4>GUMASTA
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
                <%-- 8 --%>
                <div class="col-md-3 col-6 py-3 border">
                    <a href="#">
                        <center>
                            <h4>UDYAM
                            </h4>
                            <p class="text-secondary">
                                Aadhaar is the identity proof not the Birth and Citizenship proof.
                            </p>
                        </center>
                    </a>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
