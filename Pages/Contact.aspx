<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Rentishaclone.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="Contact-1">
        <h1>CONTACT OWNER</h1>

        <form action="https://formsubmit.co/leviskibet2002@gmail.com" method="POST" autocomplete="off">
            <p>Enter Your Name:</p>
            <input type="text">
            <p>Enter Your Phone Number:</p>
            <input type="number">
            <p>Enter Your Email Address:</p>
            <input type="email">
            <p>Enter Your message:</p>
            <input type="text">
        </form>

        <br>
        <button type="submit">Submit</button>
    </div>
</asp:Content>
