<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin Feeds.aspx.vb" Inherits="Admin_Feeds" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
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
        .style6
        {
            font-family: "Comic Sans MS";
            font-size: 20pt;
            color: #0000FF;
            font-weight: bold;
        }
        .style7
        {
            font-family: "Comic Sans MS";
            font-size: 20pt;
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
    <div>
    <br class="style6" />

    <center>
    <h1 class="style7">User Feedbacks</h1>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <table style="font-family:Comic Sans MS;font-size:20px;color:Blue;">
        <tr><td>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/icon-video.png" Height="20px" Width="20px" style="border-radius:150%"/>
            <asp:Label ID="Label1" runat="server" Text='<%# eval("name") %>' style="font-weight:bold;"></asp:Label></td></tr>
        <tr><td>&quot;<asp:Label ID="Label2" runat="server" Text='<%# eval("feed") %>'></asp:Label>&quot;</td></tr>
        <tr><td>@<asp:Label ID="Label3" runat="server" Text='<%# eval("dtime") %>'></asp:Label></td></tr>
        </table>
        <hr />
        </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [feedback]"></asp:SqlDataSource>
    </center>
    </div>
    </div>
    </form>
</body>
</html>
