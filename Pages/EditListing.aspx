<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="EditListing.aspx.cs" Inherits="Rentishaclone.Pages.EditListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>EditListings</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <th>
                <asp:Image ID="Image1" runat="server" />
            </th>
            <th>
                <asp:Label ID="Label7" runat="server" Text="Property name"></asp:Label><br />
                <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>
            </th>
            <th>
                <asp:Label ID="Label6" runat="server" Text="County"></asp:Label><br />
                <asp:TextBox ID="txtcounty" runat="server"></asp:TextBox>
            </th>
            <th>
                <asp:Label ID="Label5" runat="server" Text="Town"></asp:Label><br />
                <asp:TextBox ID="txttown" runat="server"></asp:TextBox>
            </th>
            <th>
                <asp:Label ID="Label4" runat="server" Text="Price"></asp:Label><br />
                <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
            </th>
            <th>
                <asp:Label ID="Label3" runat="server" Text="Status"></asp:Label><br />
                <asp:TextBox ID="txtstatus" runat="server"></asp:TextBox>
            </th>
            <th>
                <asp:Label ID="Label2" runat="server" Text="Description"></asp:Label><br />
                <asp:TextBox ID="txtdescription" runat="server"></asp:TextBox>
            </th>
            <th>
                <asp:Label ID="Label1" runat="server" Text="Amenities"></asp:Label><br />
                <asp:TextBox ID="txtamenities" runat="server"></asp:TextBox>
            </th>
            <th>
                <asp:Button ID="editbtn" runat="server" Text="Edit" OnClick="editbtn_Click" />
            </th>
            <th></th>
        </tr>

    

    </table>
    <style>
       table{
     margin-top:60px;
     margin-left:30%;
 }
 tr{
     display:flex;
     flex-direction:column;
     text-align:center;
 }
    </style>
</asp:Content>
