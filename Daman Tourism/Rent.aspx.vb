Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class Rent
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

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim user As String = Session("user").ToString
        Dim tnd As DateTime = Date.Now
        s = "insert into cab(startloc,destination,purpose,uid,timendate) values('" & TextBox4.Text & "','" & TextBox5.Text & "','" & DropDownList1.SelectedValue & "','" & user & "','" & tnd & "')"
        cn.Open()
        cmd = New SqlCommand(s, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        MsgBox("Booked Successfully")

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim user As String = Session("user").ToString
        Dim tnd As DateTime = Date.Now
        s = "insert into auto(startloc,destination,nop,uid,timendate) values('" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & user & "','" & tnd & "')"
        cn.Open()
        cmd = New SqlCommand(s, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        MsgBox("Booked Successfully")
    End Sub
End Class
