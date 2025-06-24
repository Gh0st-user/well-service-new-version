<%@ Page Title="" Language="C#" MasterPageFile="~/master_page/master_page.Master" AutoEventWireup="true" CodeBehind="voting.aspx.cs" Inherits="E_library.files.html.voting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
/* CONTAINER START */

.container_2{
    width: 100%;
    padding: 120px 100px 0px;
    display: flex;
    align-items: start;
    justify-content: space-between;
}

/* QUESTION START */

.container_2 .question{
    width: 30%;
    margin-right: 10px;
}

.container_2 .question .item{
    padding: 10px;
    background-color: var(--black);
    color: var(--white);
    box-shadow: var(--shadow);
    border: 1px solid var(--white);
    /* margin: 10px 0px 0px 0px ; */
}

#submit-btn{
    background-color: var(--white);
    color: var(--black-2);
    border: none;
}

/* QUESTION END */
/* ANSWER START */

.container_2 .answer{
    width: 70%;
    margin-left: 10px;
}

.container_2 .answer h3{
    background-color: var(--black);
    color: var(--white);
    margin: 0px 0px 10px 0px; 
    padding: 10px;
    box-shadow: var(--shadow);
}


.container_2 .answer .item,
.container_2 .answer .header{
    width: 100%;
    display: grid;
    grid-template-columns: 1fr 3fr;
}

.container_2 .answer .item div,
.container_2 .answer .header div{
    padding: 10px;
    border: 2px solid var(--black-2);
}

.container_2 .answer .item{
    display: none;
}

/* ANSWER END */
/* container_2 END */
/* Media start */

@media(max-width: 1100px){

    .container_2{
        padding: 0px 50px;
    }

    #back{
        margin-left: 50px;        
    }
}


/* D1FC-2476 */

@media(max-width: 800px){

    .container_2{
        padding: 0px 20px;
        flex-wrap: wrap;
    }

    .container_2 .question{
        width: 100%;
        margin: 0px;
    }

    .container_2 .answer{
        width: 100%;
        margin: 0px;
    }

    #back{
        margin-left: 20px;        
    }
}

/* Media end */
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- CONTAINER START-->
<div class="container_2">
    <!-- FORM START -->
    <div class="question">
        <div class="item" style="display: flex;justify-content: space-between;">
            <h3>Voting card works</h3>
        </div>
        <div class="item">
            <span style="display: flex; margin-top: 10px;">
                <input id="new_apply" type="checkbox" style="margin-right: 10px;">
                <label for="new_apply">
                    New Apply
                </label>
            </span>
            <!--  -->
            <div style="margin-top: 10px;">
                <label>
                    -----  Updates  -----
                </label>
            </div>
            <!--  -->
            <span style="display: flex; margin-top: 10px;">
                <input id="name_correction" type="checkbox" style="margin-right: 10px;">
                <label for="name_correction">
                    Name Correction
                </label>
            </span>
            <!--  -->
            <span style="display: flex; margin-top: 10px;">
                <input id="dob" type="checkbox" style="margin-right: 10px;">
                <label for="dob">
                    DOB
                </label>
            </span>
            <!--  -->
            <span style="display: flex; margin-top: 10px;">
                <input id="family_details" type="checkbox" style="margin-right: 10px;">
                <label for="family_details">
                    Family Details
                </label>
            </span>
            <!--  -->
            <span style="display: flex; margin-top: 10px;">
                <input id="address" type="checkbox" style="margin-right: 10px;">
                <label for="address">
                    Address
                </label>
            </span>
            <!--  -->
            <span style="display: flex; margin-top: 10px;">
                <input id="mobile_no" type="checkbox" style="margin-right: 10px;">
                <label for="mobile_no">
                    Mobile
                </label>
            </span>
            <!--  -->
            <span style="display: flex; margin-top: 10px;">
                <input id="state" type="checkbox" style="margin-right: 10px;">
                <label for="state">
                    State Change
                </label>
            </span>
            <!--  -->
            <%--  --%>
            <span style="display: flex; margin-top: 10px;">
                <input id="photo" type="checkbox" style="margin-right: 10px;">
                <label for="new_apply">
                    Photo change
                </label>
            </span>
        </div>
        <div class="item">
            <input type="button" id="submit-btn" style="padding: 10px 15px;font-weight: 900;cursor: pointer;" value="Submit">
        </div>
    </div>
    <!-- FORM END -->
    <!-- ANSWER START -->
    <div class="answer">
        <h3>Documentation</h3>
        <!-- HEADING START-->
        <div class="header">
            <div class="work">WORK</div>
            <div class="requirements">REQUIREMENTS</div>
        </div>
        <!-- HEADIND END -->
        <!-- NEW APPLY START -->
        <div class="new-inner item">
            <div class="work">NEW APPLY</div>
            <div class="requirements">1</div>
        </div>
        <!-- NAME CORRECTION START -->
        <div class="name-inner item">
            <div class="work">NAME</div>
            <div class="requirements">2</div>
        </div>
        <!-- DOB START -->
        <div class="dob-inner item">
            <div class="work">DOB</div>
            <div class="requirements">3</div>
        </div>
        <!-- FAMILY START -->
        <div class="family-inner item">
            <div class="work">FAMILY DETAIL</div>
            <div class="requirements">4</div>
        </div>
        <!-- ADDRESS START -->
        <div class="address-inner item">
            <div class="work">ADDRESS CHANGE</div>
            <div class="requirements">5</div>
        </div>
        <!-- MOBILE START -->
        <div class="mobile-inner item">
            <div class="work">MOBILE NO.</div>
            <div class="requirements">6</div>
        </div>
        <!-- STATE START -->
        <div class="state-inner item">
            <div class="work">STATE CHANGE</div>
            <div class="requirements">7</div>
        </div>
        <!-- PHOTO START -->
        <div class="photo-inner item">
            <div class="work">PHOTO</div>
            <div class="requirements">8</div>
        </div>
    </div>
    <!-- ANSWER END -->
</div>

<!-- Container End-->
<script src="../../../Scripts/jquery-3.7.0.js"></script>
<script>
    $(document).ready(function(){
        var new_aply = document.getElementById("new_apply");
        var name_correction = document.getElementById("name_correction");
        var dob = document.getElementById("dob");
        var family_details = document.getElementById("family_details");
        var address = document.getElementById("address");
        var mobile_no = document.getElementById("mobile_no");
        var state = document.getElementById("state");
        var photo = document.getElementById("photo");

        var input_arry = [new_aply, name_correction, dob, family_details, address, mobile_no, state, photo];
        var arry = [false, false, false, false, false, false, false, false, false];
        var dict = {
            0 : "new-inner",
            1 : "name-inner",
            2 : "dob-inner",
            3 : "family-inner",
            4 : "address-inner",
            5 : "mobile-inner",
            6: "state-inner",
            7: "photo-inner"
        };
        // SUBMIT BTN ONCLICK EVENT
        $("#submit-btn").click(function () {
            for(var i = 0; i <= 7; i++){
                if(input_arry[i].checked){
                    $("." + dict[i]).css("display", "grid");
                }   
                else if(input_arry[i].checked == false){
                    $("." + dict[i]).css("display", "none");
                }
            }
        });
    });
</script>
</asp:Content>
