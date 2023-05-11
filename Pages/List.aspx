<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="List.aspx.cs" Inherits="Rentishaclone.Pages.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact">
    <div class="cards">
        <asp:GridView ID="Listings" runat="server" AutoGenerateColumns="false"  CssClass="cards" OnRowDeleting="GridView1_RowDeleting" CellSpacing="10" CellPadding="4" RowStyle-ForeColor="Gray" >
                  <Columns>
                      <asp:BoundField DataField="Property_Name" HeaderText="Name"
                          SortExpression="Name" />
                     <asp:BoundField DataField="County" HeaderText="County"
                          SortExpression="County" />
                     <asp:BoundField DataField="Description" HeaderText="Description"
                         SortExpression="Description" />
                     <asp:BoundField DataField="Price" HeaderText="Price"
                          SortExpression="HireDate" />
                     <asp:ButtonField Text="Book Property" CommandName="Delete" ItemStyle-BackColor="SeaGreen" ItemStyle-ForeColor="White" 
                         ButtonType="Link" HeaderStyle-VerticalAlign="Middle" ItemStyle-HorizontalAlign="Center" ItemStyle-VerticalAlign="Middle" ControlStyle-BorderStyle="None" />
                </Columns>
            </asp:GridView>
    </div>
    </div>
 <style>
     .contact{
         display:flex;
         justify-content:center;
         margin-top:50px;
     }
     .cards{
         padding-left:20px;
         border-radius:10px;
         overflow:hidden;
         border:1px solid black;
         width:90%;
         height:100px;
         margin-bottom:30px;
     }
 
 </style>
</asp:Content>
