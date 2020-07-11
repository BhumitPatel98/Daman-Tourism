<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Book Hotel Room.aspx.vb" Inherits="Book_Hotel_Room" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Booking Page</title>
     
       <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
                    <script src="js/jquery-1.6.js" type="text/javascript"></script>
                      <script src="js/jquery-ui.js" type="text/javascript"></script>
                      <link href="jquery-ui-1.10.3/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
                            
                                <script type ="text/javascript">

                                    $(function () {
                                        $("#TextBox1").datepicker({
                                        dateFormat: 'dd/mm/yy',
                                            changeMonth: true,
                                            changeYear: true
                                        });
                                    });
</script>
                  
                                <script type ="text/javascript">

                                    $(function () {
                                        $("#TextBox2").datepicker({
                                            dateFormat: 'dd/mm/yy',
                                            changeMonth: true,
                                            changeYear: true
                                        });
                                    });
</script>
     
    
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
         .style7
         {
             text-align: center;
             width: 142px;
         }
        .style8
        {
            text-align: center;
            width: 200px;
        }
        .style9
        {
            width: 200px;
        }
        .style10
        {
            text-align: center;
            width: 201px;
        }
        </style>
</head>
<body style="background-image:url('daman/beautiful-beach-hd-wallpaper-919.jpg');height: 1192px;">
    <form id="form1" runat="server">
    <div style="height: 1192px;">
    
        
    
        <table style="width: 100%; height: 145px;">
            <tr>
                <td class="style7"> 
                <asp:ImageButton ID="ImageButton2" runat="server" 
                        style="border-radius:50px;border-width:2px;border-style:solid;border-color:#003366;" 
                        ImageUrl="~/icon-video.png" Height="40" Width="40" Visible="False"/>
                </td>
                <td class="style8">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Home</asp:LinkButton>
                </td>
                <td class="style8">
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
                <td class="style10">
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
        <div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Height="40px" Width="220px" 
                CssClass="input1 round" BackColor="White"></asp:TextBox>
&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server" Height="40px" Width="220px" 
                CssClass="input1 round" BackColor="White"></asp:TextBox>
            &nbsp;&nbsp;
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="round input2" 
                Height="45px" Width="250px" BackColor="White" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem>Double Room</asp:ListItem>
                <asp:ListItem>Single Room</asp:ListItem>
                <asp:ListItem>Family/Multiple Rooms</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
           <br />
        </div>
        <table style="width:80%; background-color: #FFFFFF;" class="round" 
            align="center">
            <tr>
                 <td>
                     <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1">
                     <ItemTemplate>
                     <table>
                     <tr>
                     <td>
                         <asp:Image ID="Image1" runat="server" ImageUrl ='<%# Eval("mimg") %>' Height="200" Width="200" class="round" BorderStyle ="Solid" BorderWidth ="5px" /></td>
                     <td>
                         <asp:Label ID="Label9" runat="server" Text='<%# eval("name") %>' style="font-family :Bodoni MT Condensed ;font-weight:Bold;font-size:50px;"></asp:Label><br />
                         <asp:Image ID="Image2" runat="server" height="30" Width="30" ImageUrl="~/location-icon-map-location_map_pin_navy_blue3.png"/> <asp:Label ID="Label10" runat="server" Text='<%# eval("loc") %>' style="font-family :Times New Roman  ;font-size:20px;"></asp:Label><br />
                         <asp:Image ID="Image3" runat="server" height="30" Width="30" ImageUrl="~/food-service-sign-blue-plate-with-outline-knife-and-fork-hi.png"/> <asp:Label ID="Label11" runat="server" Text='<%# eval("fac") %>' style="font-family :Times New Roman  ;font-size:20px;"></asp:Label><br />
                         <asp:Image ID="Image4" runat="server"  height="30" Width="30" ImageUrl="~/email-12-xxl.png"/> <asp:Label ID="Label12" runat="server" Text='<%# eval("email") %>' style="font-family :Times New Roman  ;font-size:20px;"></asp:Label><br />
 <asp:Image ID="Image5" runat="server" height="30" Width="30" ImageUrl="~/phone-17-xxl.png"/>  <asp:Label ID="Label13" runat="server" Text='<%# eval("phno") %>' style="font-family :Times New Roman  ;font-size:20px;"></asp:Label>
                     </td>
                     </tr>
                     </table>
                     </ItemTemplate>
                     </asp:Repeater>
                     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                         ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
                         SelectCommand="SELECT * FROM [basic]"></asp:SqlDataSource>
                 </td>
                   <td> <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                    <table style="background-color: #FFFFFF; border-style:solid;border-color: #0000FF;width:360px; height: 150px;" class="round">
                    
                    <tr class="fontst">
                    
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Booking.com :"></asp:Label>
                           <del>&#2352;</del>  
                           <asp:Label ID="Label1" runat="server" Text='<%# eval("book") %>'></asp:Label></td>
                           <td>
                        <asp:Label ID="Label4" runat="server" Text="TravelGuru.com :"></asp:Label> 
                          <del>&#2352;</del> 
                           <asp:Label ID="Label2" runat="server" Text='<%# eval("travel") %>'></asp:Label>
                   </td>
                  
                   </tr>

                   <tr class="fontst">
                   <td>
                     <asp:Label ID="Label5" runat="server" Text="Yatra.com :"></asp:Label>  
                      <del>&#2352;</del>
                        <asp:Label ID="Label6" runat="server" Text='<%# eval("yatra") %>'></asp:Label>  
                        </td>
                        <td>

                        <asp:Label ID="Label7" runat="server" Text="ClearTrip.com :"></asp:Label>  
                         <del>&#2352;</del>  
                         <asp:Label ID="Label8" runat="server" Text='<%# eval("clear") %>'></asp:Label>
                    </td>
                    </tr>
                    <tr style="font-family:Bodoni MT Black;color:green;font-size:20px;text-align:center;">
                    <td colspan="2">
                        <asp:Label ID="Label14" runat="server" Text="Best Deal"></asp:Label>
                        </td>
                        </tr>
                    <tr style="background-color:Green;font-family:Bodoni MT Black;color:White;font-size:20px;text-align:center;">
                    <td colspan="2">
                    <asp:Label ID="Label15" runat="server" Text='<%# eval("minpricesite") %>'></asp:Label>
                       : <del>&#2352;</del>
                        <asp:Label ID="Label16" runat="server" Text='<%# eval("minprice") %>'></asp:Label>
                    </td>
                    </tr>
                 <tr style="text-align:center;color:Green;font-family:Agency FB;font-size:20px;">
                 <td>
                     <asp:LinkButton ID="LinkButton5" runat="server" PostBackUrl='<%#"~/View Deal.aspx?"&databinder.eval(container.dataitem,"hid")%>'>View Deal</asp:LinkButton></td>
                 <td><asp:LinkButton ID="LinkButton6" runat="server"  PostBackUrl='<%#"~/View Hotel.aspx?"&databinder.eval(container.dataitem,"hid")%>'>View Hotel</asp:LinkButton></td>
                 </tr>
                    </table>
                  <br />
                    </ItemTemplate>
                    </asp:Repeater>
                  </td>
                  <td>  &nbsp;</td>
               
            </tr>

        </table>
    
    </div>
    </form>
</body>
</html>
