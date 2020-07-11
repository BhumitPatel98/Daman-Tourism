<%@ Page Language="VB" AutoEventWireup="false" CodeFile="View Deal.aspx.vb" Inherits="View_Deal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/travelguru.PNG" 
            Visible="False" Width="200px" />
        <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/yatra.PNG" 
            Visible="False" Width="200px" />
        <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/cleartrip.PNG" 
            Visible="False" Width="200px" />
        <asp:Image ID="Image4" runat="server" Height="50px" ImageUrl="~/booking.PNG" 
            Visible="False" Width="200px" />
        <br />
        <table style="width: 43%;">
            <tr>
                <td>
                    Arrival</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Departure</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    No. of people</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    Hotel Name</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    type of room</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    amount</td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" Enabled="False"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
