<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="viewplayers.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.player.viewplayers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

     <link rel="stylesheet" type="text/css" href="../css/StyleSheet1.css">

  
    <!--Font Awesome Link-->

    <link rel="stylesheet" 
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" 
    integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" 
    crossorigin="anonymous" 
    referrerpolicy="no-referrer" />

    <style>
        body{
            background-color:aqua;
        }
     

    </style>
</head>
<body style="background-color:antiquewhite;">
    <form id="form1" runat="server">
        <div>
             <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">E-Sport Pvt Ltd</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Apply</a></li>
         <li class="active"><a href="#">View Players</a></li>
         <li class="active"><a href="#">View Trophy</a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
     
      <li><a href="../index.aspx"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
         
    </ul>
  </div>
</nav>
<h3 style="text-align:center;color:black;">Your Status</h3>
             <p style="text-align:center;color:black;">
                 <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" HorizontalAlign="Center" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="165px" Width="1121px" AutoGenerateColumns="False">
                     <Columns>
                         <asp:BoundField DataField="name" HeaderText="Name" />
                         <asp:TemplateField HeaderText="Image">
                             <ItemTemplate>
                                 <img src="./img/<%# Eval("img") %>" style="width:100px;height:100px;" />
                             </ItemTemplate>

                         </asp:TemplateField>
                         <asp:BoundField DataField="mobile" HeaderText="Mobile" />
                         <asp:BoundField DataField="club" HeaderText="Club" />
                         <asp:BoundField DataField="role" HeaderText="Role" />
                         <asp:BoundField DataField="dob" HeaderText="Date of Birth" />
                         <asp:BoundField DataField="address" HeaderText="Address" />
                         <asp:BoundField DataField="status" HeaderText="Status" />
                         <asp:BoundField DataField="base_price" HeaderText="Base Price" />
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



<h3 style="text-align:center;color:black;">All Players</h3>
             <p style="text-align:center;color:black;">
                 <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Center" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Height="162px" Width="1117px">
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
             <p style="text-align:center;color:black;">
                 &nbsp;</p>
             <p style="text-align:center;color:black;">
                 &nbsp;</p>
             <p style="text-align:center;color:black;">
                 &nbsp;</p>
             <p style="text-align:center;color:black;">
                 &nbsp;</p>
             <p style="text-align:center;color:black;">
                 &nbsp;</p>
        

            

        

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
        <br />
        <br />
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
        </div>
</form>
</html>
