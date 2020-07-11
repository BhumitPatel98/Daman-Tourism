<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Register.aspx.vb" Inherits="Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
                    
                    <link href="jquery-ui-1.10.3/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />

    <title></title>
     
       <script src="js/jquery-1.6.js" type="text/javascript"></script>
                      <script src="js/jquery-ui.js" type="text/javascript"></script>
                                     
                    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css"/>
                         <script type ="text/javascript">
                             $(function () {
                                 $("#TextBox5").datepicker({
                                     changeMonth: true,
                                     changeYear: true
                                 });
                             });
</script>
    <style type="text/css">
        .ddstyle
        {
            border-color:Silver;
            border-width:2px;
        }
        .round
        {
            border-radius:5px;
            color: #999999;
            height: 30px;
        }
           a:hover
        {
        color:#003366;
        }
        .style1
        {
            text-align: center;
        }
        .style6
        {
            text-align: center;
            height: 29px;
        }
        .style8
        {
            text-align: center;
            height: 29px;
            width: 152px;
            color: #FF0000;
        }
        .style9
        {
            text-align: center;
            width: 152px;
            font-weight: bold;
        }
        .style10
        {
            text-align: center;
            width: 152px;
            color: #FF0000;
        }
        .style11
        {
            color: #FF0000;
            font-size: 5pt;
        }
                      
        
        #form1
        {
            height: 282px;
        }
      
        
        .style13
        {
            font-size: 5pt;
        }
        .style14
        {
            text-align: center;
            height: 29px;
            font-size: 30pt;
            font-family: "Cooper Black";
            color: #003366;
        }
      
        
        </style>
</head>
<body style="height: 301px">
    <form id="form1" runat="server">
    <div style="background-image: url('daman/beautiful-beach-hd-wallpaper-919.jpg'); height: 653px;">
    <br />
    <div style="height: 250px; width: 250px;border-radius:250px;font-family:Bernard MT Condensed;font-size:52px;color:#003366;top: 10px; right: 300px; bottom: 33px; left: 33px; position: relative; background-color: #FFFFFF;text-align:center"><br />Daman<br /> Tourism</div>
        
                
          
      
        <table style="border: thick solid #000000; width: 30%; height: 347px; top: 34px; left: 556px; position: absolute; background-color: #FFFFFF; margin-top: 0px;" 
            align="center" class="round" cellpadding="2" cellspacing="10">
            <tr>
                <td class="style14" colspan="2">
                    Register Now</td>
            </tr>
            <tr>
                <td class="style6">
                    <asp:TextBox ID="TextBox1" runat="server" Width="265px" CssClass="round" 
                        placeholder="Name" Height="25px" BorderColor="Silver" BorderWidth="2px"></asp:TextBox>
    
                </td>
                <td class="style8" style="width: 10px">
                    <b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="*" CssClass="style13"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TextBox1" ErrorMessage="Only text!" Display="Dynamic" 
                        ValidationExpression="^[a-zA-Z\s]+$" CssClass="style13"></asp:RegularExpressionValidator>
    
                    </b>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
<select id="dd1" runat ="server"  class="round ddstyle" name="D1" 
                        style="width: 270px; height: 30px">
<option value="0">--Select City--</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Top Metropolitan Cities-</option>
<option>Ahmedabad</option> 
<option>Bengaluru/Bangalore</option>
<option>Chandigarh</option>
<option>Chennai</option>
<option>Delhi</option>
<option>Gurgaon</option>
<option>Hyderabad/Secunderabad</option>
<option>Kolkatta</option>
<option>Mumbai</option>
<option>Noida</option>
<option>Pune</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Andhra Pradesh-</option>
<option>Anantapur</option>
<option>Guntakal</option>
<option>Guntur</option>
<option>Hyderabad/Secunderabad</option>
<option>kakinada</option>
<option>kurnool</option>
<option>Nellore</option>
<option>Nizamabad</option>
<option>Rajahmundry</option>
<option>Tirupati</option>
<option>Vijayawada</option>
<option>Visakhapatnam</option>
<option>Warangal</option>
<option>Andra Pradesh-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Arunachal Pradesh-</option>
<option>Itanagar</option>
<option>Arunachal Pradesh-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Assam-</option>
<option>Guwahati</option>
<option>Silchar</option>
<option>Assam-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Bihar-</option>
<option>Bhagalpur</option>
<option>Patna</option>
<option>Bihar-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Chhattisgarh-</option>
<option>Bhillai</option>
<option>Bilaspur</option>
<option>Raipur</option>
<option>Chhattisgarh-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Goa-</option>
<option>Panjim/Panaji</option>
<option>Vasco Da Gama</option>
<option>Goa-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Gujarat-</option>
<option>Ahmedabad</option>
<option>Anand</option>
<option>Ankleshwar</option>
<option>Bharuch</option>
<option>Bhavnagar</option>
<option>Bhuj</option>
<option>Gandhinagar</option>
<option>Gir</option>
<option>Jamnagar</option>
<option>Kandla</option>
<option>Porbandar</option>
<option>Rajkot</option>
<option>Surat</option>
<option>Vadodara/Baroda</option>
<option>Valsad</option>
<option>Vapi</option>
<option>Gujarat-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Haryana-</option>
<option>Ambala</option>
<option>Chandigarh</option>
<option>Faridabad</option>
<option>Gurgaon</option>
<option>Hisar</option>
<option>Karnal</option>
<option>Kurukshetra</option>
<option>Panipat</option>
<option>Rohtak</option>
<option>Haryana-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Himachal Pradesh-</option>
<option>Dalhousie</option>
<option>Dharmasala</option>
<option>Kulu/Manali</option>
<option>Shimla</option>
<option>Himachal Pradesh-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Jammu and Kashmir-</option>
<option>Jammu</option>
<option>Srinagar</option>
<option>Jammu and Kashmir-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Jharkhand-</option>
<option>Bokaro</option>
<option>Dhanbad</option>
<option>Jamshedpur</option>
<option>Ranchi</option>
<option>Jharkhand-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Karnataka-</option>
<option>Bengaluru/Bangalore</option>
<option>Belgaum</option>
<option>Bellary</option>
<option>Bidar</option>
<option>Dharwad</option>
<option>Gulbarga</option>
<option>Hubli</option>
<option>Kolar</option>
<option>Mangalore</option>
<option>Mysoru/Mysore</option>
<option>Karnataka-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Kerala-</option>
<option>Calicut</option>
<option>Cochin</option>
<option>Ernakulam</option>
<option>Kannur</option>
<option>Kochi</option>
<option>Kollam</option>
<option>Kottayam</option>
<option>Kozhikode</option>
<option>Palakkad</option>
<option>Palghat</option>
<option>Thrissur</option>
<option>Trivandrum</option>
<option>Kerela-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Madhya Pradesh-</option>
<option>Bhopal</option>
<option>Gwalior</option>
<option>Indore</option>
<option>Jabalpur</option>
<option>Ujjain</option>
<option>Madhya Pradesh-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Maharashtra-</option>
<option>Ahmednagar</option>
<option>Aurangabad</option>
<option>Jalgaon</option>
<option>Kolhapur</option>
<option>Mumbai</option>
<option>Mumbai Suburbs</option>
<option>Nagpur</option>
<option>Nasik</option>
<option>Navi Mumbai</option>
<option>Pune</option>
<option>Solapur</option>
<option>Maharashtra-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Manipur-</option>
<option>Imphal</option>
<option>Manipur-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Meghalaya-</option>
<option>Shillong</option>
<option>Meghalaya-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Mizoram-</option>
<option>Aizawal</option>
<option>Mizoram-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Nagaland-</option>
<option>Dimapur</option>
<option>Nagaland-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Orissa-</option>
<option>Bhubaneshwar</option>
<option>Cuttak</option>
<option>Paradeep</option>
<option>Puri</option>
<option>Rourkela</option>
<option>Orissa-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Punjab-</option>
<option>Amritsar</option>
<option>Bathinda</option>
<option>Chandigarh</option>
<option>Jalandhar</option>
<option>Ludhiana</option>
<option>Mohali</option>
<option>Pathankot</option>
<option>Patiala</option>
<option>Punjab-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Rajasthan-</option>
<option>Ajmer</option>
<option>Jaipur</option>
<option>Jaisalmer</option>
<option>Jodhpur</option>
<option>Kota</option>
<option>Udaipur</option>
<option>Rajasthan-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Sikkim-</option>
<option>Gangtok</option>
<option>Sikkim-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Tamil Nadu-</option>
<option>Chennai</option>
<option>Coimbatore</option>
<option>Cuddalore</option>
<option>Erode</option>
<option>Hosur</option>
<option>Madurai</option>
<option>Nagerkoil</option>
<option>Ooty</option>
<option>Salem</option>
<option>Thanjavur</option>
<option>Tirunalveli</option>
<option>Trichy</option>
<option>Tuticorin</option>
<option>Vellore</option>
<option>Tamil Nadu-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Tripura-</option>
<option>Agartala</option>
<option>Tripura-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Union Territories-</option>
<option>Chandigarh</option>
<option>Dadra & Nagar Haveli-Silvassa</option>
<option>Daman & Diu</option>
<option>Delhi</option>
<option>Pondichery</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Uttar Pradesh-</option>
<option>Agra</option>
<option>Aligarh</option>
<option>Allahabad</option>
<option>Bareilly</option>
<option>Faizabad</option>
<option>Ghaziabad</option>
<option>Gorakhpur</option>
<option>Kanpur</option>
<option>Lucknow</option>
<option>Mathura</option>
<option>Meerut</option>
<option>Moradabad</option>
<option>Noida</option>
<option>Varanasi/Banaras</option>
<option>Uttar Pradesh-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Uttaranchal-</option>
<option>Dehradun</option>
<option>Roorkee</option>
<option>Uttaranchal-Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-West Bengal-</option>
<option>Asansol</option>
<option>Durgapur</option>
<option>Haldia</option>
<option>Kharagpur</option>
<option>Kolkatta</option>
<option>Siliguri</option>
<option>West Bengal - Other</option>
<option disabled="disabled" style="background-color:#3E3E3E">-Other-</option>
<option>Other</option>
</select></td>
                <td class="style9" style="width: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                        ControlToValidate="dd1" InitialValue="0" ErrorMessage="*" 
                        style="color: #FF0000"  Display="Dynamic" CssClass="style13"></asp:RequiredFieldValidator>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="TextBox3" runat="server" Width="265px" CssClass="round" 
                        placeholder="Mobile no." Height="25px" BorderColor="Silver" 
                        BorderWidth="2px"></asp:TextBox>
    
                </td>
                <td class="style10" style="width: 10px">
                    <b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="*" CssClass="style13"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                        ControlToValidate="TextBox3" ErrorMessage="Invalid No." Display="Dynamic" 
                        ValidationExpression="[0-9]{10}" CssClass="style13"></asp:RegularExpressionValidator>
    
                    </b>
    
                </td>
            </tr>
            <tr>
                <td class="style1">

                    <asp:RadioButtonList ID="RadioButtonList1" runat="server" 
                        RepeatDirection="Horizontal" 
                        
                        style="height: 27px; width: 157px" 
                        Font-Names="Cooper Black" ForeColor="Gray" RepeatLayout="Flow">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:RadioButtonList>
    
                </td>
                <td class="style9" style="width: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                        ControlToValidate="RadioButtonList1" ErrorMessage="*" CssClass="style11"></asp:RequiredFieldValidator>

                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="TextBox4" runat="server" Width="265px" CssClass="round" 
                        placeholder="Email Address" Height="25px" BorderColor="Silver" 
                        BorderWidth="2px"></asp:TextBox>
    
                </td>
                <td class="style10" style="width: 10px">
                    <b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="*" CssClass="style13"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="TextBox4" ErrorMessage="Invalid Email" Display="Dynamic" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        CssClass="style13"></asp:RegularExpressionValidator>
    
                    </b>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
               <asp:TextBox ID="TextBox5" runat="server" Width="265px" CssClass="round" 
                        placeholder="Date Of Birth" Height="25px" BorderColor="Silver" 
                        BorderWidth="2px"></asp:TextBox>
    
                </td>
                <td class="style9" style="width: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ErrorMessage="*" ControlToValidate="TextBox5" 
                                Display="Dynamic" CssClass="style11"></asp:RequiredFieldValidator>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="round ddstyle" 
                        Height="30px" Width="270px" ForeColor="#999999">
                        <asp:ListItem Value="0">---Select Security Question---</asp:ListItem>
                        <asp:ListItem>What is your favourite food?</asp:ListItem>
                        <asp:ListItem>What is the name of your childhood friend?</asp:ListItem>
                        <asp:ListItem>Your Mother&#39;s Birthday?</asp:ListItem>
                        <asp:ListItem>What is your favourite mobile app?</asp:ListItem>
                    </asp:DropDownList>
    
                </td>
                <td class="style9" style="width: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                        ErrorMessage="*" ControlToValidate="DropDownList1" 
                                Display="Dynamic" CssClass="style11" InitialValue="0"
                                ></asp:RequiredFieldValidator>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="TextBox6" runat="server" Width="265px" CssClass="round" 
                        placeholder="Your Answer" Height="25px" BorderColor="Silver" 
                        BorderWidth="2px"></asp:TextBox>
    
                </td>
                <td class="style9" style="width: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="TextBox6" ErrorMessage="*" CssClass="style11"></asp:RequiredFieldValidator>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="TextBox7" runat="server" Width="265px" CssClass="round" 
                        placeholder="Choose a password" Height="25px" BorderColor="Silver" 
                        BorderWidth="2px" TextMode="Password"></asp:TextBox>
    
                </td>
                <td class="style9" style="width: 10px">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="TextBox7" ErrorMessage="*" CssClass="style11"></asp:RequiredFieldValidator>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="TextBox8" runat="server" Width="265px" CssClass="round" 
                        placeholder="Confirm Password" Height="25px" BorderColor="Silver" 
                        BorderWidth="2px" TextMode="Password"></asp:TextBox>
                    <br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="TextBox7" ControlToValidate="TextBox8" 
                        ErrorMessage="Password does not match!" style="color: #FF0000"></asp:CompareValidator>
    
                </td>
                <td class="style10" style="width: 10px">
                    <b>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                        ControlToValidate="TextBox8" ErrorMessage="*" CssClass="style13"></asp:RequiredFieldValidator>
                    <br class="style13" />
    
                    </b>
    
                </td>
            </tr>
            <tr>
                <td class="style1">
                        <asp:Button ID="Button1" runat="server" Text="Register" BackColor="#0099FF" CssClass="round" 
                            Font-Bold="False" Font-Names="Agency FB" Font-Size="18pt" ForeColor="White" 
                            Height="36px" style="text-align: center" Width="97px" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="#0099FF" CssClass="round" 
                            Font-Bold="False" Font-Names="Agency FB" Font-Size="18pt" ForeColor="White" 
                            Height="36px" style="text-align: center" Width="97px"/>
    
                </td>
              
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>