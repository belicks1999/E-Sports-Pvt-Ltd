<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminregister.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.admin.adminregister" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title> Manage Admin</title>
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
</head>
<body style="background-color:antiquewhite;">
   
        
             <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="admindashboard.aspx">E-Sport Pvt Ltd</a>
    </div>
    <ul class="nav navbar-nav">
           <li class="active"><a href="manage_trophy.aspx">Manage Trophy</a></li>
         <li class="active"><a href="manageplayers.aspx">Manage Players Request</a></li>
         <li class="active"><a href="manage_team.aspx">Manage Team</a></li>
         <li class="active"><a href="auction.aspx">Manage Auction</a></li>
         <li class="active"><a href="viewplayer.aspx">View Sold/Unsold Players</a></li>
        <li class="dropdown active ">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Reports
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="soldplayers.aspx">Sold Players</a></li>
          <li><a href="unsoldplayers.aspx">Unsold Players</a></li>
          <li><a href="rejectedplayers.aspx">Rejected Players</a></li>
        </ul>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li style="color:aliceblue; top: 0px; left: 14px; width: 71px; height: 31px;">  <asp:Label ID="name" runat="server"></asp:Label> </li>
     
      <li><a href="../index.aspx">
          
          
          
          <span class="glyphicon glyphicon-user"></span> Logout</a></li>
       
         
    </ul>
  </div>
</nav>

<form id="main" runat="server">
  
    <h2>Admin Register<label for="name"><asp:Label ID="msg" runat="server" style="font-size: x-large; color: #FFFFFF"></asp:Label>
        </label>
        </h2>

    <div class="input-parent">
      <label for="name">Name </label>
      <asp:TextBox ID="name1" runat="server"></asp:TextBox>
       
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
    transition: all 0.2s ease;" ID="reg_btn" runat="server" Text="Register" OnClick="reg_btn_Click"  /><br /><br />
        

        
        
        
     
    </form>
       
        </form>
</div> 
        
















<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4 pb-0">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-facebook-f"></i
      ></a>

      <!-- Twitter -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-twitter"></i
      ></a>

      <!-- Google -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-google"></i
      ></a>

      <!-- Instagram -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-instagram"></i
      ></a>

      <!-- Linkedin -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-linkedin-in"></i
      ></a>

      <!-- Github -->
      <a class="btn btn-outline-light btn-floating m-1" href="#!" role="button"
        ><i class="fab fa-github"></i
      ></a>
    </section>
    <!-- Section: Social media -->
  </div>
  <!-- Grid container -->

  <!-- Copyright -->
  <div class="text-center p-6 text-light bg-dark" style="background-color:black;color: white;" >
    © 2020 Copyright Esport Pvt Ltd
    
  </div>
  <!-- Copyright -->
</footer>


            <!--Boostrap js Link-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" 
crossorigin="anonymous"></script>
            
            </body>
</html>
