<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Rentishaclone.Pages.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../Style/Login.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <h1>Sign Up</h1>
        <div style="display:flex;justify-content:center;">
        <div class="container" style="padding-top:40px;height:400px;">
            <asp:Label ID="emailexists" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="First Name" CssClass="text"></asp:Label><br />
            <asp:TextBox ID="txtfname" runat="server" CssClass="field"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Last Name" CssClass="text"></asp:Label><br />
            <asp:TextBox ID="txtlname" runat="server" CssClass="field"></asp:TextBox><br />    
            <asp:Label ID="Label3" runat="server" Text="Email Address" CssClass="text"></asp:Label><br />
            <asp:TextBox ID="txtemail" runat="server" CssClass="field" TextMode="Email"></asp:TextBox>  
            <br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label6" runat="server" CssClass="text" Text="Phone Number"></asp:Label>
            <br />
            <asp:TextBox ID="txtphone" runat="server" CssClass="field" TextMode="Phone"></asp:TextBox>
            <br />         
            <asp:Label ID="Label4" runat="server" Text="Password" CssClass="text"></asp:Label><br />
            <asp:TextBox ID="txtpass" runat="server" CssClass="field" TextMode="Password"></asp:TextBox>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtpass" ErrorMessage="Password required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Text="Confirm Password" CssClass="text"></asp:Label><br />
            <asp:TextBox ID="txtconpass" runat="server" CssClass="field" TextMode="Password"></asp:TextBox>
            <br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpass" ControlToValidate="txtconpass" ErrorMessage="Passwords do not match!" ForeColor="Red"></asp:CompareValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtconpass" ErrorMessage="Password Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Sign Up" CssClass="submit" OnClick="Button1_Click" BorderStyle="None" BackColor="SeaGreen" ForeColor="White" /><br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx">Already a user</asp:HyperLink>
        </div>
        </div>
    </form>
</body>
</html>
