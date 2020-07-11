<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Home.aspx.vb" Inherits="Home" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Home Page</title>
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
    </head>
<body style="height: 673px">
    <form id="form1" runat="server">
    <div style="height: 669px;">
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
        </table>
       
        <div 
            
            
            
            style="position:absolute;z-index: 999; height: 400px; width: 850px; top: 183px; left: 75px; background-color: white;" 
            class="round trans">
            <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
                <asp:View ID="View1" runat="server">
                    <div class="style4">
                    <table class="opac">
                    <tr>
                    <td><asp:Button ID="Button1" runat="server" Height="390px" style="float:left;" 
                            Text="&lt;&lt;" Width="30px" BackColor="White" BorderColor="White" /></td>
                    <td><asp:Image ID="Image1" runat="server" Height="200px" 
                            ImageUrl="~/daman/Church_of_Bom_Jesus_Daman_9389.jpg" style="float:left;" 
                            Width="200px" CssClass ="round opac" />
                        <span class="style6">&quot;The Church of Bom Jesus&quot; is an old shrine, located in the 
                        Moti Daman region of Daman. One of the most imposing historical and religious 
                        edifices of the city, this church reflects the colonial influences the town has 
                        had in the past. Established in AD 1559, this parish was finally consecrated as 
                        a church in AD 1603, when the Portuguese reign in Daman was in its initial 
                        years. Flaunting exquisite Roman style of architecture, this church is a fine 
                        specimen of the brilliant engineering artistry of the Portuguese. The 
                        intricately carved gateways, artistically adorned interiors and wooden altars of 
                        this shrine are at their glorious best, even after several years. Six statues of 
                        revered saints, which are highly aesthetic in appeal, can be found on the 
                        southern entrance of this church. Both tourists and devotees visit the Church of 
                        Bom Jesus in large numbers throughout the year, especially during Christian 
                        festivals</span><span class="style5">.</span></td>
                    <td><asp:Button ID="Button2" runat="server" Height="390px" style="float:right;" 
                            Text="&gt;&gt;" Width="30px" BackColor="White" BorderColor="White" /></td>
                    </tr>
                    </table>
                        
                        
                        
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <asp:Button ID="Button3" runat="server" Text="&lt;&lt;" />
                    <asp:Button ID="Button4" runat="server" Text="&gt;&gt;" />
                </asp:View>
            </asp:MultiView>
        </div>
    
    </div>
    </form>
</body>
</html>
