<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Forgot Password.aspx.vb" Inherits="Forgot_Password" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Forgot Password</title>
    <style type="text/css">
        body
        {
           height:100%;
            background-color:Black;
        }
       .t1
       {
           border-radius:5px;
           height:38px;
           width:290px;
      
           
       }
       .input1
         { 
            background: url('icon-video.png') no-repeat;
            padding-left: 60px;
            border:1px solid #ccc;
        }

       
        
        .style1
        {
            border-radius: 5px;
            width: 290px;
            background-color: #FFFFFF;
            color: #000000;
        }
        .style2
        {
            background-color: #FFFFFF;
            color: #000000;
        }
       
        
        .style3
        {
            background-color: #FFFFFF;
            text-align: center;
        }
       
        
        .style4
        {
            color: #000000;
        }
       
        
    </style>
</head>
<body style="background-image:url('daman/beautiful-beach-hd-wallpaper-919.jpg');">
    <form id="form1" runat="server">
    
    <div style="height: 653px; background-image: url('daman/beautiful-beach-hd-wallpaper-919.jpg');">
    <div class="style3" 
            
            style="font-family: 'Bernard MT Condensed';border-radius:150%;position:fixed; font-size: 38pt; top: 26px; left: 77px; width: 250px; height: 250px;">
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
       
     <table align="right" style="background-color:White;border-radius:20px;" cellpadding="10" cellspacing="10">
 <tr>
 <td>
     <asp:TextBox ID="TextBox1" runat="server"  
         placeholder="Enter Email Address" style="border-radius:5px;" CssClass="style4 input1" Height="40px" 
         Width="280px"></asp:TextBox>
 </td>
 </tr>
 <tr>
 <td>
     <asp:DropDownList ID="DropDownList1" runat="server" class="t1" 
                        style="border-radius:5px;" CssClass="style2" Height="40px" 
         Width="350px">
                          <asp:ListItem>What is your favourite food?</asp:ListItem>
                        <asp:ListItem>What is the name of your childhood friend?</asp:ListItem>
                        <asp:ListItem>Your Mother&#39;s Birthday?</asp:ListItem>
                        <asp:ListItem>What is your favourite mobile app?</asp:ListItem>
         <asp:ListItem>Favourite Food</asp:ListItem>
     </asp:DropDownList>
 </td>
 </tr>
 <tr>
 <td>
     <asp:TextBox ID="TextBox2" runat="server" class="t1"  
         placeholder="Enter Answer" CssClass="style1 round" Height="32px" 
         Width="341px"></asp:TextBox>
 </td>
 </tr>
  <tr>
 <td>
     <asp:Button ID="Button1" runat="server" Text="Submit" 
         
         
         style="height:36px;width:350px;border-radius:5px;color:#FFFFFF; font-family:Comic Sans MS;font-size:20px; background-color: #0000FF;"/>
 </td>
 </tr>
 </table>
    
    </div>
    </form>
</body>
</html>
