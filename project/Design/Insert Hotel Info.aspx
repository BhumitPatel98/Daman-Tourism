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
        .style1
        {
            text-align: center;
        }
        .style2
        {
            width: 244px;
        }
        .style3
        {
            width: 492px;
        }
    </style>
</head>
<body>
 <form id="form1" runat="server">
<div id="tabs" style="width: 800px; height: 400px;">
  <ul>
    <li><a href="#tabs-1">Basic Information</a></li>
    <li><a href="#tabs-2">Single Room</a></li>
    <li><a href="#tabs-3">Double Room</a></li>
    <li><a href="#tabs-4">Family Room</a></li>
  </ul>
  <div id="tabs-1">
  
  <table align="left" style="width: 600px">
  <tr>
  <td class="style2">
      <asp:Label ID="Label1" runat="server" Text="Name :"></asp:Label></td>
  <td class="style3">
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label2" runat="server" Text="Location :"></asp:Label></td>
  <td class="style3">
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label3" runat="server" Text="Email Address :"></asp:Label></td>
  <td class="style3">
      <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label4" runat="server" Text="Phone No. :"></asp:Label></td>
  <td class="style3">
      <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label5" runat="server" Text="Faciltities Available :"></asp:Label></td>
  <td class="style3">
      <asp:CheckBoxList ID="CheckBoxList1" runat="server" 
          RepeatDirection="Horizontal">
          <asp:ListItem>Pool</asp:ListItem>
          <asp:ListItem>Spa</asp:ListItem>
          <asp:ListItem>Breakfast</asp:ListItem>
          <asp:ListItem>WiFi</asp:ListItem>
          <asp:ListItem>Newspaper</asp:ListItem>
      </asp:CheckBoxList>
      </td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label6" runat="server" Text="Main Image :"></asp:Label></td>
  <td class="style3">
      <asp:FileUpload ID="FileUpload1" runat="server" /></td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label7" runat="server" Text="Image 1 :"></asp:Label></td>
  <td class="style3">
      <asp:FileUpload ID="FileUpload2" runat="server" /></td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label8" runat="server" Text="Image 2 :"></asp:Label></td>
  <td class="style3">
      <asp:FileUpload ID="FileUpload3" runat="server" /></td>
  </tr>

  <tr>
  <td class="style2">
      <asp:Label ID="Label9" runat="server" Text="Image 3 :"></asp:Label></td>
  <td class="style3">
      <asp:FileUpload ID="FileUpload4" runat="server" /></td>
  </tr>
  </table>
 
     </div>
  <div id="tabs-2">
  
  <table align="center">
  
  <tr>
  <td>
      <asp:Label ID="Label11" runat="server" Text="Booking.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label12" runat="server" Text="Travelguru.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label13" runat="server" Text="Yatra.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label14" runat="server" Text="ClearTrip.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox></td>
  </tr>
  </table>
     </div>
  <div id="tabs-3">
  
  <table align="center">
  
  <tr>
  <td>
      <asp:Label ID="Label16" runat="server" Text="Booking.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label17" runat="server" Text="Travelguru.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label18" runat="server" Text="Yatra.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label19" runat="server" Text="ClearTrip.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox></td>
  </tr>
  </table>
  
     </div>
     <div id="tabs-4">
  
  <table align="center">
  
  <tr>
  <td>
      <asp:Label ID="Label21" runat="server" Text="Booking.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label22" runat="server" Text="Travelguru.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label23" runat="server" Text="Yatra.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td>
      <asp:Label ID="Label24" runat="server" Text="ClearTrip.com price :"></asp:Label></td>
  <td>
      <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox></td>
  </tr>

  <tr>
  <td colspan="2" class="style1">

      <asp:Button ID="Button1" runat="server" Text="Insert" />
      <asp:Button ID="Button2" runat="server" Text="Cancel" />

  </td>
  
  </tr>


  </table>
  
     </div>
</div>
 
 </form>
</body>
</html>
