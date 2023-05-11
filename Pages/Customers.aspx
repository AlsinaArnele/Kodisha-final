<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Customers.aspx.cs" Inherits="Rentishaclone.Pages.Customers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="table">
        <tr>
            <th>
                <asp:Image runat="server"></asp:Image>
            </th>
           
            <th>
              <asp:GridView ID="customergrid" runat="server" AutoGenerateColumns="True" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" CssClass="propertygrid">
                <Columns>
                    <asp:ButtonField Text="Delete" CommandName="Delete" ItemStyle-BackColor="Red" ItemStyle-ForeColor="White" />
                </Columns>

             </asp:GridView>

            </th>
           
          </tr>

    </table>

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
