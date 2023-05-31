<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Rentishaclone.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/index.css" rel="stylesheet" runat="server"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="wrapper">
        <div class="carousel1">
        <div class="caption">
            <div class="details">
                <h1>Find Your <br />Dreamhouse <br />In A Go.</h1>
            </div>
            <div class="details2">
                <p>Your ultimate house hunting assistant.</p>
            </div>
            <div class="details3">
                <asp:Button ID="Button1" runat="server" Text="View Property." CssClass="button" />
            </div>
        </div>
        </div>

    <div class="carousel2">
        
    </div>
    </div>

    <!--POPULAR LISTINGS-->
    <div class="top-three">
        <h1>Popular Listings</h1>
        <div  class="popular-ones" id="popular-ones">
            <div class="leftmost">
                <asp:Image ID="Image2" runat="server" CssClass="popimage" />
                
                    <asp:Label ID="status2" runat="server" Text="Price" CssClass="poplabel"></asp:Label>
                    <asp:Label ID="price2" runat="server" Text="Price" CssClass="poplabel"></asp:Label>
                    <table>
                        <tr>
                            <td> <i class="material-icons">home</i>Category</td>
                            <td> <i class="material-icons">home</i>Bedrooms</td>
                            <td> <i class="material-icons">home</i>Bathrooms</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="category2" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="bed2" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="bath2" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="location2" runat="server" Text="Label" CssClass="poplabel"></asp:Label>
                <div style="height:5vh;display:flex;flex-direction:row;margin-left:unset;">
                    <asp:Button ID="Button7" runat="server" Text="Button" CssClass="button2" />
                    <asp:Button ID="Button8" runat="server" Text="Button" CssClass="button2" />
                </div>
            </div>
            <div class="center">
                <asp:Image ID="Image1" runat="server" CssClass="popimage" />
                
                    <asp:Label ID="status1" runat="server" Text="Status" CssClass="poplabel"></asp:Label>
                    <asp:Label ID="price1" runat="server" Text="Price" CssClass="poplabel"></asp:Label>
                    <table>
                        <tr>
                            <td> <i class="material-icons">home</i>Category</td>
                            <td> <i class="material-icons">home</i>Bedrooms</td>
                            <td> <i class="material-icons">home</i>Bathrooms</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="category1" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="bed1" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="bath1" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="location1" runat="server" Text="Label" CssClass="poplabel"></asp:Label>
                <div style="height:5vh;display:flex;flex-direction:row;margin-left:unset;">
                    <asp:Button ID="Button3" runat="server" Text="Button" CssClass="button2" />
                    <asp:Button ID="Button4" runat="server" Text="Button" CssClass="button2" />
                </div>
            </div>
            <div class="rightmost">
                <asp:Image ID="Image3" runat="server" CssClass="popimage" />
                
                    <asp:Label ID="status3" runat="server" Text="Price" CssClass="poplabel"></asp:Label>
                    <asp:Label ID="price3" runat="server" Text="Price" CssClass="poplabel"></asp:Label>
                    <table>
                        <tr>
                            <td> <i class="material-icons">home</i>Category</td>
                            <td> <i class="material-icons">home</i>Bedrooms</td>
                            <td> <i class="material-icons">home</i>Bathrooms</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="category3" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="bed3" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="bath3" runat="server" Text="Label" CssClass="bed"></asp:Label>
                            </td>
                        </tr>
                    </table>
                    <asp:Label ID="location3" runat="server" Text="Label" CssClass="poplabel"></asp:Label>
                <div style="height:5vh;display:flex;flex-direction:row;margin-left:unset;">
                    <asp:Button ID="Button5" runat="server" Text="View more" CssClass="button2" />
                    <asp:Button ID="Button6" runat="server" Text="Contact" CssClass="button2" />
                </div>
            </div>
        </div>

        <div style="display:flex;justify-content:center;">
            <asp:Button ID="Button2" runat="server" Text="View all properties." CssClass="button" />
        </div>
    </div>

    <!--ABOUT SECTION-->
    <section id="about-us">
     <div class="middle">
        <h1>We Reduce The Search Stress for You.<br /><u>About Us</u></h1>
     </div>
    <div class="About-section">
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
   </section>
</asp:Content>