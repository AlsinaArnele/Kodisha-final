<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ListingsUser.aspx.cs" Inherits="Rentishaclone.Pages.ListingsUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="~/Content/css/Listing.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp" rel="stylesheet">
<section>
    <div class="welcome-section">
        <div class="section1">
            <h1>OUR LISTINGS</h1>
            <small>Kodisha> <span>Listings</span> </small>
        </div>
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
                        <option selected>Choose location</option>
                        <option value="1">Nairobi</option>
                        <option value="2">Eldoret</option>
                        <option value="3">Nakuru</option>
                    </select>
                    <select>
                        <option selected>Choose type</option>
                        <option value="1">Bedsitter</option>
                        <option value="">1 Bedrooom</option>
                        <option value="3">2 Bedrooom</option>
                    </select>
                </div>
                <button type="submit">Search Now</button>
            </form>
        </div>
    </div>
</section>


<div ID="containerDiv" >
  <div class="card-section">
      <div class="card" onclick="">
          <div class="img-container">
              <asp:ImageButton runat="server" PostBackUrl="~/Pages/List.aspx" ImageUrl="~/Images/house2.jpg" Width="407px" ImageAlign="Middle" />
          </div>
          <div class="rent">
              <small> <asp:Label ID="lblstatus" runat="server" Text="Status"></asp:Label> </small>
              <h2><asp:Label ID="lblprice" runat="server" Text="Price"></asp:Label></h2>
          </div> 
          <div class="proprName"> 
              <h2> <asp:Label ID="lblname" runat="server" Text="Property"></asp:Label></h2> 
          </div> 
          <div class="proprName2">
              <h2> <asp:Label ID="lblcounty" runat="server" Text="County">County</asp:Label> </h2>
          </div>
          <div class="proprName3">
              <h2><asp:Label ID="lbltown" runat="server" Text="Town">Town</asp:Label> </h2>
          </div>
          <div class="features">
              <div class="feature">
                  <div class="subfeature">
                      <span class="material-icons-sharp">bed</span>
                      <small> Beds</small> 
                  </div> 
                  <div class="subfeature2">
                      <span class="material-icons-sharp">bathtub</span>
                      <small> Rooms</small>
                  </div> <div class="subfeature3">
                      <span class="material-icons-sharp">open_with</span>
                      <small>1200 sqft</small>
                         </div>
              </div>
          </div>
      </div>
  </div>

  <div class="card-section">
      <div class="card" onclick="">
          <div class="img-container">
              <asp:ImageButton runat="server" PostBackUrl="~/Pages/List.aspx" ImageUrl="~/Images/house2.jpg" Width="407px" ImageAlign="Middle" />
          </div>
          <div class="rent">
              <small> <asp:Label ID="Label1" runat="server" Text="Status"></asp:Label> </small>
              <h2><asp:Label ID="Label2" runat="server" Text="Price"></asp:Label></h2>
          </div> 
          <div class="proprName"> 
              <h2> <asp:Label ID="Label3" runat="server" Text="Property"></asp:Label></h2> 
          </div> 
          <div class="proprName2">
              <h2> <asp:Label ID="Label4" runat="server" Text="County">County</asp:Label> </h2>
          </div>
          <div class="proprName3">
              <h2><asp:Label ID="Label5" runat="server" Text="Town">Town</asp:Label> </h2>
          </div>
          <div class="features">
              <div class="feature">
                  <div class="subfeature">
                      <span class="material-icons-sharp">bed</span>
                      <small> Beds</small> 
                  </div> 
                  <div class="subfeature2">
                      <span class="material-icons-sharp">bathtub</span>
                      <small> Rooms</small>
                  </div> <div class="subfeature3">
                      <span class="material-icons-sharp">open_with</span>
                      <small>1200 sqft</small>
                  </div>
              </div>
          </div>
      </div>
      </div>

  <div class="card-section">
      <div class="card" onclick="">
          <div class="img-container">
              <asp:ImageButton runat="server" PostBackUrl="~/Pages/List.aspx" ImageUrl="~/Images/house2.jpg" Width="407px" ImageAlign="Middle" />
          </div>
          <div class="rent">
              <small> <asp:Label ID="Label6" runat="server" Text="Status"></asp:Label> </small>
              <h2><asp:Label ID="Label7" runat="server" Text="Price"></asp:Label></h2>
          </div> 
          <div class="proprName"> 
              <h2> <asp:Label ID="Label8" runat="server" Text="Property"></asp:Label></h2> 
          </div> 
          <div class="proprName2">
              <h2> <asp:Label ID="Label9" runat="server" Text="County">County</asp:Label> </h2>
          </div>
          <div class="proprName3">
              <h2><asp:Label ID="Label10" runat="server" Text="Town">Town</asp:Label> </h2>
          </div>
          <div class="features">
              <div class="feature">
                  <div class="subfeature">
                      <span class="material-icons-sharp">bed</span>
                      <small> Beds</small> 
                  </div> 
                  <div class="subfeature2">
                      <span class="material-icons-sharp">bathtub</span>
                      <small> Rooms</small>
                  </div> <div class="subfeature3">
                      <span class="material-icons-sharp">open_with</span>
                      <small>1200 sqft</small>
                         </div>
              </div>
          </div>
      </div>
  </div>
</div>


<script src="../Javascript/Autohide.js"></script> >
    <style>
    ﻿
* {
    box-sizing: border-box;
    text-decoration: none;
    list-style: none;
    padding: 0;
    margin: 0;
}

:root {
    --color-primary: #7380ec;
    --color-danger: #ff7782;
    --color-success: #41f1b6;
    --color-white: #fff;
    --color-warning: #ffbb55;
    --color-info-dark: #798da1;
    --color-info-light: #dce1eb;
    --color-dark: #363949;
    --color-light: rgba(132,139,200,0.18);
    --color-primary-variant: #111e88;
    --color-dark-variant: #677483;
    --color-background: #f6f6f9;
    --card-border-radius: 2rem;
    --border-radius1: .4rem;
    --border-radius2: .8rem;
    --border-radius3: 1.2rem;
    --card-padding: 1.8rem;
    --padding1: 1.2rem;
    --box-shadow: 0 2rem 3rem var(--color-light)
}


/* Dark Theme */

.dark-themes {
    --color-background: #181a1e;
    --color-white: #202528;
    --color-dark-variant: #edeffd;
    --color-light: rgba(0,0,0,0.4);
    --box-shadow: 0 2rem 3rem var(var(--color-light))
}

body {
    font-family: 'Poppins', sans-serif;
    font-size: .88rem;
    background: var(--color-background);
    color: var(--color-dark);
}

h1 {
    font-weight: 800;
    font-size: 1.3rem;
}

h2 {
    font-size: 1.4rem;
}

h3 {
    font-size: .87rem;
}

h4 {
    font-size: .8rem;
}

h5 {
    font-size: .77rem;
}

small {
    font-size: .75em;
}

img {
    width: 100%;
    object-fit: cover;
}

a {
    color: var(--color-dark-variant);
}

.welcome-section {
    padding: 5vh;
}

    .welcome-section .section1 {
        text-align: center;
        padding: 5vh;
    }

    .welcome-section h1 {
        font-style: italic;
        font-weight: 500;
        font-size: 5vw;
    }
    /* Filter  */
    .welcome-section form input {
        width: 100%;
        padding: 2vh;
        font-size: 1.5rem;
        border-radius: 1rem;
        outline: none;
        border: 1px solid var(--color-dark);
        background-color: transparent;
        margin-bottom: 4vh;
    }

    .welcome-section form .selects {
        display: flex;
        gap: 4rem;
    }

        .welcome-section form .selects select {
            width: 50%;
            padding: 2vh;
            outline: none;
            background: transparent;
            border-radius: 1rem;
            font-size: 1.5rem;
            color: var(--color-dark-variant);
            margin-bottom: 2vh;
        }

    .welcome-section button {
        background-color: var(--color-primary);
        color: var(--color-white);
        border-radius: var(--border-radius1);
        padding: 2vh 4vw;
        border: none;
        font-size: 1.1rem;
    }

.card-section {
    display: grid;
    grid-template-columns: 1fr 1fr 1fr;
    padding: 5vh;
    grid-gap: 2rem;
}

.card small {
    font-size: 1.2rem;
}

.card-section .card {
    background-color: var(--color-white);
    box-shadow: var(--box-shadow);
    border-radius: var(--border-radius1);
    cursor: pointer;
    box-shadow: var(--box-shadow);
}

    .card-section .card img {
        border-top-left-radius: var(--border-radius1);
        border-top-right-radius: var(--border-radius1);
        transition: all 300ms ease;
        height: 250px;
    }

        .card-section .card img:hover {
            filter: brightness(90%);
        }

    .card-section .card:hover {
        box-shadow: none;
    }

    .card-section .card .rent {
        display: flex;
        justify-content: space-between;
        padding: 1vh 2vw;
        align-items: center;
    }

    .card-section .card .features {
        padding: 1vh 2vw;
    }

    .card-section .card .proprName,
    .card-section .card .proprName2,
    .card-section .card .proprName3
    {
        padding: 1vh 2vw;
    }

        .card-section .card .proprName h2,
        .card-section .card .proprName2 h2,
        .card-section .card .proprName3 h2
        {
            font-size: 1.55rem;
        }

    .card-section .card .features .feature {
        display: flex;
        justify-content: space-between;
        align-items: center;
        margin-bottom: 2vh;
    }

.card .card .features .feature .subfeature ,
.card .card .features .feature .subfeature ,
.card .card .features .feature .subfeature
{
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: center;
}

.card-section .card .features .feature .subfeature span,
.card-section .card .features .feature .subfeature span,
.card-section .card .features .feature .subfeature span
{
    font-size: 1.2rem;
    background: var(--color-info-light);
    border-radius: 50%;
    padding: 1vh;
    color: var(--color-dark-variant);
}

.pagination {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 1rem;
    padding-bottom: 5vh;
}

    .pagination span {
        background-color: var(--color-info-dark);
        color: var(--color-white);
        border-radius: 50%;
        padding: 2vh;
        cursor: pointer;
        transition: all 300ms ease;
    }

        .pagination span.active {
            color: var(--color-dark);
            background-color: var(--color-info-light);
        }

            .pagination span.active:hover {
                color: var(--color-white);
            }

        .pagination span:hover {
            background-color: var(--color-dark-variant);
        }

@media screen and (max-width:1200px) {

    .card-section {
        display: grid;
        grid-template-columns: 1fr 1fr;
    }
}

@media screen and (max-width:768px) {
    .card-section {
        grid-template-columns: 1fr;
    }
}

</style>

</asp:Content>
