<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Rent.aspx.vb" Inherits="Rent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title>Rent</title>
  
    <style type="text/css">
          .linkstyle
        {
        font-family:Bernard MT Condensed;
         font-Size:30pt;
          font-Underline:False;   
          color:#003366;
        }
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
        </style>
    <style type="text/css">
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
       
        p
        {
            font-family:Segoe Script;
            font-size:20px;
        }
           
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
        .input1
        { 
            background: url(loc.png) no-repeat;
            padding-left: 30px;
            border:1px solid #ccc;
        }
        .input2
         { 
            background: url(singleroom.png) no-repeat;
            padding-left: 30px;
            border:1px solid #ccc;
        }
        font
        {
            font-family:Comic Sans MS;
            font-size:12px;
            font-weight:bold;
                
        }
        .ftt
        {
            font-family:Comic Sans MS;
            font-size:20px;
            font-weight:bold;
        }
        .roundcorners
        {
           border-radius:5px;
           height:22px;
           width:240px; 
        }
    </style>
  
  <link rel="stylesheet" type="text/css" href="jquery-ui-themes-1.11.2/jquery-ui-themes-1.11.2/themes/smoothness/jquery-ui.css" />
  <script type="text/javascript" src="jquery-1.10.2.js"></script>
  <script type="text/javascript" src="ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
      $(function () {
          $("#tabs").tabs();
      });
  </script>
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
    <br /><br />
    <center>
    <font>
    <div id="tabs" style="width:900px;">
     <ul>
    <li><a href="#tabs-1">Bus</a></li>
    <li><a href="#tabs-2">Car</a></li>
    <li><a href="#tabs-3">Cab</a></li>
    <li><a href="#tabs-4">Auto</a></li>
    <li><a href="#tabs-5">Bike</a></li>
  </ul>
    <div id="tabs-1">
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
        
        <ItemTemplate>
        <table width="950px">
        <tr>
        <td style="width:180px;" class="image">
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# eval("img") %>' Height="150px" Width="150px" style="border-radius:10px;border-width:2px;border-style:solid;border-color:Black;"/></td>
        <td style="width:300px;">
            <asp:Image ID="Image2" runat="server" ImageUrl="~/img/company.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label1" runat="server" Text='<%# eval("name") %>'></asp:Label><br />
           <br /> <asp:Image ID="Image3" runat="server" ImageUrl="~/img/contact.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label2" runat="server" Text='<%# eval("cnt") %>'></asp:Label><br />
           <br /> <asp:Image ID="Image4" runat="server" ImageUrl="~/img/eml.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# eval("email") %>'></asp:Label>
        </td>
        <td style="width:200px;">
            <asp:Image ID="Image5" runat="server" ImageUrl="~/img/start.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label4" runat="server" Text='<%# eval("start") %>'></asp:Label><br />
            <br /><asp:Image ID="Image6" runat="server" ImageUrl="~/img/stop.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label5" runat="server" Text='<%# eval("stop") %>'></asp:Label><br />
            <br /><asp:Image ID="Image7" runat="server" ImageUrl="~/img/duration.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label6" runat="server" Text='<%# eval("HOO") %>'></asp:Label>
        </td>
        <td style="width:200px;">
            <asp:Image ID="Image8" runat="server" ImageUrl="~/img/typeofbus.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label7" runat="server" Text='<%# eval("type") %>'></asp:Label><br />
            <br /><asp:Image ID="Image9" runat="server" ImageUrl="~/img/rate.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label8" runat="server" Text='<%# eval("rate") %>'></asp:Label>/Day<br />
            <br /><asp:Image ID="Image10" runat="server" ImageUrl="~/img/seat.png" Height="30px" Width="30px"/>&nbsp;<asp:Label ID="Label9" runat="server" Text='<%# eval("accmdt") %>'></asp:Label>
        </td>
        <td style="width:200px;">
            <asp:Button ID="Button1" runat="server" Text="Rent" style="background-color:Green;border-radius:10px;color:White;height:30px;width:100px" PostBackUrl='<%#"~/book bus.aspx?"&databinder.eval(container.dataitem,"rid")%>'/></td>
 </tr>
        </table>
        <hr />
        </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [bus]"></asp:SqlDataSource>
        </div>
    <div id="tabs-2">
        <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
        <table>
    <tr>
    <td style="width:180px" class="image">
        <asp:Image ID="Image11" runat="server" ImageUrl='<%# eval("img") %>' style="border-radius:5px;border-style:solid;border-width:2px;border-color:Black;height:150px;width:150px;"/></td>
    <td style="width:300px">
        <asp:Image ID="Image12" runat="server" ImageUrl="~/img/company.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label10" runat="server" Text='<%# eval("name") %>'></asp:Label><br />
        <br /><asp:Image ID="Image13" runat="server" ImageUrl="~/img/contact.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label11" runat="server" Text='<%# eval("cnt") %>'></asp:Label><br />
        <br /><asp:Image ID="Image14" runat="server" ImageUrl="~/img/eml.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label12" runat="server" Text='<%# eval("email") %>'></asp:Label><br />
    </td>
    <td style="width:300px">
    <asp:Image ID="Image15" runat="server" ImageUrl="~/img/car.png" Height="30px" Width="30px"/>
        <asp:Label ID="Label13" runat="server" Text='<%# eval("type") %>'></asp:Label><br />
       <br /> <asp:Image ID="Image16" runat="server" ImageUrl="~/img/rate.png" Height="30px" Width="30px"/>
        <asp:Label ID="Label14" runat="server" Text='<%# eval("rate") %>'></asp:Label>/Day<br />
       <br /> <asp:Image ID="Image17" runat="server" ImageUrl="~/img/seat.png" Height="30px" Width="30px"/>
        <asp:Label ID="Label15" runat="server" Text='<%# eval("accmdt") %>'></asp:Label><br />
    </td>
    <td style="width:300px;"> <asp:Button ID="Button1" runat="server" Text="Rent" style="background-color:Green;border-radius:10px;color:White;height:30px;width:100px" PostBackUrl='<%#"~/book car.aspx?"&databinder.eval(container.dataitem,"cid")%>'/></td>
</td>
    </tr>
    </table>
    <hr />
     </ItemTemplate>
        </asp:Repeater>
    
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [car]"></asp:SqlDataSource>
    
    </div>
    <div id="tabs-3">
        <asp:Image ID="Image19" runat="server" ImageUrl="~/img/cabby.PNG" Height="250px" Width="800px"/>
   <table>
   <tr>
  <td>
      <asp:TextBox ID="TextBox4" runat="server" CssClass="roundcorners input1" placeholder="Pickup From" Height="26px"></asp:TextBox>
  </td>
    </tr>
    <tr>
  <td>
      <asp:TextBox ID="TextBox5" runat="server" CssClass="roundcorners input1" placeholder="Going To" Height="26px"></asp:TextBox>
  </td>
    </tr>
    <tr>
  <td>
      <asp:DropDownList ID="DropDownList1" runat="server" CssClass="roundcorners" Height="28px" Width="270px" placeholder="blah">
          <asp:ListItem>Select Purpose</asp:ListItem>
          <asp:ListItem>Station drop &amp; pick up</asp:ListItem>
          <asp:ListItem>Drop anywhere in Daman</asp:ListItem>
          <asp:ListItem>Station drops and pickup</asp:ListItem>
          <asp:ListItem>Hourly rentals full day,half day</asp:ListItem>
      </asp:DropDownList>
  </td>
    </tr>
    <tr>
    <td align="center">
        <asp:Button ID="Button3" runat="server" Text="Call a Cab" Height="28px" width="200px" CssClass="roundcorners"/></td>
    </tr>
   </table>
    </div>
    <div id="tabs-4">
    <br />
    <center><asp:Image ID="Image18" runat="server" ImageUrl="~/img/autobanner.png"/></center>
    <br />
    <center>
   
    <table cellspacing="5" cellpadding="5">
    <tr>
    <td><asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your location" CssClass="roundcorners input1"></asp:TextBox></td>
    </tr>
    <tr>
    <td><asp:TextBox ID="TextBox2" runat="server" placeholder="Where you want to reach?" CssClass="roundcorners input1"></asp:TextBox></td>
    </tr>
    <tr>
    <td><asp:TextBox ID="TextBox3" runat="server" placeholder="Enter total no. of people" CssClass="roundcorners input2"></asp:TextBox></td>
    </tr>
    <tr>
        <td align="center"><asp:Button ID="Button2" runat="server" Text="Call an Auto" style="border-radius:5px;" height="28px" Width="200px"/></td>
    </tr>
    </table>
   
    </center>
    




    <table>
    <tr>
    <td><asp:Image ID="Image1" runat="server" ImageUrl="~/img/speed.png" Height="150px" Width="150px"/></td>
    <td><p>Click and choose your ride. Request a ride and let our driver take you to your world of travel.</p>
    <hr />
    </td>
    </tr>
    <tr>
    <td><asp:Image ID="Image2" runat="server" ImageUrl="~/img/affordable.png" Height="150px" Width="150px"/></td>
    <td> <p>Minimizing auto charges, maximizing customer satisfaction. Save up to 32% on total costs/fares compared to regular auto drives.</p>
   <hr /> 
   </td>
    </tr>
    <tr>
    <td><asp:Image ID="Image3" runat="server" ImageUrl="~/img/reliable.png" Height="150px" Width="150px"/></td>
    <td> <p>Customer Oriented and trustworthy. Travel with our well-trained drivers as they make your journey enjoyable.</p><hr /></td>
    
    </tr>
    </table>
        
       
       
   
    </div>
    <div id="tabs-5">
    <asp:Repeater ID="Repeater3" runat="server" DataSourceID="SqlDataSource3">
        <ItemTemplate>
        <table>
    <tr>
    <td style="width:180px" class="image">
        <asp:Image ID="Image11" runat="server" ImageUrl='<%# eval("img") %>' style="border-radius:5px;border-style:solid;border-width:2px;border-color:Black;height:150px;width:150px;"/></td>
    <td style="width:300px">
        <asp:Image ID="Image12" runat="server" ImageUrl="~/img/company.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label10" runat="server" Text='<%# eval("name") %>'></asp:Label><br />
        <br /><asp:Image ID="Image13" runat="server" ImageUrl="~/img/contact.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label11" runat="server" Text='<%# eval("cnt") %>'></asp:Label><br />
        <br /><asp:Image ID="Image14" runat="server" ImageUrl="~/img/eml.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label12" runat="server" Text='<%# eval("email") %>'></asp:Label><br />
    </td>
    <td style="width:300px">
    <asp:Image ID="Image15" runat="server" ImageUrl="~/img/bike.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label13" runat="server" Text='<%# eval("type") %>'></asp:Label><br />
        <br /><asp:Image ID="Image16" runat="server" ImageUrl="~/img/rate.png" Height="30px" Width="30px"/>&nbsp;
        <asp:Label ID="Label14" runat="server" Text='<%# eval("rate") %>'></asp:Label>/Day<br />
    </td>
    <td> <asp:Button ID="Button1" runat="server" Text="Rent" style="background-color:Green;border-radius:10px;color:White;height:30px;width:100px"  PostBackUrl='<%#"~/Book bike.aspx?"&databinder.eval(container.dataitem,"bid")%>'/></td>
</td>
    </tr>
    </table>
    <hr />
     </ItemTemplate>
        </asp:Repeater>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
            SelectCommand="SELECT * FROM [bike]"></asp:SqlDataSource>
    </div>
    </div>
    </font>
    </center>

    
 </div>
    </form>
</body>
</html>
