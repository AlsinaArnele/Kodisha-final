<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddlistingUser.aspx.cs" Inherits="Rentishaclone.AddlistingUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table class="table">
        <tr>
            
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
                <asp:DropDownList ID="ddlstatus" runat="server">
                    <asp:ListItem>Vacant</asp:ListItem>
                    <asp:ListItem>Rented</asp:ListItem>
                </asp:DropDownList>
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
                <asp:Label ID="Label8" runat="server" Text="Image"></asp:Label><br />
                <asp:FileUpload ID="fu" runat="server" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Image required" ControlToValidate="fu"></asp:RequiredFieldValidator>
            </th>
           
            <th>
                <asp:Button ID="editbtn" runat="server" Text="Add Listing" OnClick="editbtn_Click" />
            </th>
            <th></th>
        </tr>

    

    </table>
    <style>
 table{
     width:60%;
     margin-top:60px;
 }
 tr{
     display:flex;
     flex-direction:column;
     text-align:center;
     width:60%;
     margin-left:20%;
 }

        * {
    box-sizing: border-box;
}

body {
    background-color: #f4f4f4;
}

#regForm {
    background-color: #ffffff;
    margin: 70px auto;
    padding: 20px;
    width: 90%;
    min-width: 300px;
}

h2 {
    padding: 10px 0;
    color: #047192;
}

label {
    font-size: 20px;
}

input {
    padding: 10px;
    width: 100%;
    font-size: 17px;
    font-family: Raleway;
    border: 1px solid #aaaaaa;
}

select option {
    padding: 10px;
}

fieldset input {
    width: 5%;
}

fieldset label {
    width: 50%;
    padding-right: 0;
    margin-right: 0;
}

legend {
    font-size: 15px;
    font-family: Raleway;
}

output {
    width: 100%;
    min-height: 150px;
    display: flex;
    justify-content: flex-start;
    flex-wrap: wrap;
    gap: 15px;
    position: relative;
    border-radius: 5px;
}

    output .image {
        height: 150px;
        border-radius: 5px;
        box-shadow: 0 0 5px rgba(0, 0, 0, 0.15);
        overflow: hidden;
        position: relative;
    }

        output .image img {
            height: 100%;
            width: 100%;
        }

        output .image span {
            position: absolute;
            top: -4px;
            right: 4px;
            cursor: pointer;
            font-size: 22px;
            color: white;
        }

            output .image span:hover {
                opacity: 0.8;
            }

    output .span--hidden {
        visibility: hidden;
    }

/* Mark input boxes that gets an error on validation: */
input.invalid {
    background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
    display: none;
}

button {
    background-color: #3c8fa8;
    color: #ffffff;
    border: none;
    margin-top: 40px;
    padding: 10px 20px;
    font-size: 17px;
    cursor: pointer;
}

    button:hover {
        opacity: 0.8;
    }

#prevBtn {
    background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
    height: 15px;
    width: 15px;
    margin: 0 2px;
    background-color: #bbbbbb;
    border: none;
    border-radius: 50%;
    display: inline-block;
    opacity: 0.5;
}

    .step.active {
        opacity: 1;
    }

    /* Mark the steps that are finished and valid: */
    .step.finish {
        background-color: #02799e;
    }

    </style>
</asp:Content>
