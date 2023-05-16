<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Rentishaclone.Pages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div class="container">
            <div class="left">
                <h1>Kodisha</h1>
                <h2>Login to your account</h2>
                <div class="details">
                    <asp:Button ID="Button2" runat="server" Text="Log in with Google" CssClass="button" />                
                    <span>or</span>
                    <h3>*Username</h3>
                    <asp:TextBox ID="txtusername" runat="server" CssClass="input" BorderColor="#999999"></asp:TextBox>
                    <h3>*Password</h3>
                    <asp:TextBox ID="txtpass" runat="server" CssClass="input" TextMode="Password"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Log in" CssClass="button" OnClick="Button1_Click1" />
                    <a href="Reset.html">Forgot password?</a>
                    <a href="Registration.html">Register here.</a>
                </div>
            </div>
            <div class="right">
                <div class="info">
                    <h1>Creating the most convenient home looking solutions.</h1>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Ut, itaque pariatur minima minus sunt eius deserunt veritatis vitae tempore doloremque nulla placeat nesciunt ducimus architecto ea obcaecati. Nam, ipsa ex.</p>
                    <div class="buttons">
                        <button>100% Guarantee</button>
                        <button>Free delivery London Area</button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
<style>
    *{
     font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;   
    }
    .container{
        display: flex;
        width: 80vw;
        height: 95vh;
        align-items: center;
        margin-left: 10vw;
    }
    .container button{
        margin-left: 1vw;
    }
    .container span{
        text-align: center;
        margin-left: 1vw;
        margin-top: 3vh;
        width: 20vw;
        }
    a{
        text-align:left;
        margin-left: 7vw;
        margin-top: 3vh;
    }
    h3{
        text-align:left;
        font-size: 1vw;
        font-weight: 300;
        margin-left:1.5vw;
    }
    h1{
        margin-left:6vw ;
        font-weight: 500;
    }
    h2{
        margin-top: 7vh;
        margin-left: 8vw;
        font-weight: 400;
    }
    .left{
        width: 34vw;
        height: 80vh;
    }
    .details{
        text-align:center;
        display: flex;
        width: 30vw;
        height: 60vh;
        justify-content: left;
        flex-direction: column;
        margin-left: 5vw;
    }
    .input{
        width: 20vw;
        height: 5vh;
        border-radius: 2vw;
        margin-left: 1vw;
        background-color: lightgray;
        border: none;
        text-align: left;
        padding-left:1vw ;
    }
    .button{
        border:none;
        width: 20vw;
        height: 5vh;
        background-color: black;
        color: white;
        margin-top: 3vh;
        border-radius: 2vw;
        margin-left:1.5vw;
        transition:transform .4s, color .4s, background-color .4s;
    }

    .button:hover{
        transform:scale(.9);
        color:black;
        background-color:white;
    }
    input:active{
        border-color: aquamarine;
    }
    .right{
        background-image: url("../Images/house2.jpg");
        background-size: cover;
        width: 46vw;
        height: 88vh;
        background-color: red;
        border-radius: 3vw;
        overflow: hidden;
        display: flex;
        align-items: end;
    }
    .right .buttons{
        margin-bottom: 5vh;
        margin-left: 1.5vw;
       
    }
    .right h1{
        color: white;
    }
    .right p{
        margin-left: 3vw;
        margin-right: 3vw;
        text-align: left;
        color: white;
    }
    .right .buttons button{
        width: 20vw;
        height: 5vh;
        margin-left:1.5vw;
        border: 1px solid white;
        color: white;
        border-radius: 1vw;
        background-color: transparent;
    }
</style>
