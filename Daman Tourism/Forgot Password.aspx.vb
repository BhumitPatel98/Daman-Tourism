Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class Forgot_Password
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\acer\Documents\Daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s, s1, s2 As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cnt As Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        s = "select secque from register where email='" & TextBox1.Text & "'"
        cn.Open()
        cmd = New SqlCommand(s, cn)
        Dim sec As String = cmd.ExecuteScalar()

        cn.Close()
       
        s1 = "select ans from register where secque='" & sec & "' and email='" & TextBox1.Text & "'"
        cn.Open()
        cmd = New SqlCommand(s1, cn)
        Dim ans As String = cmd.ExecuteScalar()

        cn.Close()
        If DropDownList1.SelectedValue.Equals(sec) And TextBox2.Text.Equals(ans) Then
            s2 = "select pass from register where email='" & TextBox1.Text & "'"
            cn.Open()
            cmd = New SqlCommand(s2, cn)
            Dim pass As String = cmd.ExecuteScalar()
            cn.Close()
            MsgBox("Your Password is:" + pass)
            Response.Redirect("~/Login.aspx")
        Else
            MsgBox("Your Entries are Incorrect")
        End If
    End Sub
End Class
