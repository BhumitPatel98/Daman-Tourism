<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin View Bookings.aspx.vb" Inherits="Admin_View_Bookings" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">

    <script type = "text/javascript" >
        function preventBack() { window.history.forward(); }
        setTimeout("preventBack()", 0);
        window.onunload = function () { null };
</script>
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
        .style2
        {
            border-radius: 150px;
            background-color: white;
            height: 150px;
            width: 150px;
            text-align: center;
            color: #003366;
        }
        .style3
        {
            color: #003366;
        }
        .style4
        {
            text-align: center;
            width: 67px;
        }
        .style5
        {
            text-align: center;
            width: 157px;
        }
        .style6
        {
            text-align: center;
            width: 148px;
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
   <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script type="text/javascript" src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script type="text/javascript">
      $(function () {
          $("#tabs").tabs();
      });
  </script>
</head>
<body>
    <form id="form1" runat="server">
    <div style="background-image: none">
    <table style="width: 100%; height: 113px;">
            <tr>
                <td class="style4">
                    &nbsp;</td>
                <td class="style5">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="style3">Home</asp:LinkButton>
                </td>
                <td class="style6">
                    <asp:LinkButton ID="LinkButton2" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="style3">Book</asp:LinkButton>
                </td>
                <td class="style2" style="font-family: 'Bernard MT Condensed'; font-size: 25pt;color:White;background-color:#003366;">
                    Daman Tourism</td>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton3" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="style3">Rent</asp:LinkButton>
                </td>
                <td class="style1">
                    <asp:LinkButton ID="LinkButton4" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="style3">Feed</asp:LinkButton>
                       </td>
                    <td style="text-align: center"> <asp:ImageButton ID="ImageButton1" runat="server" style="border-radius:50px;border-width:2px;border-style:solid;border-color:#003366;" ImageUrl="~/icon-video.png" Height="40" Width="40"/>
                </td>
            </tr>
        </table><br /><br />
    <center>
    
    <div id="tabs" style="width:900px;">
     <ul>
    <li><a href="#tabs-1">Bus</a></li>
    <li><a href="#tabs-2">Car</a></li>
    <li><a href="#tabs-3">Bike</a></li>
    <li><a href="#tabs-4">Auto</a></li>
    <li><a href="#tabs-5">Cab</a></li>
  </ul>
    <div id="tabs-1">

        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="bbid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="bbid" HeaderText="Booking ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bbid" />
                <asp:BoundField DataField="doj" HeaderText="Date of Journey" 
                    SortExpression="doj" />
                <asp:BoundField DataField="dor" HeaderText="Date of Returning " 
                    SortExpression="dor" />
                <asp:BoundField DataField="nop" HeaderText="No. of People" 
                    SortExpression="nop" />
                <asp:BoundField DataField="mop" HeaderText="Mode of Payment" 
                    SortExpression="mop" />
                <asp:BoundField DataField="userid" HeaderText="User's Email ID" 
                    SortExpression="userid" />
                <asp:BoundField DataField="busid" HeaderText="Bus ID" SortExpression="busid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:damanConnectionString %>" 
            SelectCommand="SELECT * FROM [busbook]"></asp:SqlDataSource>

        </div>
    <div id="tabs-2">
  
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bcid" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="bcid" HeaderText="Booking ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="bcid" />
                <asp:BoundField DataField="renton" HeaderText="Rent On" 
                    SortExpression="renton" />
                <asp:BoundField DataField="returnon" HeaderText="Return On" 
                    SortExpression="returnon" />
                <asp:BoundField DataField="nop" HeaderText="No of People" 
                    SortExpression="nop" />
                <asp:BoundField DataField="mop" HeaderText="Mode of Payment" 
                    SortExpression="mop" />
                <asp:BoundField DataField="nod" HeaderText="No of Days" SortExpression="nod" />
                <asp:BoundField DataField="pay" HeaderText="Amount Payed" 
                    SortExpression="pay" />
                <asp:BoundField DataField="cid" HeaderText="Car ID" SortExpression="cid" />
                <asp:BoundField DataField="uid" HeaderText="User Email ID" 
                    SortExpression="uid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:damanConnectionString %>" 
            SelectCommand="SELECT * FROM [carbook]"></asp:SqlDataSource>
  
    </div>
    <div id="tabs-3">
 
        <asp:GridView ID="GridView3" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="bbid" DataSourceID="SqlDataSource3">
            <Columns>
                <asp:BoundField DataField="bbid" HeaderText="Bike Book ID" 
                    InsertVisible="False" ReadOnly="True" SortExpression="bbid" />
                <asp:BoundField DataField="renton" HeaderText="Rented On" 
                    SortExpression="renton" />
                <asp:BoundField DataField="returnon" HeaderText="Return On" 
                    SortExpression="returnon" />
                <asp:BoundField DataField="mop" HeaderText="Mode of Payment" 
                    SortExpression="mop" />
                <asp:BoundField DataField="nod" HeaderText="No. Of Days" SortExpression="nod" />
                <asp:BoundField DataField="pay" HeaderText="Payed" SortExpression="pay" />
                <asp:BoundField DataField="bid" HeaderText="Bike ID" SortExpression="bid" />
                <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:damanConnectionString %>" 
            SelectCommand="SELECT * FROM [bikebook]"></asp:SqlDataSource>
 
    </div>
    <div id="tabs-4">
   
  
        <asp:GridView ID="GridView4" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="autoid" DataSourceID="SqlDataSource4">
            <Columns>
                <asp:BoundField DataField="autoid" HeaderText="Auto ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="autoid" />
                <asp:BoundField DataField="startloc" HeaderText="Pick Up Location" 
                    SortExpression="startloc" />
                <asp:BoundField DataField="destination" HeaderText="Destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="nop" HeaderText="No. Of People" 
                    SortExpression="nop" />
                <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
                <asp:BoundField DataField="timendate" HeaderText="Time and Date" 
                    SortExpression="timendate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
            ConnectionString="<%$ ConnectionStrings:damanConnectionString %>" 
            SelectCommand="SELECT * FROM [auto]"></asp:SqlDataSource>
   
  
    </div>
    <div id="tabs-5">

        <asp:GridView ID="GridView5" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="cabid" DataSourceID="SqlDataSource5">
            <Columns>
                <asp:BoundField DataField="cabid" HeaderText="Cab ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="cabid" />
                <asp:BoundField DataField="startloc" HeaderText="Pick Up Location" 
                    SortExpression="startloc" />
                <asp:BoundField DataField="destination" HeaderText="Destination" 
                    SortExpression="destination" />
                <asp:BoundField DataField="purpose" HeaderText="Purpose" 
                    SortExpression="purpose" />
                <asp:BoundField DataField="uid" HeaderText="User ID" SortExpression="uid" />
                <asp:BoundField DataField="timendate" HeaderText="Time and Date" 
                    SortExpression="timendate" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
            ConnectionString="<%$ ConnectionStrings:damanConnectionString %>" 
            SelectCommand="SELECT * FROM [cab]"></asp:SqlDataSource>

    </div>
    </div>
    
    </center>

    
 </div>
    </form>
</body>
</html>
