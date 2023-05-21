<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ListingsUser.aspx.cs" Inherits="Rentishaclone.Pages.ListingsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style/Listings.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
<section>
    <div class="welcome-section">
        <h1>OUR LISTINGS</h1>
        <div class="filter-form">
            <form action="@Url.Action("Search")" method="get">
                <input type="search" name="search_string" placeholder="Enter County...">

                <div class="selects">
                    <select>
                        <option selected>Choose type</option>
                        <option value="1">Bedsitter</option>
                        <option value="">1 Bedrooom</option>
                        <option value="3">2 Bedroom</option>
                    </select>
                    <select>
                        <option selected>Choose type</option>
                        <option value="1">Bedsitter</option>
                        <option value="">1 Bedrooom</option>
                        <option value="3">2 Bedrooom</option>
                    </select>
                </div>
                <asp:Button ID="Button1" runat="server" Text="Filter" CssClass="buttons" />
            </form>
        </div>
    </div>
</section>

        <div  class="popular-ones" id="popular-ones">
            <asp:PlaceHolder ID="PlaceHolder1" runat="server">

                <!-- property goes here -->

            </asp:PlaceHolder>
        </div>

<script src="../Javascript/Autohide.js"></script> >
</asp:Content>
