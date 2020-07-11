<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
   <head>
      <title>Home</title>
      <style type="text/css">
   
          .btn:hover
{
background-image:none;
background-color:#FF3800;
color:White;
}
          .btn
          {
              border-top-left-radius:10px;
              border-top-right-radius:10px;
             background-color:	white;
              font-family:Lucida Console;
              font-weight:bold;
              font-size:15px;
              color:#FF3800;
              height:40px;
              width:100px;
              
              
          }
          .style1
          {
              width: 148px;
          }
          .style2
          {
              width: 199px;
          }
          .style3
          {
              width: 212px;
          }
      </style>
      <script type = "text/javascript">
          function displayNextImage() {
              x = (x === images.length - 1) ? 0 : x + 1;
              document.getElementById("img").src = images[x];
          }

          function displayPreviousImage() {
              x = (x <= 0) ? images.length - 1 : x - 1;
              document.getElementById("img").src = images[x];
          }

          function startTimer() {
              setInterval(displayNextImage, 5000);
          }
     var images = [], x = -1;
     images[0] = "daman/Capture.JPG";
          images[1] = "daman/California-Beach-Sunset.jpg";
          images[2] = "daman/damn.jpg";
          images[3] = "daman/Church_of_Bom_Jesus_Daman_9389.jpg";
          images[4] = "daman/Fort_slider-900x400.jpg";
      </script>
      
   </head>

   <body onload="startTimer()" style="background-image: url('daman/beautiful-beach-hd-wallpaper-919.jpg');"">
   <form runat="server" id="form1">
   <table style="width: 100%; height: 145px;">
            <tr style="text-align: center">
                <td class="style1"> 
                <asp:ImageButton ID="ImageButton2" runat="server" 
                        style="border-radius:50px;border-width:2px;border-style:solid;border-color:#003366;" 
                        ImageUrl="~/icon-video.png" Height="40" Width="40" Visible="False"/>
                </td>
                <td class="style2">
                    <asp:LinkButton ID="LinkButton1" runat="server" 
                        Font-Names="Bernard MT Condensed" Font-Size="30pt" Font-Underline="False" 
                        CssClass="linkstyle" ForeColor="White">Home</asp:LinkButton>
                </td>
   
     <td class="style3">
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
 <br />
   <center>
 
       <div style="background-color:White; width: 1038px;border-radius:10px;">
       <br />
       <img id="img" src="daman/daman-2.jpg" alt="no image" height="350" width="900" style="border-radius:20px;"/>
       <br /><br />
      <span style="font-family:Lucida Calligraphy;color:Blue;font-size:15px;">&quot;Daman gratifies the whims of sun bathers and swimmers at its beaches, the historic churches with finely carved statues, majestic forts that rise in their imposing splendour, coconut groves, abundant greenery and round the year temperate climate all provide a lovely escape for those in search of bliss, happiness and fun far away from the bustles of city life. Being a port town, it offers an exquisite variety of sea food, fare to satisfy the demanding palates of fish lovers, while the quaint bars and sea side modern restaurants satisfy the pleasure of life. The friendly and hospitable people, Hindus, Christians, Parses and Muslims all living in harmony here on this exquisite pearl on the west coast compel visitors to come again and again. Of late, the town has fast emerged as the right place for corporate meets, conferences, seminars, orientation programmes and training sessions. Today Daman offers everything, be it heritage, culture, leisure, fun, adventure and business tourism.&quot;</span>
           <h1 style="font-family:Cooper Black;color:#003366;">History...</h1>
  <marquee>         <table>
           <tr>
           <td><asp:Image ID="Image1" runat="server" ImageUrl="history/1.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
           <td><asp:Image ID="Image2" runat="server" ImageUrl="history/2.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image3" runat="server" ImageUrl="history/3.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image4" runat="server" ImageUrl="history/4.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>

<td><asp:Image ID="Image5" runat="server" ImageUrl="history/5.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>

<td><asp:Image ID="Image6" runat="server" ImageUrl="history/6.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image7" runat="server" ImageUrl="history/7.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image8" runat="server" ImageUrl="history/8.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image9" runat="server" ImageUrl="history/9.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image10" runat="server" ImageUrl="history/10.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image11" runat="server" ImageUrl="history/11.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image12" runat="server" ImageUrl="history/12.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image13" runat="server" ImageUrl="history/13.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image14" runat="server" ImageUrl="history/14.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image15" runat="server" ImageUrl="history/15.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image16" runat="server" ImageUrl="history/16.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image17" runat="server" ImageUrl="history/17.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image18" runat="server" ImageUrl="history/18.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image19" runat="server" ImageUrl="history/19.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image20" runat="server" ImageUrl="history/20.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image21" runat="server" ImageUrl="history/21.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image22" runat="server" ImageUrl="history/22.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image23" runat="server" ImageUrl="history/23.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image24" runat="server" ImageUrl="history/24.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image25" runat="server" ImageUrl="history/25.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image26" runat="server" ImageUrl="history/26.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image27" runat="server" ImageUrl="history/27.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image28" runat="server" ImageUrl="history/28.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image29" runat="server" ImageUrl="history/29.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image30" runat="server" ImageUrl="history/30.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image31" runat="server" ImageUrl="history/31.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image32" runat="server" ImageUrl="history/32.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image33" runat="server" ImageUrl="history/33.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image34" runat="server" ImageUrl="history/34.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>
<td><asp:Image ID="Image35" runat="server" ImageUrl="history/35.jpg" height="200px" Width="200px" style="border-radius:10px"/></td>

           </tr>
           </table></marquee>
           
  </div>
   </center>
   
       </form>
   </body>
</html>
