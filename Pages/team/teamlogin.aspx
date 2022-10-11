<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="teamlogin.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.team.teamlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Team Login</title>
        <style>
        *,
*:before,
*:after {
    margin: 0;
    padding: 0;
    font-family: inherit;
    box-sizing: border-box;
}
#main {
    width: max-content;
    margin: 40px auto;
    font-family: "Segoe UI", sans-serif;
    padding: 100px 100px;
    background: #151414;
    border-radius: 4px;
    border: 1px solid #302d2d;
    animation: popup 0.4s cubic-bezier(0.68, -0.55, 0.27, 1.55);
}
@keyframes popup {
    0% {
        transform: scale(0.2);
        opacity: 0;
    }
    100% {
        transform: scale(1);
        opacity: 1;
    }
}
h2 {
    text-align: center;
    font-size: 28px;
    margin-bottom: 20px;
    font-weight: 400;
    color: #e7e7e7;
}
.input-parent {
    display: block;
    margin-bottom: 20px;
}
label {
    display: block;
    font-size: 16px;
    margin-bottom: 8px;
    color: #a4a4a4;
}
.input-parent input {
    padding: 10px 100px;
    width: 100%;
    font-size: 16px;
    background: #323131;
    border: none;
    color: #c7c7c7;
    border-radius: 4px;
    outline: none;
    transition: all 0.2s ease;
}
.input-parent input:hover {
    background: #404040;
}
.input-parent input:focus {
    box-shadow: 0px 0px 0px 1px #0087ff;
}
button {
    padding: 10px 18px;
    font-size: 15px;
    background: #1a3969;
    width: 100%;
    border: none;
    border-radius: 4px;
    color: #f4f4f4;
    transition: all 0.2s ease;
}
button:hover {
    opacity: 0.9;
}
button:focus {
    box-shadow: 0px 0px 0px 3px black;
}
body {
    background: #1c1b1b;
}
 
    </style>
</head>
<body>
     <form id="main" runat="server">
  
    <h2>Team Login<label for="username"><asp:Label ID="error" runat="server"></asp:Label>
        </label>
         </h2>

    
         <div class="input-parent">
      <label for="username">Username </label>
      <asp:TextBox ID="username" runat="server"></asp:TextBox>
    </div>
        

    <div class="input-parent">
      <label for="password">Password</label>
      <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    </div>

        
        <asp:Button style="padding: 10px 18px;font-size: 15px;background: #1a3969;width: 100%;
    border: none;
    border-radius: 4px;
    color: #f4f4f4;
    transition: all 0.2s ease;" ID="login_btn" runat="server" Text="Login" OnClick="login_btn_Click" /><br /><br />
     

        
        
        
     
     </form>
</body>
</html>
