<%@ Page Language="VB" AutoEventWireup="false" CodeFile="View Hotel.aspx.vb" Inherits="View_Hotel" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Hotel Info Page</title>
       
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
<body style="background-image:url('daman/beautiful-beach-hd-wallpaper-919.jpg');">
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
    <asp:Label ID="Label1" runat="server" Text="Label" Visible ="false" ></asp:Label>
     <br />
        <center>
        <div style="background-color:White;height:1010px; width: 1065px; border-radius:20px">
<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                <ItemTemplate>
             <center><h1 style ="font-family:Bernard MT Condensed;font-size:60px;">
                 <asp:Label ID="Label2" runat="server" Text='<%# eval("name") %>'></asp:Label></h1>
                 <asp:Image ID="Image5" runat="server" ImageUrl="~/img/double-black-flourish.png" Height="50px" width="600px"/>
                

                <table cellpadding="10" cellspacing="10" > 
                <tr>
                <td class="image">
                 <asp:Image ID="Image1" runat="server" Height="230px" ImageUrl='<%# Eval("mimg") %>' Width="230px" style="border-radius:30px;border-width:2px;border-color:black;border-style:solid;"/>
                 </td>
                
                 <td class="image">
                 <asp:Image ID="Image2" runat="server" Height="230px" ImageUrl='<%# Eval("img2") %>' Width="230px" style="border-radius:30px;border-width:2px;border-color:black;border-style:solid;"/>
                 </td>
                       
                 <td class="image">
                 <asp:Image ID="Image3" runat="server" Height="230px" ImageUrl='<%# Eval("img3") %>' Width="230px" style="border-radius:30px;border-width:2px;border-color:black;border-style:solid;"/>
                 </td>
                       
                 <td class="image">
                 <asp:Image ID="Image4" runat="server" Height="230px" ImageUrl='<%# Eval("img4") %>' Width="230px" style="border-radius:30px;border-width:2px;border-color:black;border-style:solid;"/>
                 </td>
                 </tr>
                 </table>

                 <br />
                    <font  style="font-family:Lucida Calligraphy;font-size:18px;color:gray">
<b>&quot;</b>&nbsp;<asp:Label ID="Label3" runat="server" Text='<%# eval("descrip") %>'></asp:Label><b>&quot;</b>
<br />
</font>
  </ItemTemplate>
            </asp:DataList><br />

            <table>
            <tr>
            <td><asp:Repeater ID="rptBooks" runat="server" DataSourceID="SqlDataSource2">
        <ItemTemplate>
        <table cellspacing="15">
        <tr>
        <td><asp:Image ID="Image6" runat="server" ImageUrl='<%# eval("img") %>' Height="150px" Width="150px" style="border-radius:150px;"/></td>
        <td>
            
            <asp:Label ID="Label19" runat="server" Text='<%# eval("name") %>' style="font-family:Bernard MT Condensed;font-size:30px;color:Gray;"></asp:Label><br />
            
            <asp:Image ID="Image7" runat="server" ImageUrl="~/loc.png" Height="30" Width="30"/> <asp:Label ID="Label20" runat="server" Text='<%# eval("loc") %>' style="font-family:Bernard MT Condensed;font-size:25px;color:Gray;"></asp:Label>
            
            <br />
           <span style="color:blue">"</span> <asp:Label ID="Label21" runat="server" Text='<%# eval("review") %>' style="font-family:Bernard MT Condensed;font-size:18px;color:Black;"></asp:Label>
           <span style="color:blue">"</span>
           <br />
            <asp:Image ID="Image8" runat="server" ImageUrl="~/ratingstar.png" Height="20px" Width="20px"/>
            <asp:Label ID="Label22" runat="server" Text='<%# eval("rating") %>' style="font-family:Bernard MT Condensed;font-size:30px;color:gray"></asp:Label>
            <asp:Label ID="Label23" runat="server" style="font-family:Bernard MT Condensed;font-size:30px;color:gray" Text="/5"></asp:Label>
            
        </td>
        </tr>
        </table>
        </ItemTemplate>
      </asp:Repeater>  
                <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <br /><br />
    <div style="height: 42px; width: 395px">
       <asp:Repeater ID="rptPaging" runat="server">
            <ItemTemplate>
                                <asp:LinkButton ID="btnPage"
                 style="padding:8px; margin:2px; background:#ffa100; border:solid 1px #666; font:8pt tahoma;"
                CommandName="Page" CommandArgument="<%# Container.DataItem %>"
                 runat="server" ForeColor="White" Font-Bold="True"><%# Container.DataItem %></asp:LinkButton>
           </ItemTemplate>
        </asp:Repeater>
        </div>   
            </td>
            <td width="400px">
            
            <table id="tbl" runat="server" style="border-radius:10px;border-style:solid;border-width:5px;border-color:Black;" cellspacing="7" cellpadding="7">
<tr>
<td colspan="2">
<center><asp:Label ID="Label18" runat="server" Text="Leave a Review" class="ftt"></asp:Label></center>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label13" runat="server" Text="Name: " class="ftt"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox1" runat="server" class="txt"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label14" runat="server" Text="Location: "  class="ftt"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox2" runat="server" class="txt"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label15" runat="server" Text="Image: " class="ftt"></asp:Label>
</td>
<td>
    <asp:FileUpload ID="FileUpload1" runat="server" class="txt"/>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label16" runat="server" Text="Review: " class="ftt"></asp:Label>
</td>
<td>
    <asp:TextBox ID="TextBox3" runat="server" class="txt" TextMode="MultiLine"></asp:TextBox>
</td>
</tr>
<tr>
<td>
    <asp:Label ID="Label17" runat="server" Text="Rating: " class="ftt"></asp:Label>
</td>
<td>
    <span class="rating">
        <input type="radio" class="rating-input" id="r1" name="rating-input-1" value="5"/>
        <label for="r1" class="rating-star"></label>
        <input type="radio" class="rating-input" id="r2" name="rating-input-1" value="4"/>
        <label for="r2" class="rating-star"></label>
        <input type="radio" class="rating-input" id="r3" name="rating-input-1" value="3"/>
        <label for="r3" class="rating-star"></label>
        <input type="radio" class="rating-input" id="r4" name="rating-input-1" value="2" />
        <label for="r4" class="rating-star"></label>
        <input type="radio" class="rating-input" id="r5" name="rating-input-1" value="1"/>
        <label for="r5" class="rating-star"></label>
    </span>
</td>
</tr>
<tr>
<td colspan="2">
    <center><asp:Button ID="Button1" runat="server" Text="Submit Review" class="round" /></center>
</td>
</tr>

</table>
            




            </td>
            </tr>
            </table>

        
        </div>
           
   <div>
   
   
   
   
  
   <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:DamanConnectionString2 %>" 
                SelectCommand="SELECT * FROM [basic] WHERE ([hid] = @hid)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="hid" PropertyName="Text" 
                        Type="Int32" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        </center>

   
    </div>
    </form>
</body>
</html>