<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Admin Insert Rent.aspx.vb" Inherits="Admin_Insert_Rent" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .roundcorners
        {
            border-radius:5px;
            
         }
    </style>
    <script src="js/jquery-1.10.2.js" type="text/javascript"></script>

    <script type="text/javascript">
        function ShowpImagePreview(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#ImgPrv').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function ShowpImagePreview1(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#ImgPrv1').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
    <script type="text/javascript">
        function ShowpImagePreview2(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function (e) {
                    $('#ImgPrv2').attr('src', e.target.result);
                }
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
  <script type="text/javascript" src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script type="text/javascript"  src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css"/>
  <script>
      $(function () {
          $("#tabs").tabs();
      });
  </script>
    </head>
<body>
    <form id="form1" runat="server" enctype="multipart/form-data">
    <div>
    <div id="tabs">
     <ul>
    <li><a href="#tabs-1">Bus</a></li>
    <li><a href="#tabs-2">Car</a></li>
    <li><a href="#tabs-3">Bike</a></li>
  </ul>
    <div id="tabs-1">
    
        <table style="width: 924px">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Name of Company :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"  class="roundcorners"></asp:TextBox>
                </td>
                <td rowspan ="11">
                    <asp:Image ID="ImgPrv" runat="server" Height="300px" Width="300px"  class="roundcorners"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Contact No. :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email Address :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Starts From:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 40px">
                    <asp:Label ID="Label5" runat="server" Text="Stops At :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Image :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" onchange="ShowpImagePreview(this);" class="roundcorners"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Hours Of Operation :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox6" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Type Of Bus :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" class="roundcorners" 
                        Width="230px">
                        <asp:ListItem>Tempo Traveller</asp:ListItem>
                        <asp:ListItem>TATA Winger</asp:ListItem>
                        <asp:ListItem>Mini Bus</asp:ListItem>
                        <asp:ListItem>Luxury</asp:ListItem>
                        <asp:ListItem>Volvo</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Km/Hour Rate :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox7" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Accomodates :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox8" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
            
            <td colspan="2"><center>
                <asp:Button ID="Button1" runat="server" Text="Insert" /></center></td>
            </tr>
        </table>
    
    </div>
    <div id="tabs-2">
    
        <table style="width: 924px">
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Name of Company :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox9" runat="server"  class="roundcorners"></asp:TextBox>
                </td>
                <td rowspan ="11">
                    <asp:Image ID="ImgPrv1" runat="server" Height="300px" Width="300px"  
                        class="roundcorners"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" Text="Contact No. :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox10" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Email Address :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox11" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
         
           
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Image :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload2" runat="server" 
                        onchange="ShowpImagePreview1(this);" class="roundcorners"/>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Car :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" Text="Rate Per Day :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox15" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Accomodates :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox16" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
            
            <td colspan="2"><center>
                <asp:Button ID="Button2" runat="server" Text="Insert" /></center></td>
            </tr>
        </table>
    
        </div>
    
    
    <div id="tabs-3">
    
        <table style="width: 924px">
            <tr>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Name of Company :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox18" runat="server"  class="roundcorners"></asp:TextBox>
                </td>
                <td rowspan ="11">
                    <asp:Image ID="ImgPrv2" runat="server" Height="300px" Width="300px"  
                        class="roundcorners"/>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label22" runat="server" Text="Contact No. :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox19" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label23" runat="server" Text="Email Address :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox20" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
         
           
            <tr>
                <td>
                    <asp:Label ID="Label24" runat="server" Text="Image :"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="FileUpload3" runat="server" 
                        onchange="ShowpImagePreview2(this);" class="roundcorners"/>
                </td>
            </tr>
           
            <tr>
                <td>
                    <asp:Label ID="Label25" runat="server" Text="Bike :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label26" runat="server" Text="Rate Per Day :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox22" runat="server" class="roundcorners"></asp:TextBox>
                </td>
            </tr>
           
            <tr>
            
            <td colspan="2"><center>
                <asp:Button ID="Button3" runat="server" Text="Insert" /></center></td>
            </tr>
        </table>
    
        </div>
    </div>
    </div>
    </form>
</body>
</html>
