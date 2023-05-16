<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Rentishaclone.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
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

        <div class="popular-ones">
            <div >
                1
            </div>
            <div>
                2
            </div>
            <div>
                3
            </div>
        </div>
    </div>

    <style>
        /*carousel*/

        .carousel{
            display:flex;
            justify-content:center;
            align-items:center;
            background-image:url("../Images/bg1.png");
            width:100%;
            height:90vh;
            background-color: teal;
            background-size:cover;
        }
        .caption{
            display:flex;
            flex-direction:column;
            text-align:center;
            color:white;
        }
        .caption p{
            color:white
        }
        .button{
            width: 15vw;
            height:5vh;
            margin-left:9vw;
            background-color:seagreen;
            color:white;
            border:none;
        }

        /*Popular properties*/

        .cards{
            display:flex;
            justify-content:center;
            width:100%;
            gap: 3vw;
            margin-top:5vh;
        }
        .inset1, .inset2, .inset3, .inset4{
            display:flex;
            justify-content:center;
            align-items:center;
            width:15vw;
            height:15vh;
            border-radius:3vh;
            background-color:lightgray;
        }
        .properties h1{
            height:8vh;
            text-align:center;
        }
    .popular-ones {
        display:flex;
        justify-content:center;
        align-items:center;
        width:100%;
        height:70vh;
        column-gap:5vw;
    }
    .popular-ones div{
        width:25vw;
        height:50vh;
        border-radius:2vh;
        background-color:lightgray;
    }
    </style>
</asp:Content>
