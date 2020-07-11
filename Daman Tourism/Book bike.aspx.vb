
Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class Book_bike
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\acer\Documents\Daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cnt As Integer
    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton1.Click
        Response.Redirect("~/Home.aspx")
    End Sub

    Protected Sub LinkButton2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton2.Click
        Response.Redirect("~/Book Hotel Room.aspx")
    End Sub

    Protected Sub LinkButton3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton3.Click
        Response.Redirect("~/Rent.aspx")
    End Sub

    Protected Sub LinkButton4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles LinkButton4.Click
        Response.Redirect("~/Feed.aspx")
    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session.Clear()
        Session.Abandon()
        Response.Redirect("~/Login.aspx")
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Session("user").ToString
        Label12.Text = Request.QueryString.ToString
        Dim qry As String = "select name from register where email='" & Label1.Text & "'"
        cn.Open()
        cmd = New SqlCommand(qry, cn)
        Dim username As String = cmd.ExecuteScalar()
        Label13.Text = "Welcome" + "," + username + " " + "Lets book the Bike.....!!!"
        cn.Close()

    End Sub

    Protected Sub RadioButtonList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles RadioButtonList1.SelectedIndexChanged
        If RadioButtonList1.SelectedValue = "Credit Card" Or RadioButtonList1.SelectedValue = "Debit card" Then
            tbl.Visible = True
        Else
            tbl.Visible = False
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim day1 As String = TextBox1.Text
        Dim day2 As String = TextBox2.Text
        Dim dt1 As DateTime = Convert.ToDateTime(day1)
        Dim dt2 As DateTime = Convert.ToDateTime(day2)
        Dim ts As TimeSpan = -(dt1 - dt2)
        Dim cal As Integer = ts.Days


        Dim s1 As String = "select rate from bike where bid='" & Label12.Text & "'"
        cn.Open()
        cmd = New SqlCommand(s1, cn)
        Dim rate1 As Integer = cmd.ExecuteScalar()
        Dim rate As Integer = rate1 * cal
        cn.Close()


        s = "insert into bikebook(renton,returnon,mop,nod,pay,bid,uid) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & RadioButtonList1.SelectedValue & "','" & cal & "','" & rate & "','" & Label12.Text & "','" & Label1.Text & "')"
        cn.Open()
        cmd = New SqlCommand(s, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        MsgBox("Booking Successfull")
        Response.Redirect("~/Rent.aspx")
    End Sub
End Class
