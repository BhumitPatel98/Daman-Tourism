 <%@ Page Language="VB" AutoEventWireup="false" CodeFile="Insert Hotel Info.aspx.vb" Inherits="Insert_Hotel_Info" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Insert Hotel Information</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script type="text/javascript" src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script type="text/javascript">
      $(function () {
          $("#tabs").tabs();
      });
  </script>
  <style type="text/css">
      .round
      {
          border-radius:5px;
          height:30px;
          width:300px;
          }
      
        td:hover
        {
            background-color:black;
            color:black;
        }
        .style1
        {
            color: #0000FF;
            font-family: "Cooper Black";
            font-size: 60pt;
            text-align: center;
        }
        .style2
        {
            text-align: center;
        }
        .style3
        {
            font-family: "Cooper Black";
            font-size: 20pt;
            color: #0000FF;
        }
        .style5
      {
          color: #0000FF;
      }
    </style>
    
</head>
<body style="background-color: #000000">
 <form id="form1" runat="server">
  <div class="style1" style="height: 84px">
    
        Daman Tourism</div>
    <hr />
    <div>
    <table cellpadding="10" cellspacing="10" width="100%" 
            style="background-color: #000000">
    <tr>
    <td class="style2">
        <asp:LinkButton ID="LinkButton1" runat="server" 
            PostBackUrl="~/Admin View Users.aspx" CssClass="style3" Font-Underline="False" 
            ForeColor="Blue">Users</asp:LinkButton>
        </td>
    <td class="style2">
        <asp:LinkButton ID="LinkButton2" runat="server" 
            PostBackUrl="~/Insert Hotel Info.aspx" CssClass="style3" Font-Underline="False" 
            ForeColor="Blue">Hotel</asp:LinkButton>
        </td>
    <td class="style2">
        <asp:LinkButton ID="LinkButton3" runat="server" 
            PostBackUrl="~/Admin Insert Rent.aspx" CssClass="style3" Font-Underline="False" 
            ForeColor="Blue">Rent</asp:LinkButton>
        </td>
    <td class="style2">
        <asp:LinkButton ID="LinkButton4" runat="server" 
            PostBackUrl="~/Admin View Bookings.aspx" CssClass="style3" 
            Font-Underline="False" ForeColor="Blue">Booking</asp:LinkButton>
        </td>
    <td class="style2">
        <asp:LinkButton ID="LinkButton5" runat="server" 
            PostBackUrl="~/Admin Feeds.aspx" CssClass="style3" Font-Underline="False" 
            ForeColor="Blue">Feedback</asp:LinkButton>
        </td>
    <td class="style2">
        <asp:LinkButton ID="LinkButton6" runat="server" PostBackUrl="~/Login.aspx" 
            CssClass="style3" Font-Underline="False" ForeColor="Blue">LogOut</asp:LinkButton>
        </td>
    </tr>

    </table>
    </div>
    <hr />
    <div>
    <br />

 <table border="1" class="round" align="center"><tr><td>
 
 
 
 
 <table align="center" style="width: 401px" cellpadding="10" cellspacing="5">
  <tr>
  
  <td class="style2">
  <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Hotel Name" 
          CssClass="round"></asp:TextBox>
  </td>
</tr>
 <tr>
  <td class="style2">
  <asp:TextBox ID="TextBox2" runat="server" placeholder="It's Location" 
          CssClass="round"></asp:TextBox>
  </td>
</tr>
 <tr>
  <td class="style2"><asp:TextBox ID="TextBox3" runat="server" placeholder="Hotel's Email ID" 
          CssClass="round"></asp:TextBox></td>
</tr>
 <tr>
  <td class="style2"><asp:TextBox ID="TextBox4" runat="server" placeholder="Contact Details" 
          CssClass="round"></asp:TextBox></td>
</tr>
 <tr>
  <td class="style2">
      <asp:TextBox ID="TextBox21" runat="server" placeholder="Short Description" 
          CssClass="round" TextMode="multiline"></asp:TextBox></td>
</tr>
 <tr>
  <td class="style2"><asp:CheckBoxList ID="CheckBoxList1" runat="server" 
          RepeatDirection="Horizontal" 
          
          style="font-family: 'Comic Sans MS'; font-size: 10pt;font-weight:bold; color: #0000FF;">
          <asp:ListItem>Pool</asp:ListItem>
          <asp:ListItem>Spa</asp:ListItem>
          <asp:ListItem>Breakfast</asp:ListItem>
          <asp:ListItem>WiFi</asp:ListItem>
          <asp:ListItem>Newspaper</asp:ListItem>
      </asp:CheckBoxList></td>
</tr>
  
  <tr><td style="font-family: 'Comic Sans MS'; color: #0000FF; text-align: center">-----Single Room-----</td></tr>
  <tr><td class="style2"><asp:TextBox ID="TextBox7" runat="server" placeholder="Booking.com" 
          CssClass="round"></asp:TextBox></td></tr>
  <tr><td class="style2"><asp:TextBox ID="TextBox8" runat="server" placeholder="TravelGuru.com" 
          CssClass="round"></asp:TextBox></td></tr>
  <tr><td class="style2"> <asp:TextBox ID="TextBox9" runat="server" placeholder="Yatra.com" 
          CssClass="round"></asp:TextBox></td></tr>
  <tr><td class="style2"><asp:TextBox ID="TextBox10" runat="server" placeholder="ClearTrip.com" 
          CssClass="round"></asp:TextBox></td></tr>
  <tr><td style="font-weight: 700; color: #0000FF; font-family: 'Comic Sans MS'; text-align: center">-----Double Room-----</td></tr>
  <tr><td class="style2"><asp:TextBox ID="TextBox12" runat="server" placeholder="Booking.com" 
          CssClass="round"></asp:TextBox></td></tr>
<tr><td class="style2"><asp:TextBox ID="TextBox13" runat="server" placeholder="TravelGuru.com" 
        CssClass="round"></asp:TextBox></td></tr>
<tr><td class="style2"><asp:TextBox ID="TextBox14" runat="server" placeholder="Yatra.com" 
        CssClass="round"></asp:TextBox></td></tr>
<tr><td class="style2"><asp:TextBox ID="TextBox15" runat="server" placeholder="ClearTrip.com" 
        CssClass="round"></asp:TextBox></td></tr>
  <tr><td style="font-family: 'Comic Sans MS'; font-weight: 700; color: #0000FF; text-align: center">-----Family Room-----</td></tr>
    <tr><td class="style2"><asp:TextBox ID="TextBox17" runat="server" CssClass="round" placeholder="Booking.com"></asp:TextBox></td></tr>
  <tr><td class="style2"><asp:TextBox ID="TextBox18" runat="server" CssClass="round" placeholder="TravelGuru.com"></asp:TextBox></td></tr>
  <tr><td class="style2"><asp:TextBox ID="TextBox19" runat="server" CssClass="round" placeholder="Yatra.com"></asp:TextBox></td></tr>
  <tr><td class="style2"><asp:TextBox ID="TextBox20" runat="server" CssClass="round" placeholder="ClearTrip.com"></asp:TextBox></td></tr>
  <tr><td class="style2"><asp:FileUpload ID="FileUpload1" runat="server" 
          placeholder="nhn" style="color: #0000FF"/></td></tr>
  <tr><td class="style2"><asp:FileUpload ID="FileUpload2" runat="server" 
          CssClass="style5" /></td></tr>
  <tr><td class="style2"><asp:FileUpload ID="FileUpload3" runat="server" 
          CssClass="style5" /></td></tr>
  <tr><td class="style2"><asp:FileUpload ID="FileUpload4" runat="server" 
          CssClass="style5" /></td></tr>
  <tr><td class="style2"><asp:Button ID="Button1" runat="server" CssClass="round" Text="Insert" 
          Height="30px" 
          style="color: #0000FF; font-weight: 700; font-family: 'Comic Sans MS'" 
          Width="300px" /></td></tr>
  </table>
 </td></tr></table>   

  
  
  
  
   
 
 </div>
 </form>
</body>
</html>
