﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Rentishaclone.Pages.Admin1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Admin</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <main>
            <h1>Dashboard</h1>
            <div class="date">
                <input type="date">
            </div>
            <div class="insights">
                <div class="properties">
                    <span class="material-icons-sharp">analytics</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Rents</h3>
                            <h1>$342343</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>81%</p>
                            </div>

                        </div>
                    </div>
                    <small class="text-muted">
                        Last 24 Hours
                    </small>
                </div>
                <!-- TOTAL SALES -->
                <div class="income">
                    <span class="material-icons-sharp">stacked_line_chart</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Income</h3>
                            <h1>$342343</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>51%</p>
                            </div>

                        </div>
                    </div>
                    <small class="text-muted">
                        Last 24 Hours
                    </small>
                </div>
                <div class="sales">
                    <span class="material-icons-sharp">bar_chart</span>
                    <div class="middle">
                        <div class="left">
                            <h3>Total Sales</h3>
                            <h1>$342343</h1>
                        </div>
                        <div class="progress">
                            <svg>
                                <circle cx="38" cy="38" r="36"></circle>
                            </svg>
                            <div class="number">
                                <p>80%</p>
                            </div>

                        </div>
                    </div>
                    <small class="text-muted">
                        Last 24 Hours
                    </small>
                </div>
            </div>
            <div class="recent-listings">
                <h2>Recent Listings</h2>
                <table>
                    <thead>
                        <tr>
                            <th class="dash-image">Image</th>
                            <th>County</th>
                            <th>Town</th>
                            <th>Price</th>
                            <th>Status</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <img src="currentList.jpg" alt="">
                            </td>
                            <td>Nairobi</td>
                            <td>Muthiga</td>
                            <td>$453453</td>
                            <td class="warning">Vacant</td>
                            <td class="primary">Details</td>


                        </tr>
                        <tr>
                            <td>
                                <img src="currentList.jpg" alt="">
                            </td>
                            <td>Nairobi</td>
                            <td>Muthiga</td>
                            <td>$453453</td>
                            <td class="warning">Vacant</td>
                            <td class="primary">Details</td>


                        </tr>
                        <tr>
                            <td>
                                <img src="currentList.jpg" alt="">
                            </td>
                            <td>Nairobi</td>
                            <td>Muthiga</td>
                            <td>$453453</td>
                            <td class="warning">Vacant</td>
                            <td class="primary">Details</td>


                        </tr>
                        <tr>
                            <td>
                                <img src="currentList.jpg" alt="">
                            </td>
                            <td>Nairobi</td>
                            <td>Muthiga</td>
                            <td>$453453</td>
                            <td class="warning">Vacant</td>
                            <td class="primary">Details</td>


                        </tr>
                        <tr>
                            <td>
                                <img src="currentList.jpg" alt="">
                            </td>
                            <td>Nairobi</td>
                            <td>Muthiga</td>
                            <td>$453453</td>
                            <td class="warning">Vacant</td>
                            <td class="primary">Details</td>


                        </tr>
                    </tbody>
                </table>
                <a href="#" class>Show All</a>
            </div>

        </main>

</asp:Content>
