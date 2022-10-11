<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rejectedplayers.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.admin.rejectedplayers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Rejected Players</title>
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
            font-size: x-large;
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
        <form id="form1" runat="server">
        <h3 class="auto-style1" style="text-align:center;"><strong>Rejected Players Report</strong></h3>
             <p class="auto-style1">&nbsp;</p>
         <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC" HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="165px" Width="1121px" AutoGenerateColumns="False">
                     <Columns>
                         <asp:BoundField DataField="name" HeaderText="Name" />
                         <asp:BoundField DataField="tro_id" HeaderText="Trophy ID" />
                         <asp:TemplateField HeaderText="Image">
                             <ItemTemplate>
                                 <img src="../player/img/<%# Eval("img") %>" style="width:150px;height:200px;" />
                             </ItemTemplate>

                         </asp:TemplateField>
                         <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                         <asp:BoundField DataField="club" HeaderText="Club" />
                         <asp:BoundField DataField="role" HeaderText="Role" />
                         <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                         <asp:BoundField DataField="address" HeaderText="Address" />
                         <asp:BoundField DataField="status" HeaderText="Status" />
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
            <div class="col text-center">
                <br />
                <br />
        <asp:Button ID="sold"  class="btn btn-success btn-lg" runat="server" Text="Genarate Report" OnClick="sold_Click" />
        </div>
        </form>






             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
             <br />
  
        






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
