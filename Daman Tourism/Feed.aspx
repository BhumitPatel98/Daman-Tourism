<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Feed.aspx.vb" Inherits="Feed" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Feedback</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
    </style>
</head>
<body style="background-image:url('daman/beautiful-beach-hd-wallpaper-919.jpg');">
    <form id="form1" runat="server">
    <div>
    <table style="width: 100%; height: 145px;">
            <tr>
                <td class="style1"> 
                <asp:ImageButton ID="ImageButton2" runat="server" 
                        style="border-radius:50px;border-width:2px;border-style:solid;border-color:#003366;" 
                        ImageUrl="~/icon-video.png" Height="40" Width="40" Visible="False"/>
                </td>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Home</asp:LinkButton>
                </td>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Book</asp:LinkButton>
                </td>
                 <td class="style1" 
                    style="font-family:Bernard MT Condensed;color:#003366;background-color:white;border-radius:150%;font-weight:bold;font-size:40px;" 
                    height="150" width="150">Daman Tourism</td>
                <td cFlass="style1" style="text-align: center" class="style9">
                    <asp:LinkButton ID="LinkButton3" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Rent</asp:LinkButton>
                </td>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton4" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Feed</asp:LinkButton>
                </td>
                <td class="style1"> 
                <asp:ImageButton ID="ImageButton1" runat="server" style="border-radius:50px;border-width:2px;border-style:solid;border-color:#003366;" ImageUrl="~/icon-video.png" Height="40" Width="40"/>
                </td>
            </tr>
        </table>
        <div>
        
        <br /><br /><br />
            <table align="center" style="width: 27%; background-color: #FFFFFF;border-radius:20px;">
                <tr>
                    <td class="style1">
                        <asp:TextBox ID="TextBox1" runat="server" Height="60px" TextMode="MultiLine" 
                            Width="316px" placeholder="Your Feedback"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:Button ID="Button1" runat="server" 
                            style="font-family: 'Comic Sans MS';border-radius:5px; font-weight: 700; color: #FFFFFF; background-color: #0000FF" 
                            Text="Give Feedback" Width="142px" />
                    </td>
                </tr>
                </table>
        <center>
        <br /><br />
              <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
        <table style="font-family:Comic Sans MS;font-size:20px;color:Blue;background-color:White;">
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
