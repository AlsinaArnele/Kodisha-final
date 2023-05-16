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
                <asp:FormView ID="FormView1" runat="server">
                    <ItemTemplate>
                        <div>

                            <div class="pop-details">
                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("Property_name") %>'></asp:Label>
                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("County") %>'></asp:Label>
                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </div>

                        </div>
                    </ItemTemplate>
                </asp:FormView>            
            <div>
                2
            </div>
            <div>
                3
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