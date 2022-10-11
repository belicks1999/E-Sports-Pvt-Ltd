<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage_team.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.admin.manage_team" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Manage Team</title>

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
       html, body {
min-height: 100%;
}
body, div, form, input, select, p { 
padding: 0;
margin: 0;
outline: none;
font-family: Roboto, Arial, sans-serif;
font-size: 14px;
color: #666;
}
h1 {
margin: 0;
font-weight: 400;
}
h3 {
margin: 12px 0;
color: #8ebf42;
}
.main-block {
display: flex;
justify-content: center;
align-items: center;
background: #fff;
}
form {
width: 100%;
padding: 20px;
}
fieldset {
border: none;
border-top: 1px solid #8ebf42;
}
.account-details, .personal-details {
display: flex;
flex-wrap: wrap;
justify-content: space-between;
}
.account-details >div, .personal-details >div >div {
display: flex;
align-items: center;
margin-bottom: 10px;
}
.account-details >div, .personal-details >div, input, label {
width: 100%;
}
label {
padding: 0 5px;
text-align: center;
vertical-align: middle;
}
input {
padding: 5px;
vertical-align: middle;
}
.checkbox {
margin-bottom: 10px;
}

button {
width: 10%;
padding: 10px 0;
margin: 10px auto;
border-radius: 5px; 
border: none;
background: #8ebf42; 
font-size: 14px;
font-weight: 600;
color: #fff;

}
button:hover {
background: #82b534;
}
            @media (min-width: 568px) {
                .account-details > div, .personal-details > div {
                    width: 50%;
                }

                label {
                    width: 40%;
                }

                input {
                    width: 100%;
                }
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

<div class="main-block">
    <form id="form1" runat="server">
<h1>Manage Team Details</h1>

<legend>
<h3>Team Details</h3>
</legend>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msg" runat="server" Text="" style="color: #CC0000; font-size: x-large; font-weight: 700"></asp:Label>
<div class="account-details">
   
<div><label>Trophy Name</label> <asp:DropDownList ID="trophy_name" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="trophy_id" Height="36px" Width="749px"></asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:esportsConnectionString %>" SelectCommand="SELECT [trophy_id], [name] FROM [trophy]"></asp:SqlDataSource>
    </div>
<div><label>Team Name</label><asp:TextBox ID="team_name" runat="server" Style="width:100%;"></asp:TextBox></div>
<div><label>Team Owner</label> <asp:TextBox ID="owner" runat="server"></asp:TextBox></div>
<div><label>Username</label> <asp:TextBox ID="username" runat="server"></asp:TextBox></div>
    <div><label>Password</label> <asp:TextBox ID="password" runat="server"></asp:TextBox></div>
    <div><label>Max Amount (USD)</label> <asp:TextBox ID="max_amount" runat="server"></asp:TextBox></div>
</div>

<asp:Button ID="add_btn" Style="width: 10%;
padding: 10px 0;
margin: 10px auto;
border-radius: 5px; 
border: none;
background: #8ebf42; 
font-size: 14px;
font-weight: 600;
color: #fff;" runat="server" Text="Submit" OnClick="add_btn_Click" />
        <br />
        <br />
           
        <asp:GridView ID="teamview" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="227px" Width="1028px" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="team_id" HeaderText="Team ID" />
                <asp:BoundField DataField="trophy_id" HeaderText="Trophy ID" />
                <asp:BoundField DataField="team_owner" HeaderText="Team Owner Name" />
                <asp:BoundField DataField="name" HeaderText="Team Name" />
                <asp:BoundField DataField="username" HeaderText="Username" />
                <asp:BoundField DataField="password" HeaderText="Password" />
                <asp:BoundField DataField="max_amount" HeaderText="Maximum Amount" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                       <asp:LinkButton ID="delete_btn" runat="server" OnClick="delete_btn_Click" >Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
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
