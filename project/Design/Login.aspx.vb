Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class Login
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cnt As Integer
    

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
       
        If TextBox1.Text = "bijal" And TextBox2.Text = "123" Then
            Response.Redirect("~/Admin.aspx")
        Else
            s = "select count(*) from register where email='" & TextBox1.Text & "' and pass='" & TextBox2.Text & "'"
            cn.Open()
            cmd = New SqlCommand(s, cn)
            cnt = cmd.ExecuteScalar()
            If cnt = 1 Then
                Session("user") = TextBox1.Text
                Response.Redirect("~/Home.aspx")

            Else
                Label1.Visible = True
                Label1.ForeColor = Drawing.Color.Red
                Label1.Text = "Invalid User ID & Password"
                TextBox1.Text = ""
                TextBox2.Text = ""
            End If

        End If
    End Sub

   
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        LinkButton5.CausesValidation = False
        LinkButton6.CausesValidation = False
      
    End Sub
End Class
