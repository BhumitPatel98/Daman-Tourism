<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Payment.aspx.vb" Inherits="Payment" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Payment</title>
    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style13
        {
            font-family: Segoe UI;
            font-size: 20px;
            color: #003366;
            width: 276px;
        }
        .round
        {
            border-radius:5px;
            height:22px;
            width:220px;
            
        }
        .round2
        { border-radius:5px;
          }
        .style11
        {
            font-family: Segoe UI;
            font-size: 20px;
            color: #003366;
            height: 32px;
            width: 276px;
        }
        .style12
        {
            height: 32px;
        }
        #tbl
        {
            background-color: #FFFFFF;
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
                 <td 
                    style="font-family:Bernard MT Condensed;color:#003366;background-color:white;border-radius:150%;font-weight:bold;font-size:40px;" 
                    height="150" width="150" class="style1">Daman Tourism</td>
                <td cFlass="style1" class="style1">
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
        <div><br /><br />
        
        <table id="tbl" runat="server" align="center">
        <tr>
                <td class="style13">
                    <asp:Label ID="Label6" runat="server" Text="Type of card :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal" style="font-family:Segoe UI;font-size:12px;">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:RadioButtonList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="RadioButtonList2" ErrorMessage="*" 
                        style="background-color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
                <td class="style13">
                    <asp:Label ID="Label7" runat="server" Text="Name of card :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*" style="background-color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label8" runat="server" Text="Card No. :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Width="45px" Height="22px" 
                        CssClass="round2"></asp:TextBox>
                    -<asp:TextBox ID="TextBox6" runat="server" Width="45px" Height="22px" 
                        CssClass="round2"></asp:TextBox>
                    -<asp:TextBox ID="TextBox7" runat="server" Width="45px" Height="22px" 
                        CssClass="round2"></asp:TextBox>
                    -<asp:TextBox ID="TextBox8" runat="server" Width="45px" Height="22px" 
                        CssClass="round2"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox5" ErrorMessage="*" style="background-color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:Label ID="Label9" runat="server" Text="Expiry Date :"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox9" runat="server" Height="22px" Width="100px" 
                        CssClass="round2" placeholder="Month"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server" Height="22px" Width="100px" 
                        CssClass="round2" placeholder="Year"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="*" style="background-color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    <asp:Label ID="Label10" runat="server" Text="CVV :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="round" placeholder="XXX"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox11" ErrorMessage="*" 
                        style="background-color: #FF0000"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style13">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" 
                        style="color: #FFFFFF; font-weight: 700; background-color: #0000FF" Text="Pay" 
                        Width="215px" />
                </td>
            </tr>
        </table>
            
        </div>
    </div>
    </form>
</body>
</html>
