<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Hotel.aspx.vb" Inherits="Hotel" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 305px">
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="rid" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="rid" HeaderText="rid" InsertVisible="False" 
                    ReadOnly="True" SortExpression="rid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                <asp:BoundField DataField="mob" HeaderText="mob" SortExpression="mob" />
                <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                <asp:BoundField DataField="gen" HeaderText="gen" SortExpression="gen" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="secque" HeaderText="secque" 
                    SortExpression="secque" />
                <asp:BoundField DataField="ans" HeaderText="ans" SortExpression="ans" />
                <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:damanConnectionString %>" 
            SelectCommand="SELECT * FROM [register]"></asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
