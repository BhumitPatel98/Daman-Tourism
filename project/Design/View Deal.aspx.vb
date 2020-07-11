Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class View_Deal
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s, s1 As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cnt As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox5.Text = Session("typeofroom").ToString
        TextBox1.Text = Session("arrival").ToString
        TextBox2.Text = Session("departure").ToString
        Label1.Text = Request.QueryString.ToString
        s = "select name from basic where hid='" & Label1.Text & "'"
        cn.Open()
        cmd = New SqlCommand(s, cn)
        TextBox4.Text = cmd.ExecuteScalar()
        cn.Close()
        If TextBox5.Text = "Double Room" Then
            s = "select * from doubl where hid='" & Label1.Text & "'"
            cn.Open()
            cmd = New SqlCommand(s, cn)

            Dim dr As SqlDataReader = cmd.ExecuteReader
            While (dr.Read())
                TextBox1.Text = dr("minpricesite").ToString

            End While
            cn.Close()
        End If
        If TextBox5.Text = "Single Room" Then
           
        End If
        If TextBox5.Text = "Family/Multiple Rooms" Then
           

        End If




        
    End Sub
End Class
