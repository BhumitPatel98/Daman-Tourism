<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login Page</title>
    <style type="text/css" >
        a:hover
        {
        color:White;    
        }
        .input1
         { 
            background: url(icon-video.png) no-repeat;
            padding-left: 60px;
            border:1px solid #ccc;
        }
.input2 { 
  background: url(lock.png) no-repeat;
            padding-left: 60px;
            border:1px solid #ccc;
}
        .round
        {
            border-radius:10px;
            }
.hover
{
	font-color:blue;
}
</style>
    <style type="text/css">
        .opac
        {
            opacity: 1.0;
            filter: alpha(opacity=90); /* For IE8 and earlier */
        }
.trans
{
    opacity: 0.4;
    filter: alpha(opacity=40); /* For IE8 and earlier */
}
}
</style>
    <style type="text/css">
.s1
{
	border-radius:50px;
}
        .style4
        {
            border-radius: 10px;
            font-family: "Bernard MT Condensed";
            font-size: xx-large;
            color: #FFFFFF;
            text-align: center;
        }
        .style5
        {
            text-align: center;
            width: 157px;
        }
        .style3
        {
            color: #003366;
        }
        .style6
        {
            text-align: center;
            width: 148px;
        }
        .style2
        {
            border-radius: 250px;
            background-color: white;
            height: 250px;
            width: 250px;
            text-align: center;
            color: #003366;
        }
        .style1
        {
            text-align: center;
        }
        </style>
    
    </head>
<body style="height: 650px">
    <form id="form1" runat="server">
    <div style="height: 653px; background-image: url('daman/beautiful-beach-hd-wallpaper-919.jpg');">
    <div class="style2" 
            style="font-family: 'Bernard MT Condensed';position:fixed; font-size: 38pt; top: 26px; left: 77px;">
        <br />
        Daman<br />
&nbsp;Tourism</div>
        
                    
         
    
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <div style="position:fixed; top: 166px; left: 608px; height: 50px; width: 149px; background-color: #3366FF;" 
            class="style4">Login</div>
            <table align="right" 
                
            style="width: 28%; height: 250px; background-color: #FFFFFF; position: fixed; top: 201px; left: 607px;" 
            class="round">
                <tr>
                    <td style="background-color: #FFFFFF; text-align: center;">
                        <br />
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="input1 round" Height="40px" 
                            placeholder="Username" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="TextBox1" ErrorMessage="*" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <br />
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="input2 round" Height="40px" 
                            placeholder="Password" Width="220px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                            ControlToValidate="TextBox2" ErrorMessage="*" ForeColor="Red" 
                            SetFocusOnError="True"></asp:RequiredFieldValidator>
                        <br />
                        <asp:Label ID="Label1" runat="server" 
                            style="font-family: 'Agency FB'; font-size: 15pt" Text="Label" Visible="False"></asp:Label>
                        <br />
                        <br />
                        <asp:LinkButton ID="LinkButton5" runat="server" Font-Names="Agency FB" 
                            Font-Size="15pt" Font-Underline="False" ForeColor="Black" 
                            PostBackUrl="~/Register.aspx">New User ?</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton6" runat="server" Font-Names="Agency FB" 
                            Font-Size="15pt" Font-Underline="False" ForeColor="Black">Forgot Password?</asp:LinkButton>
                        &nbsp;<br />
                        <br />
                        <asp:Button ID="Button1" runat="server" BackColor="#0099FF" CssClass="round" 
                            Font-Bold="False" Font-Names="Agency FB" Font-Size="18pt" ForeColor="White" 
                            Height="36px" style="text-align: center" Text="Login" Width="97px" />
                    </td>
                </tr>
            </table>
     
    
    </div>
    </form>
</body>
</html>

