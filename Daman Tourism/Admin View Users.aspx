<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin View Users.aspx.vb" Inherits="Admin_View_Users" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>View Users</title>
    <style type="text/css">
        td:hover
        {
            background-color:white;
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
        .style4
        {
            font-family: "Cooper Black";
            font-size: 20pt;
            color: #FFFFFF;
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
    <div class="style2">
        <br />
        <span class="style3">Website Users</span><span class="style4"><br />
        <br />
        </span>
   <center>     <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="id" DataSourceID="SqlDataSource1" 
            style="font-family: 'Comic Sans MS'; font-size: 15pt; color: #0000FF" 
           CellPadding="10" CellSpacing="10" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" 
                    ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="gen" HeaderText="gen" SortExpression="gen" />
                <asp:BoundField DataField="dob" HeaderText="dob" 
                    SortExpression="dob" />
            </Columns>
        </asp:GridView></center>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            
            SelectCommand="SELECT [id], [name], [city], [mob], [email], [gen], [dob] FROM [register]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
