<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="playerregister.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.player.playerregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Player Register</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

     <link rel="stylesheet" type="text/css" href="../css/StyleSheet1.css"/>

  
    <!--Font Awesome Link-->

    <link rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
    crossorigin="anonymous" 
    referrerpolicy="no-referrer" />




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


     <!-- Bootstrap Date-Picker Plugin -->
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
 <!-- issue date-->
<script>
    $(document).ready(function () {
        var date_input = $('input[id="date1"]'); //our date input has the id "date1"
        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
        var options = {
            format: 'dd-mm-yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true,
        };
        date_input.datepicker(options);
    })
</script>
</head>
<body>
    <form id="main" runat="server">
  
    <h2>Player Register<label for="name"><asp:Label ID="msg" runat="server" style="font-size: x-large; color: #FFFFFF"></asp:Label>
        </label>
        </h2>

    <div class="input-parent">
      <label for="name">Name </label>
      <asp:TextBox ID="Name" runat="server"></asp:TextBox>
       
    </div>
        <div class="input-parent">
      <label for="uname">Username </label>
      <asp:TextBox ID="username" runat="server"></asp:TextBox>
    </div>
        <div class="input-parent">
      <label for="pass">Password </label>
      <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
    </div>
         <div class="input-parent">
      <label for="mobile">Mobile Number </label>
      <asp:TextBox ID="mobile" runat="server" MaxLength="10" TextMode="Number"></asp:TextBox>
    </div>
         
        

   
   <asp:Button style="padding: 10px 18px;font-size: 15px;background: #1a3969;width: 100%;
    border: none;
    border-radius: 4px;
    color: #f4f4f4;
    transition: all 0.2s ease;" ID="reg_btn" runat="server" Text="Register" OnClick="reg_btn_Click" /><br /><br />
        <p style="color:aliceblue;">Already have an account?<a style="color:aliceblue;" href="playerlogin.aspx"> Login</a> </p>

        
        
        
     
    </form>
</body>
</html>
