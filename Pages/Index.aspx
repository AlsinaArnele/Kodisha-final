﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Rentishaclone.Pages.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Style/Home.css" rel="stylesheet" type="text/css" />
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <div id="heroCarousel" class="carousel slide w-100" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active"
                    aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <img src="../Images/bg1.png" class="d-block w-100 c-img" />
            <div class="carousel-caption d-none d-md-block c-none">
                <h5>Find Your Dream House in one Go</h5>

                <p>Your ultimate house hunting assistant</p>
                <div class="btn">
                    <a href="List.aspx">View Property</a>
                </div>
            </div>
        </div>
        <div class="carousel-item c-item">

            <img src="../Images/house3.jpg" class="d-block w-100 c-img" />
            <div class="carousel-caption d-none d-md-block c-none">
                <h5>Find Your Dream House in one Go</h5>
                <form class="my-form">
                    <input type="text" placeholder="Search Area e.g Nairobi">
                    <div class="btn">
                        <button type="submit">Search</button>
                    </div>


                </form>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, pariatur!</p>
                <a href="#">View Properties</a>
            </div>
        </div>
        <div class="carousel-item c-item">

            <img src="../Images/house2.jpg " class="d-block w-100 c-img" />
            <div class="carousel-caption d-none d-md-block c-none">
                <h5>Find Your Dream House in one Go</h5>
                <form class="my-form">
                    <input type="text" placeholder="Search Area e.g Nairobi">
                    <div class="btn">
                        <button type="submit">Search</button>
                    </div>


                </form>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur, pariatur!</p>
                <a href="#">View Properties</a>
            </div>
        </div>
    </div>
    <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
    </button>

    <section id="cardSect">
        <div class="card">
            <i class='bx bxs-building-house'></i>
            <h3> Properties</h3>
        </div>
        <div class="card">
            <i class='bx bxs-user'></i>
            <h3>Contact Agent</h3>
        </div>
        <div class="card">
            <i class='bx bxs-building-house'></i>
            <h3>Houses for sale</h3>
        </div>
        <div class="card">
            <i class='bx bxs-building-house'></i>
            <h3>Houses for rent</h3>
        </div>
    </section>
    <asp:Button ID="Button1" runat="server" Text="Button" />
    <!-- Popular listings -->
    <section id="popular">

        <div class="welcomePopular">
            <h1>Popular Properties</h1>

        </div>
        <div class="listings">
            <div class="listing">
                <img src="../Images/house2.jpg" />
                <div class="listDetail">
                    <h3>$40,345</h3>
                    <div class="line"></div>
                    <small>Ongata Rongai,125</small>
                    <h4>Nariobi,Kenya</h4>
                    <div class="h-dits">
                        <p>1 Bed<i class='bx bx-bed' style='color:#176677'></i></p>
                        <p>2 Tubs<i class='bx bx-bath' style='color:#176677'></i></p>
                    </div>
                </div>
            </div>
            <div class="listing">

                <img src="../Images/house1.jpg" />
                <div class="listDetail">
                    <h3>$40,345</h3>
                    <div class="line"></div>
                    <small>Ongata Rongai,125</small>
                    <h4>Nariobi,Kenya</h4>
                    <div class="h-dits">
                        <p>1 Bed<i class='bx bx-bed' style='color:#176677'></i></p>
                        <p>2 Tubs<i class='bx bx-bath' style='color:#176677'></i></p>
                    </div>
                </div>
            </div>
            <div class="listing">

                <img src="../Images/house3.jpg" />
                <div class="listDetail">
                    <h3>$40,345</h3>
                    <div class="line"></div>
                    <small>Ongata Rongai,125</small>
                    <h4>Nariobi,Kenya</h4>
                    <div class="h-dits">
                        <p>1 Bed<i class='bx bx-bed' style='color:#176677'></i></p>
                        <p>2 Tubs<i class='bx bx-bath' style='color:#176677'></i></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="viewmore">
            <Button class="btn " onclick="location.href='Listing/RentListings'">View All Properties</Button>
        </div>
    </section>

    <section id="reality">
        <div class="realitytext">
            <h2>We relieve the Search stress from you</h2>


        </div>
        <div class="realitycontent">
            <div class="realityimg">
                <h2>About Us</h2>

                <img src="../Images/bg1.png" />
            </div>
            <div class="sider">
                <div class="aside">
                    <i class='bx bxs-home' style='color:#176677'></i>
                    <div class="sidecontent">
                        <h3>Quality Properties</h3>
                        <p>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eveniet, velit blanditiis
                            aspernatur veniam illo molestiae!
                        </p>
                    </div>
                </div>
                <div class="aside">
                    <i class='bx bxs-user' style='color:#176677'></i>
                    <div class="sidecontent">
                        <h3>Quality Properties</h3>
                        <p>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eveniet, velit blanditiis
                            aspernatur veniam illo molestiae!
                        </p>
                    </div>
                </div>
                <div class="aside">
                    <i class='bx bxs-key' style='color:#176677'></i>
                    <div class="sidecontent">
                        <h3>Quality Properties</h3>
                        <p>
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Eveniet, velit blanditiis
                            aspernatur veniam illo molestiae!
                        </p>
                    </div>
                </div>

            </div>
        </div>

    </section>
</asp:Content>