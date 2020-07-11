<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin View Bookings.aspx.vb" Inherits="Admin_View_Bookings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>Booking</title>
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
    <div>
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
   
    <br />
    <center>
    
    <div id="tabs" style="width:80%;">
     <ul>
     <li><a href="#tabs-6">Room</a></li>
    <li><a href="#tabs-1">Bus</a></li>
    <li><a href="#tabs-2">Car</a></li>
    <li><a href="#tabs-3">Bike</a></li>
    <li><a href="#tabs-4">Auto</a></li>
    <li><a href="#tabs-5">Cab</a></li>
  </ul>
  <div id="tabs-6" style="width:80%;">

      <asp:GridView ID="GridView6" runat="server" AutoGenerateColumns="False" 
          DataKeyNames="bid" DataSourceID="SqlDataSource6" 
          style="color: #0000FF; font-family: 'Comic Sans MS'">
          <Columns>
              <asp:BoundField DataField="bid" HeaderText="Booking ID" InsertVisible="False" 
                  ReadOnly="True" SortExpression="bid" />
              <asp:BoundField DataField="site" HeaderText="Site" SortExpression="site" />
              <asp:BoundField DataField="arriv" HeaderText="Check In" 
                  SortExpression="arriv" />
              <asp:BoundField DataField="depart" HeaderText="Check Out" 
                  SortExpression="depart" />
              <asp:BoundField DataField="nop" HeaderText="No. of people" 
                  SortExpression="nop" />
              <asp:BoundField DataField="name" HeaderText="Hotel" SortExpression="name" />
              <asp:BoundField DataField="tor" HeaderText="Type of Room" 
                  SortExpression="tor" />
              <asp:BoundField DataField="amt" HeaderText="Amount" SortExpression="amt" />
              <asp:BoundField DataField="dtime" HeaderText="@" SortExpression="dtime" />
          </Columns>
      </asp:GridView>
      <asp:SqlDataSource ID="SqlDataSource6" runat="server" 
          ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
          SelectCommand="SELECT * FROM [roombook]"></asp:SqlDataSource>

  </div>
    <div id="tabs-1" style="width:80%;">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="bbid" 
            DataSourceID="SqlDataSource1" 
            style="font-family: 'Comic Sans MS'; color: #0000FF">
            <Columns>
                <asp:BoundField DataField="bbid" HeaderText="Booking ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bbid" />
                <asp:BoundField DataField="doj" HeaderText="Date of Journey" 
                    SortExpression="doj" />
                <asp:BoundField DataField="dor" HeaderText="Date of Returning " 
                    SortExpression="dor" />
                <asp:BoundField DataField="nop" HeaderText="No. of People" 
                    SortExpression="nop" />
                <asp:BoundField DataField="mop" HeaderText="Mode of Payment" 
                    SortExpression="mop" />
                <asp:BoundField DataField="userid" HeaderText="User's Email ID" 
                    SortExpression="userid" />
                <asp:BoundField DataField="busid" HeaderText="Bus ID" SortExpression="busid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [busbook]"></asp:SqlDataSource>

        </div>
    <div id="tabs-2" style="width:80%;">
  
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bcid" DataSourceID="SqlDataSource2" 
            style="font-family: 'Comic Sans MS'; color: #0000FF">
            <Columns>
                <asp:BoundField DataField="bcid" HeaderText="Booking ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bcid" />
                <asp:BoundField DataField="renton" HeaderText="Rent On" 
                    SortExpression="renton" />
                <asp:BoundField DataField="returnon" HeaderText="Return On" 
                    SortExpression="returnon" />
                <asp:BoundField DataField="nop" HeaderText="No of People" 
                    SortExpression="nop" />
                <asp:BoundField DataField="mop" HeaderText="Mode of Payment" 
                    SortExpression="mop" />
                <asp:BoundField DataField="nod" HeaderText="No of Days" SortExpression="nod" />
                <asp:BoundField DataField="pay" HeaderText="Amount Payed" 
                    SortExpression="pay" />
                <asp:BoundField DataField="cid" HeaderText="Car ID" SortExpression="cid" />
                <asp:BoundField DataField="uid" HeaderText="User Email ID" 
                    SortExpression="uid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [carbook]"></asp:SqlDataSource>
  
    </div>
    <div id="tabs-3" style="width:80%;">
 
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bbid" DataSourceID="SqlDataSource3" 
            style="color: #0000FF; font-family: 'Comic Sans MS'">
            <Columns>
                <asp:BoundField DataField="bbid" HeaderText="Bike Book ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="bbid" />
                <asp:BoundField DataField="renton" HeaderText="Rented On" 
                    SortExpression="renton" />
                <asp:BoundField DataField="returnon" HeaderText="Return On" 
                    SortExpression="returnon" />
                <asp:BoundField DataField="mop" HeaderText="Mode of Payment" 
                    SortExpression="mop" />
                <asp:BoundField DataField="nod" HeaderText="No. Of Days" SortExpression="nod" />
                <asp:BoundField DataField="pay" HeaderText="Payed" SortExpression="pay" />
                <asp:BoundField DataField="bid" HeaderText="Bike ID" SortExpression="bid" />
                <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [bikebook]"></asp:SqlDataSource>
 
    </div>
    <div id="tabs-4" style="width:80%;">
   
  
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="autoid" DataSourceID="SqlDataSource4" 
            style="font-family: 'Comic Sans MS'; color: #0000FF">
            <Columns>
                <asp:BoundField DataField="autoid" HeaderText="Auto ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="autoid" />
                <asp:BoundField DataField="startloc" HeaderText="Pick Up Location" 
                    SortExpression="startloc" />
                <asp:BoundField DataField="destination" HeaderText="Destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="nop" HeaderText="No. Of People" 
                    SortExpression="nop" />
                <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
                <asp:BoundField DataField="timendate" HeaderText="Time and Date" 
                    SortExpression="timendate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [auto]"></asp:SqlDataSource>
   
  
    </div>
    <div id="tabs-5" style="width:80%;">

        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="cabid" DataSourceID="SqlDataSource5" 
            style="font-family: 'Comic Sans MS'; color: #0000FF">
            <Columns>
                <asp:BoundField DataField="cabid" HeaderText="Cab ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="cabid" />
                <asp:BoundField DataField="startloc" HeaderText="Pick Up Location" 
                    SortExpression="startloc" />
                <asp:BoundField DataField="destination" HeaderText="Destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="purpose" HeaderText="Purpose" 
                    SortExpression="purpose" />
                <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
                <asp:BoundField DataField="timendate" HeaderText="Time and Date" 
                    SortExpression="timendate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [cab]"></asp:SqlDataSource>

    </div>
    </div>
    
    </center>

    
 </div>
    </form>
</body>
</html>
