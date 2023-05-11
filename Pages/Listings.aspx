<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Listings.aspx.cs" Inherits="Rentishaclone.Pages.Listings" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="data-display">
    <div>
        <asp:GridView ID="propertygrid" runat="server" AutoGenerateColumns="True" OnRowDeleting="GridView1_RowDeleting" CssClass="propertygrid">
                <Columns>
                    <asp:ButtonField Text="Delete" CommandName="Delete" ItemStyle-BackColor="Red" ItemStyle-ForeColor="White" />
                </Columns>
                
             </asp:GridView>
    </div>

    <div>
        <asp:GridView ID="customergrid" runat="server" AutoGenerateColumns="True"  CssClass="propertygrid">
                <Columns>
                    <asp:ButtonField Text="Delete" CommandName="Delete" ItemStyle-BackColor="Red" ItemStyle-ForeColor="White" />
                </Columns>
            </asp:GridView>
    </div>
    </div>



    <style>
    .propertygrid {
        width:400px;
        border:unset;
        border-collapse: separate;
        border-spacing: 10px;
    }
    .propertygrid th, .propertygrid td {
        width:100px;
        height:90px;
        background-color:lightgray;
        padding: 5px;
        text-align:center;
    }
    .propertygrid th{
        background-color:unset;
        text-decoration:underline;
        text-underline-offset:5px;
        
    }

    </style>
</asp:Content>

