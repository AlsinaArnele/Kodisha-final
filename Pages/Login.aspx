<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Rentishaclone.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Welcome Back!</h1>
        <div style="display:flex;justify-content:center;">
        <div class="container">
            <br />
            <asp:Label ID="lblinvalid" runat="server" Text=""></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Email Address" CssClass="text"></asp:Label>
            <br />
            <asp:TextBox ID="txtemail" runat="server" CssClass="field" CausesValidation="True" ValidationGroup="vg"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password" CssClass="text"></asp:Label>
            <br />
            <asp:TextBox ID="txtpass" runat="server" TextMode="Password" CssClass="field" ValidationGroup="vg"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Log in" CssClass="submit" BackColor="SeaGreen" OnClick="Button1_Click" BorderStyle="None" ForeColor="White" /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Pages/Registration.aspx" ForeColor="Black">New here?</asp:HyperLink>
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Black" NavigateUrl="forgot.aspx">Forgot Password?</asp:HyperLink>
        </div>
        </div>
    </form>
</body>
</html>
