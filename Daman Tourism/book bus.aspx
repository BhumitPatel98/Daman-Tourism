<%@ Page Language="VB" AutoEventWireup="false" CodeFile="book bus.aspx.vb" Inherits="book_bus" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking bus</title>
       <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
                    <script src="js/jquery-1.6.js" type="text/javascript"></script>
                      <script src="js/jquery-ui.js" type="text/javascript"></script>
                      <link href="jquery-ui-1.10.3/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
                                              <script type ="text/javascript">

                                    $(function () {
                                        $("#TextBox1").datepicker({
                                            changeMonth: true,
                                            changeYear: true
                                        });
                                    });
</script>
                  
                                <script type ="text/javascript">

                                    $(function () {
                                        $("#TextBox2").datepicker({
                                            changeMonth: true,
                                            changeYear: true
                                        });
                                    });
</script>
     
    
    <style type="text/css">
        .round
        {
            border-radius:5px;
            height:22px;
            width:220px;
            
        }
        .tdfont
        {
            font-family:Segoe UI;
            font-size:20px;
            color:#003366;
            
        }
        #tbl
        {
            width: 605px;
            background-color: #FFFFFF;
        }
        .style1
        {
            text-align: center;
        }
        .style10
        {
            text-align: left;
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
        }
        .style12
        {
            height: 32px;
        }
        .style3
        {
            color: #FFFFFF;
        }
        </style>
</head>
<body style="background-image:url('daman/beautiful-beach-hd-wallpaper-919.jpg');">
    <form id="form1" runat="server">
    <div style="height: 829px">
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
        <br />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
        <asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <center><asp:Label ID="Label13" runat="server" CssClass="style3" style="font-family:Segoe Script;font-weight:bold;font-size:30pt; text-align: center;"
            Text="Label"></asp:Label></center>
        <br />
       
        <table style="width: 45%; height: 95px; margin-top: 0px; background-color: #FFFFFF;" 
            align="center">
            <tr>
                <td class="tdfont">
                    <asp:Label ID="Label2" runat="server" Text="Date of Journey :"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="round"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdfont">
                    <asp:Label ID="Label3" runat="server" Text="Date of Return :"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="round"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdfont">
                    <asp:Label ID="Label11" runat="server" Text="No. of Travellers :"></asp:Label>
                </td>
                <td class="style10">
                    <asp:TextBox ID="TextBox12" runat="server" CssClass="round"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdfont">
                    <asp:Label ID="Label5" runat="server" Text="Mode of Payment :"></asp:Label>
                </td>
                <td class="style10">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" 
                        OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged" 
                        AutoPostBack="True" style="font-family:Segoe UI;font-size:12px;">
                        <asp:ListItem>Credit Card</asp:ListItem>
                        <asp:ListItem>Debit card</asp:ListItem>
                        <asp:ListItem>Pay after Travel</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            
             </table>
        <table id="tbl" runat="server" visible="false" align="center">
        <tr>
                <td class="tdfont" width="260px">
                    <asp:Label ID="Label6" runat="server" Text="Type of card :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButtonList ID="RadioButtonList2" runat="server" 
                        RepeatDirection="Horizontal" style="font-family:Segoe UI;font-size:12px;">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        <tr>
                <td class="tdfont" width="260px">
                    <asp:Label ID="Label7" runat="server" Text="Name of card :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="round"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdfont" width="260px">
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
                </td>
            </tr>
            <tr>
                <td class="style11" width="260px">
                    <asp:Label ID="Label9" runat="server" Text="Expiry Date :"></asp:Label>
                </td>
                <td class="style12">
                    <asp:TextBox ID="TextBox9" runat="server" Height="22px" Width="100px" 
                        CssClass="round2" placeholder="Month"></asp:TextBox>
                    &nbsp;&nbsp;
                    <asp:TextBox ID="TextBox10" runat="server" Height="22px" Width="100px" 
                        CssClass="round2" placeholder="Year"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="tdfont" width="260px">
                    <asp:Label ID="Label10" runat="server" Text="CVV :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" CssClass="round" placeholder="XXX"></asp:TextBox>
                </td>
            </tr>
        </table>
            
            <div style="align:center; text-align: center;"><asp:Button ID="Button1" 
                    runat="server" Text="Proceed" 
                    style="text-align: left; font-weight: 700; color: #FFFFFF; background-color: #0000FF;" /></div>   
      
        <br />
            
               
       
    </div>
    </form>
</body>
</html>
