<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="manage_trophy.aspx.cs" Inherits="E_Sports_Pvt_Ltd.Pages.admin.manage_trophy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Manage Trophy</title>
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
    <script>
        $(document).ready(function () {
            var date_input = $('input[id="date2"]'); //our date input has the id "date2"
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
text-align: right;
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
<h1>Manage Trophy Details</h1>

<legend>
<h3>Trophy Details</h3>
</legend>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="msg" runat="server" Text="" style="font-size: x-large; color: #FF0000"></asp:Label>
<div class="account-details">
    
<div><label>Trophy Name</label><asp:TextBox ID="tname" runat="server"></asp:TextBox></div>
<div><label>Vanue</label><asp:TextBox ID="vanue" runat="server"></asp:TextBox></div>
<div><label>Start Date</label> <asp:TextBox ID="date1" placeholder="DD-MM-YYYY" CssClass="form-control" runat="server"></asp:TextBox></div>
<div><label>End Date</label> <asp:TextBox ID="date2" placeholder="DD-MM-YYYY" CssClass="form-control" runat="server"></asp:TextBox></div>
</div>

<asp:Button ID="submit_btn" Style="width: 10%;
padding: 10px 0;
margin: 10px auto;
border-radius: 5px; 
border: none;
background: #8ebf42; 
font-size: 14px;
font-weight: 600;
color: #fff;" runat="server" Text="Submit" OnClick="submit_btn_Click" />
        <br />
        
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" Height="178px" Width="988px" AutoGenerateColumns="False">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="trophy_id" HeaderText="Trophy ID" />
                <asp:BoundField DataField="name" HeaderText="Trophy Name" />
                <asp:BoundField DataField="start_date" HeaderText="Starting Date" />
                <asp:BoundField DataField="end_date" HeaderText="Ending Date" />
                <asp:BoundField DataField="vanue" HeaderText="Venue" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        <asp:LinkButton ID="delete_btn" runat="server" OnClick="delete_btn_Click1">Delete</asp:LinkButton>  
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
        <br />
        
    
    
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
