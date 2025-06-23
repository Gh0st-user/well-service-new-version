<%@ Page Title="" Language="C#" MasterPageFile="~/master_page.Master" AutoEventWireup="true" CodeBehind="pan-card.aspx.cs" Inherits="E_library.files.html.pan_card" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
/* CONTAINER START */
/* ========================== */

.container_2{
    margin-top: 120px;
    padding: 0px 100px;
    display: flex;
    align-items: start;
    justify-content: space-between;
}

/* FORM START */

.form{
    width: 40%;
    margin-right: 10px;
}

.form .item{
    /* margin: 0px 0px 20px 0px; */
    border: 1px solid var(--white);
    background-color: var(--black);
    padding: 10px;
    color: var(--white);
    box-shadow: var(--shadow);
}

#select {
    padding: 10px;
    appearance: none;
}

/* FORM END */
/* DOCUMENTATION START */

.container_2 .answer{
    width: 60%;
    margin-left: 10px;
}

.container_2 .answer .header,
.container_2 .answer .item .inner{
    display: grid;
    grid-template-columns: 1fr 2fr;
}

.container_2 .answer .header div,
.container_2 .answer .item .inner div{
    padding: 10px;
    border: 2px solid black;
}

.container_2 .answer .item{
    display: none;
    /* border: 2px solid red; */
}

.container_2 .answer .item .inner{
    display: none;
}

/* DOCUMENTATION END */
/* ========================== */
/* container_2 END */
/* MEDIA START */

@media (max-width:1410px) {
    .container_2{
        padding: 0px 50px;
    }
    #back{
        padding: 120px 0px 0px 50px;
    }
    header{
        padding: 20px 50px;
    }
}

@media (max-width:1012px) {
    .container_2{
        padding: 0px 20px;
    }
    #back{
        padding: 120px 0px 0px 20px;
    }
    header{
        padding: 20px 20px;
    }

}

@media(max-width: 951px){
    #select{
        margin-top: 20px;
    }
}

@media(max-width:740px){
    .container_2{
        flex-wrap: wrap;
    }
    .container_2 .form,
    .container_2 .answer{
        width: 100%;
        margin: 0px;
    }

    .container_2 #select{
        margin: 0;
    }
}

@media(max-width: 401px){
    .container_2 #select{
        margin-top: 10px;
    }
}

/* MEDIA END */
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!-- BACK BUTTON START -->

<%--<div id="back" class="container-fluid">
    <a href="index.aspx">Back</a>
</div>--%>

<!-- BACK BUTTON END -->
<!-- CONTAINER START-->

<div class="container_2">
    <!-- FORM START -->
    <div class="form">
        <div class="item">
            <h2 style="color: var(--white);">
                Pan card works
            </h2>
        </div>
        <div class="item">
            <label for="select" style="font-weight: 900;">Select Type : </label>
            <select id="select">
                <option value="--SELECT TYPE--" selected>--Select Type--</option>
                <option id="op-1" value="0" >INDIVIDUAL</option>
                <option id="op-2" value="1">ASSOCIATION OF PERSONS</option>
                <option id="op-3" value="2">BODY OF INDIVIDUAL</option>
                <option id="op-4" value="3">COMPANY</option>
                <option id="op-5" value="4">TRUST</option>
                <option id="op-6" value="5">LIMITED LIABILITY PARTNERSHIP</option>
                <option id="op-7" value="6">FIRM</option>
                <option id="op-8" value="7">GOVERNMENT</option>
                <option id="op-9" value="8">HINDU UNDIVIDED FAMILY</option>
                <option id="op-10" value="9">ARTIFICIAL JURIDICAL PERSON</option>
                <option id="op-11" value="10">LOCAL AUTHORITY</option>
            </select>
        </div>
        <div class="item">
            <div style="display: flex;">
                <input type="checkbox" id="new">
                <label for="new">
                    &nbsp;&nbsp;New Application
                </label>
            </div>
            <br>
            <div style="display: flex;">
                <input type="checkbox" id="name">
                <label for="name">
                    &nbsp;&nbsp;Name
                </label>
            </div>
            <br>
            <div style="display: flex;">
                <input type="checkbox" id="father" disabled>
                <label for="father">
                    &nbsp;&nbsp;Father Name / Mother Name
                </label>
            </div>
            <br>
            <div style="display: flex;">
                <input type="checkbox" id="dob">
                <label for="dob">
                    &nbsp;&nbsp;D.O.B / Issue Date
                </label>
            </div>
        </div>
        <!-- SUBMIT BUTTON START -->
        <div class="item">
            <input id="submit-btn" style="padding: 10px 15px;font-weight: 900;border: none;cursor: pointer;" type="button"
            value="Submit">
        </div>
        <!-- SUBMIT BUTTON END -->
    </div>
    <!-- FORM END -->
    <!-- DOCUMENTATION START -->
    <div class="answer">
        <div style="color: var(--white);background-color: var(--black);padding: 10px 15px 10px 15px;border: 1px solid var(--white);">
            <h2>
                Documentation
            </h2>
        </div>
        <!-- HEADER -->
        <div class="header">
            <div>WORK</div>
            <div>REQUIREMENTS</div>
        </div>
        <!-- INDIVIDUAL (1)-->
        <div class="individual item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">
                    <div class="container">
                        <div class="row">
                            <div class="col-12">
                                Phtot
                            </div>
                            <div class="col-12">
                                Signature
                            </div>
                            <div class="col-12">
                                Addhaar Card
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">1</div>
            </div>
            <!-- FATHER -->
            <div class="father-inner inner">
                <div class="work">FATHER</div>
                <div class="requirements">1</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">1</div>
            </div>
        </div>
        <!-- ASSOCIATION OF PERSON (2) -->
        <div class="assosiation item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">2</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">2</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">2</div>
            </div>
        </div>
        <!-- BODY OF INDIVIDUAL (3) -->
        <div class="body item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">3</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">3</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">3</div>
            </div>
        </div>
        <!-- COMPANY (4)-->
        <div class="company item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">4</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">4</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">4</div>
            </div>
        </div>
        <!-- TRUST (5)-->
        <div class="trust item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">5</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">5</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">5</div>
            </div>
        </div>
        <!-- LLP (6)-->
        <div class="llp item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">6</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">6</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">6</div>
            </div>
        </div>
        <!-- FIRM (7)-->
        <div class="firm item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">7</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">7</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">7</div>
            </div>
        </div>
        <!-- GOVERNMENT (8)-->
        <div class="gov item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">8</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">8</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">8</div>
            </div>
        </div>
        <!-- HUF (9)-->
        <div class="huf item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">9</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">9</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">9</div>
            </div>
        </div>
        <!-- AJP (10)-->
        <div class="ajp item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">10</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">10</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">10</div>
            </div>
        </div>
        <!-- LOCAL AUTHORITY (11)-->
        <div class="local item">
            <!-- NEW APPLY -->
            <div class="new-inner inner">
                <div class="work">NEW APPLY</div>
                <div class="requirements">11</div>
            </div>
            <!-- NAME -->
            <div class="name-inner inner">
                <div class="work">NAME</div>
                <div class="requirements">11</div>
            </div>
            <!-- DOB -->
            <div class="dob-inner inner">
                <div class="work">DOB</div>
                <div class="requirements">11</div>
            </div>
        </div>
    </div>
    <!-- DOCUMENTATION END -->
</div>

<!-- CONTAINER END -->

<script src="../../../Scripts/jquery-3.7.0.js"></script>
<script>
    
    var Newapply = document.getElementById("new");
    var Name = document.getElementById("name");
    var Father = document.getElementById("father");
    var Dob = document.getElementById("dob");


    $(document).ready(function(){
        // CONDITION FOR FATHER INPUT BUTTON

        $('#select').on('change', function() {
            selectedValue = $(this).val();    
            if(this.value == "0"){
                $("#father").removeAttr("disabled");
            }
            else{
                $("#father").attr("disabled", "true");
            }
        });
        // CONDITION FOR SUBMIT BUTTON

        $("#submit-btn").click(function(){
            // SELECT ARRY

            var select_arry = [false, false, false, false, false, false, false, false, false, false, false];
            // INNER ARRY

            var inner_arry = [false, false, false, false]
            // DICT FOR 1,2,3,4,5,6,7,8,9,10,11
            
            var select_dict = {
                0 : "individual",
                1 : "assosiation",
                2 : "body",
                3 : "company",
                4 : "trust",
                5 : "llp",
                6 : "firm",
                7 : "gov",
                8 : "huf",
                9 : "ajp",
                10 : "local",
            };
            // DICT FOR NEW APPLY, NAME, FATHER, DOB

            var inner_dict = {
                0 : "new-inner",
                1 : "name-inner",
                2 : "father-inner", 
                3 : "dob-inner"
            }
            
            // CHECK UNCHECK SUB INPUTS OF SELECT
            if(Newapply.checked){
                inner_arry[0] = true
            }
            if(Newapply.checked == false){
                inner_arry[0] = false;
            }
            if(Name.checked){
                inner_arry[1] = true
            }
            if(Name.checked == false){
                inner_arry[1] = false;
            }
            if(Father.checked){
                inner_arry[2] = true
            }
            if(Father.checked == false){
                inner_arry[2] = false;
            }
            if(Dob.checked){
                inner_arry[3] = true
            }
            if(Dob.checked == false){
                inner_arry[3] = false;
            }

            // 
            var for_select_arry = parseInt(selectedValue);
            select_arry[for_select_arry] = true; 


            for(var i = 0; i <= 10; i++){
                if(select_arry[i] == true){
                    $("." + select_dict[i]).css("display", "block")
                    for(var j = 0; j <= 3; j++){
                        if(inner_arry[j] == true){
                            $("." + inner_dict[j]).css("display", "grid")
                        }
                        if(inner_arry[j] == false){
                            $("." + inner_dict[j]).css("display", "none")
                        }
                        
                    }
                }
                if(select_arry[i] == false){
                    $("." + select_dict[i]).css("display", "none")
                }
            }
        });
    });

</script>
</asp:Content>
