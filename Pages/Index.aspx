<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Rentishaclone.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <link href="../Style/Home.css" rel="stylesheet" />
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

        <div class="popular-ones">

            <div class="pop-details">
                 <asp:Image ID="imgProperty" runat="server" />
                 <div style="display:flex;justify-content:center;gap:12vw;height:4vh;"><asp:Label ID="lblPrice" runat="server" CssClass="details-lables" ForeColor="SeaGreen"></asp:Label><asp:Label ID="lblstatus" runat="server" CssClass="details-lables" ForeColor="SeaGreen"></asp:Label></div>
                 <asp:Label ID="lblname" runat="server" CssClass="details-lables"></asp:Label>
                 <asp:Label ID="lblCounty" runat="server" CssClass="details-lables" ForeColor="Silver"></asp:Label>
                 
            </div>

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
</asp:Content>