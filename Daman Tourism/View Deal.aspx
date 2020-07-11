<%@ Page Language="VB" AutoEventWireup="false" CodeFile="View Deal.aspx.vb" Inherits="View_Deal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>View Deal</title>
       <style type="text/css">
           .round
           {
               border-radius:5px;
               height:30px;
               width:220px;}
                .input1
        { 
            background: url(events.png) no-repeat;
            padding-left: 60px;
            border:1px solid #ccc;
        }
        .input2
        {
            background: url(familyroom.jpg) no-repeat;
            padding-left: 60px;
            border:1px solid #ccc;
        }
       </style>
        <style type="text/css">
          .linkstyle
        {
        font-family:Bernard MT Condensed;
         font-Size:30pt;
          font-Underline:False;   
          color:#003366;
        }
        .ftt
        {
            font-family:Bernard MT Condensed;
        }
        .txt
        {
            border-radius:10px;
            height:22px;
            width:220px;
        }
    </style>
     <style type="text/css">
       .rating {
          overflow: hidden;
          display: inline-block;
      }
      .rating-input {
          position: absolute;
          left: 0;
          top: -50px;
      }
      .rating-star {        
          display: block;
          float: right;        
          width: 16px;
          height: 16px;
          background: url('star.png') 0 -16px;
      }
      .rating-star:hover,
      .rating-star:hover ~ .rating-star,
      .rating-input:checked ~ .rating-star {
          background-position: 0 0;
      }

/* Just for the demo */
body {
    margin: 20px;
}
     </style>
       <style type="text/css">
           
    .thumbnail {
    width: 320px;
    height: 240px;
}

.image {
    width: 100%;
    height: 100%;    
}

.image img {
    -webkit-transition: all 1s ease; /* Safari and Chrome */
    -moz-transition: all 1s ease; /* Firefox */
    -ms-transition: all 1s ease; /* IE 9 */
    -o-transition: all 1s ease; /* Opera */
    transition: all 1s ease;
}

.image:hover img {
    -webkit-transform:scale(1.25); /* Safari and Chrome */
    -moz-transform:scale(1.25); /* Firefox */
    -ms-transform:scale(1.25); /* IE 9 */
    -o-transform:scale(1.25); /* Opera */
     transform:scale(1.25);
}
</style>
     <style type="text/css">
        .fontst
        {
            font-family :Bodoni MT Condensed;
         
            font-size :25px;
            
            }
        .nrmlabel
        {
            font-family:Book Antiqua;
            font-weight:bold;
            color:Navy;
           
        }
        .round
        {
            border-radius:10px;
        }
        .input1
        { 
            background: url(events.png) no-repeat;
            padding-left: 60px;
            border:1px solid #ccc;
        }
        .input2
        {
            background: url(familyroom.jpg) no-repeat;
            padding-left: 60px;
            border:1px solid #ccc;
        }
     
        .header
        {
            font-size:25px;
            font-family:Bernard MT Condensed;
            
           
        }
        a:hover
        {
        color:Gray;
        }
        .style1
        {
            text-align: center;
        }
        .header
        {
           border-radius:150px;
           height:150px;
           width:150px;
        }
         .style7
         {
             font-family: "Agency FB";
             font-size: 20pt;
             color: #003366;
             text-align: left;
         }
         .style9
         {
             width: 200px;
         }
         .style10
         {
             width: 201px;
         }
         .style11
         {
             font-family: "Agency FB";
             font-size: 20pt;
             color: #003366;
             width: 141px;
         }
         .style12
         {
             color: #FF0000;
             background-color: #FFFFFF;
         }
    </style>
</head>
<body style="background-image:url('daman/beautiful-beach-hd-wallpaper-919.jpg');">
    <form id="form1" runat="server">
   
 <div class="style1">
 
        <table style="width: 100%; height: 145px;">
            <tr>
                <td class="style11"> 
                <asp:ImageButton ID="ImageButton2" runat="server" 
                        style="border-radius:50px;border-width:2px;border-style:solid;border-color:#003366;" 
                        ImageUrl="~/icon-video.png" Height="40" Width="40" Visible="False"/>
                </td>
                <td class="style9">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Home</asp:LinkButton>
                </td>
                <td class="style9">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Book</asp:LinkButton>
                </td>
                 <td 
                    style="font-family:Bernard MT Condensed;color:#003366;background-color:white;border-radius:150%;font-weight:bold;font-size:40px;" 
                    height="150" width="150">Daman Tourism</td>
                <td cFlass="style1" class="style9">
                    <asp:LinkButton ID="LinkButton3" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Rent</asp:LinkButton>
                </td>
                <td class="style10">
                    <asp:LinkButton ID="LinkButton4" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Feed</asp:LinkButton>
                </td>
                <td> 
                <asp:ImageButton ID="ImageButton1" runat="server" style="border-radius:50px;border-width:2px;border-style:solid;border-color:#003366;" ImageUrl="~/icon-video.png" Height="40" Width="40"/>
                </td>
            </tr>
        </table>
 
 <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
        <br />
        <br />
        <br />
        <br />
        <br />
        <table style="width: 43%; background-color: #FFFFFF;border-radius:20px;" align="center" 
            cellpadding="5" cellspacing="5">
            <tr>
                <td class="style7">
                    Site</td>
                <td>
        <asp:Image ID="Image1" runat="server" Height="50px" ImageUrl="~/travelguru.PNG" 
            Visible="False" Width="200px" />
        <asp:Image ID="Image2" runat="server" Height="50px" ImageUrl="~/yatra.PNG" 
            Visible="False" Width="200px" />
        <asp:Image ID="Image3" runat="server" Height="50px" ImageUrl="~/cleartrip.PNG" 
            Visible="False" Width="200px" />
        <asp:Image ID="Image4" runat="server" Height="50px" ImageUrl="~/booking.PNG" 
            Visible="False" Width="200px" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Arrival</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" CssClass="style12" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Departure</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox2" CssClass="style12" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    No. of people</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox3" CssClass="style12" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Hotel Name</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Enabled="False" CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="TextBox4" CssClass="style12" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Type of room</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" Enabled="False" CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="TextBox5" CssClass="style12" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    Amount</td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" Enabled="False" CssClass="round"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="TextBox7" CssClass="style12" ErrorMessage="*"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" BackColor="Navy" CssClass="round" 
                        Font-Bold="True" Font-Names="Agency FB" Font-Size="15pt" ForeColor="White" 
                        Text="Book" />
                </td>
            </tr>
        </table>
 </div>  
   
   
   
  
    </form>
</body>
</html>