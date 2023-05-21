<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Rentishaclone.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="carousel">
        <div class="caption">
            <h1>Find Your Dreamhouse In A Go.</h1>
            <p>Your ultimate house hunting assistant.</p>
            <asp:Button ID="Button1" runat="server" Text="View Property." CssClass="button" />
        </div>
    </div>

    <div class="properties">
        <div class="cards">
            <div class="inset1">
                <h3>Properties</h3>
            </div>
            <div class="inset2">
               <h3> Houses for Rent</h3>
            </div>
            <div class="inset3">
               <h3> Houses for Sale</h3>
            </div>
            <div class="inset4">
               <h3> FAQ's</h3>
            </div>
        </div>

        <h1>Popular Listings</h1>

        <div  class="popular-ones" id="popular-ones">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server">

                <!-- property goes here -->

            </asp:PlaceHolder>
        </div>

        <div style="display:flex;justify-content:center;">
            <asp:Button ID="Button2" runat="server" Text="View all properties." CssClass="button" />
        </div>
    </div>
    <div class="middle">
        <h1>We Reduce The Search Stress for You.</h1>
        <h2>About Us</h2>
    </div>
    <div class="About-section">
        <div class="left">
            <div class="about-image">

            </div>
        </div>
        <div class="right">
            <div>
                <i class="material-icons">home</i>  <h3>Reliability</h3>
            </div>
            <div>
               <i class="material-icons">person</i>  <h3>Safety-oriented</h3>
            </div>
            <div>
                <i class="material-icons">contact_mail</i>  <h3>Customer support</h3>
            </div>
            <div>
                <i class="material-icons">attach_money</i>  <h3>Pocket-friendly</h3>
            </div>
        </div>
    </div>

    <style>
    /*carousel*/

.carousel {
    display: flex;
    justify-content: center;
    align-items: center;
    background-image: url("../Images/bg1.png");
    width: 100%;
    height: 90vh;
    background-color: teal;
    background-size: cover;
}

.caption {
    display: flex;
    flex-direction: column;
    text-align: center;
    color: white;
}

    .caption p {
        color: white
    }

.button {
    width: 17vw;
    height: 5vh;
    margin-left: 9vw;
    background-color: seagreen;
    color: white;
    border: none;
    transition:transform .6s, color .6s, background-color .6s;
}
.button:hover{
    transform:scale(.95);
    background-color:lightgray;
    color:seagreen;
}

/*Popular properties*/

.cards {
    display: flex;
    justify-content: center;
    width: 100%;
    gap: 3vw;
    margin-top: 5vh;
}

.inset1, .inset2, .inset3, .inset4 {
    display: flex;
    justify-content: center;
    align-items: center;
    width: 15vw;
    height: 15vh;
    border-radius: 3vh;
    background-color: lightgray;
}
.button {
    border: none;
    width: 20vw;
    height: 5vh;
    background-color: black;
    color: white;
    margin-top: 3vh;
    border-radius: 2vw;
    margin-left: 1.5vw;
    transition: transform .4s, color .4s, background-color .4s;
}

.middle{
    display:flex;
    flex-direction:column;
    gap:5vh;
    width:100%;
    height:20vh;
}
h1 {
    height: 8vh;
    margin-top:4vh;
    text-align: center;
}
h2{
    margin-top:5vh;
    font-weight:400;
    text-align:center;
}
.popular-ones {
display: flex;
flex-wrap:wrap;
justify-content: left;
width: 90vw;
margin-left:5vw;
height: auto;
gap: 5vw;
}

.popular-ones div {
    width: 25vw;
    height: 50vh;
    border-radius: 1vh;
    background-color:blue;
}
.pop-image{
    width:auto;
    height:25vh;
}
.pop-details{
    display:flex;
    justify-content:left;
    flex-direction:column;
    width:25vw;
    height:25vh;
    overflow:hidden;
}
.details-lables{
    font-size:1.5vw;
    font-weight:400;
    margin-bottom:2vh;
}

.About-section {
    display: flex;
    width: 100%;
    height: 80vh;
    justify-content: center;
    margin-top: 5vh;
    gap: 5vw;
}

.About-section .left{
    display:flex;
    flex-direction:column;
    width:30vw;
    height:70vh;
    border:1px solid black;
    margin-top:5vh;
}
.About-section .left .about-image {
    width: 30vw;
    height: 70vh;
    background-image: url('../images/house1.jpg');
    background-size: cover;
}

.About-section .right {
    width: 40vw;
    height: 80vh;
    display:flex;
    flex-direction:column;
    gap:5vh;
    align-items:center;
}

.About-section .right div {
    display:flex;
    justify-content:left;
    padding-left:2vw;
    align-items:center;
    width: 40vw;
    height: 16vh;
    border-radius: 2vh;
}
h3{
    margin-left:1vw;
    font-size:1.5vw;
    padding-top:1.5vh;
}
    </style>
</asp:Content>