<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="DeleteListing.aspx.cs" Inherits="Rentishaclone.Pages.DeleteListing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>DeleteListing</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <th>
                <asp:Image ID="Image1" runat="server" />
            </th>
            <th>
                <asp:GridView ID="GridView1" runat="server"></asp:GridView>
            </th>
           
            <th>
                <asp:Button ID="deletebtn" runat="server" Text="Delete this listing?" Height="35px" Width="150px" BackColor="#999999" OnClick="deletebtn_Click" />
            </th>
            <th></th>
        </tr>

    

    </table>
    <style>
        table{
            display:flex;
            flex-direction:column;
            margin-top:10%;
        }
    </style>
</asp:Content>
