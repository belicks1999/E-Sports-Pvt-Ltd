<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="auction.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.admin.auction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Auction</title>
    <meta charset="utf-8">
    <meta http-equiv="refresh" content="5"/>
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
    <style type="text/css">
        .auto-style1 {
            font-size: medium;
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
<h1>Select Trophy</h1>
        <div><label><span class="auto-style1">&nbsp; Team Name</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="trophy" runat="server" DataSourceID="SqlDataSource1" DataTextField="name" DataValueField="trophy_id" Height="30px" Width="328px" text-align="center">
            </asp:DropDownList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:esportsConnectionString %>" SelectCommand="SELECT * FROM [trophy]"></asp:SqlDataSource>
            </label></div>
        <asp:Button ID="add_btn" Style="width: 10%;
padding: 10px 10px;
margin: 10px auto;
border-radius: 5px; 
border: none;
background: #8ebf42; 
font-size: 14px;
font-weight: 600;
color: #fff;" runat="server" Text="Submit" OnClick="add_btn_Click1"   />

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msg" runat="server" style="text-align: center; font-size: x-large; color: #CC3300"></asp:Label>

        <h1 style="text-align:center;">Live Auction - Player
        </h1>
        <p>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" Width="878px">
                <Columns>
                    <asp:BoundField DataField="p_id" HeaderText="P_ID" />
                    <asp:BoundField DataField="player_id" HeaderText="Player ID" />
                    <asp:BoundField DataField="tro_id" HeaderText="Trophy ID" />
                    <asp:BoundField DataField="name" HeaderText="Player Name" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                                 <img src="../player/img/<%# Eval("img") %>" style="width:150px;height:200px;" />
                             </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="base_price" HeaderText="Base Price" />
                    <asp:BoundField DataField="amount" HeaderText="Current Bid" />
                    <asp:BoundField DataField="team_id" HeaderText="Team ID" />
                    <asp:BoundField DataField="team_name" HeaderText="Team Name" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </p>
        <div class="col text-center">
        <asp:Button ID="sold"  class="btn btn-success btn-lg" runat="server" Text="SOLD" OnClick="sold_Click" />
        <asp:Button ID="unsold" class="btn btn-danger btn-lg" runat="server" Text="UNSOLD" OnClick="unsold_Click" />
        </div>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


        <h1 style="text-align:center;">Upcomming Players</h1>



    
        
</div> 
        
















<footer class="bg-dark text-center text-white">
  <!-- Grid container -->
  <div class="container p-4 pb-0">
    <!-- Section: Social media -->
    <section class="mb-4">
      <!-- Facebook -->
            
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" HorizontalAlign="Center" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="825px">
            <Columns>
                <asp:BoundField DataField="player_id" HeaderText="Player ID" />
                <asp:BoundField DataField="tro_id" HeaderText="Trophy ID" />
                <asp:BoundField DataField="name" HeaderText="Player Name" />
                <asp:TemplateField HeaderText="Image">
                     <ItemTemplate>
                                 <img src="../player/img/<%# Eval("img") %>" style="width:150px;height:200px;" />
                             </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="club" HeaderText="Club" />
                <asp:BoundField DataField="role" HeaderText="Role" />
                <asp:BoundField HeaderText="Date of Birth" DataField="dob" />
                <asp:BoundField DataField="base_price" HeaderText="Base Price" />
                <asp:TemplateField HeaderText="Select">
                    <ItemTemplate>
                        <asp:LinkButton ID="select_btn" runat="server" OnClick="select_btn_Click" >Select</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
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
    </form>
            
            </body>
</html>
