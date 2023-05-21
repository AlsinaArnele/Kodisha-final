<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ListingsUser.aspx.cs" Inherits="Rentishaclone.Pages.ListingsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="../Style/Listings.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" integrity="sha512-bUv/8vMa5cG+BnL3C8MSJmZvjBGiLkVklUAbK07D9XQY/crq/0CoUGVTHTG46XZezrAXHwKdqKcJ+gCzVoK5Cg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
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
    <style>
.details-lables {
    font-size: 1.5vw;
    font-weight: 400;
    left: 0;
}

.price {
    font-size: 1.5vw;
    margin-left: 1vw;
    font-weight: 400;
    color: dimgrey;
}

.location {
    font-size: 1vw;
    margin-left: 1vw;
    color: dimgrey;
    font-weight: 300;
}

.name {
    text-align:left;
    font-size: 1.25vw;
    margin-left: 1vw;
    color: dimgrey;
    font-weight: 400;
}
.rname{
    text-align:right;
     font-size: 1.25vw;
    margin-left: 1vw;
    color: dimgrey;
    font-weight: 400;
    margin-right:1vw;
}
.status{
    text-align:right;
    margin-right:1vw;
}
    </style>

</asp:Content>
