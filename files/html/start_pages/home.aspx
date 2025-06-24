<%@ Page Title="" Language="C#" MasterPageFile="~/master_page/master_page.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="E_library.files.html.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>

section{
    padding-top: 120px; 
}


</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section>
    <%-- HERO SECTION START --%>
    <div class="container-fluid border py-5">
        <%--<h1 class="container py-5">Hero Section</h1>--%>
        <div class="container py-5">
            <h2>
                Hero Section Starts Here
            </h2>
            <p>
                Lorem ipsum joker fd and ipsum joker fd and ipsum joker fd and.
            </p>
            <input type="button" id="btn" value="Start" class="py-2 px-5 rounded-5 border-0 btn btn-primary"/>
        </div>
    </div>
    <%-- HERO SECTION END --%>
    <!-- OUR SERVICES START -->

    <div class=" services-sec pb-5 container">
        <div class="row py-5">
            <div class="col-12">
                <h2 align="center">
                    Our Services
                </h2>
            </div>
        </div>
        <div class="row gy-4">
            <div class="col-lg-3 mx-auto col-sm-5 border py-3 px-4">
                <h5>Documentation
                </h5>
                <p class="text-secondary">
                    Lorem ipsum joker fd and ipsum joker fd and ipsum joke
                </p>
            </div>

            <div class="col-lg-3 mx-auto col-sm-5 border py-3 px-4">
                <h5>Apply throught us
                </h5>
                <p class="text-secondary">
                    Lorem ipsum joker  ipsum joker fd and.
                </p>
            </div>

            <div class="col-lg-3 mx-auto col-sm-5 border py-3 px-4">
                <h5>Work Status
                </h5>
                <p class="text-secondary">
                    Lorem ipsum joker fd and ipsum joker fd and ipsum joker fd and.
                </p>
            </div>

            <div class="col-lg-3 mx-auto col-sm-5 border py-3 px-4">
                <h5>Customer Support
                </h5>
                <p class="text-secondary">
                    Lorem ipsum joker fd and ipsum joker fdr fd and.
                </p>
            </div>
        </div>
    </div>


    <!-- OUR SERVICES END -->
 
</section> 
</asp:Content>
