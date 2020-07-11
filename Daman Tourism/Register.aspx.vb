Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter

Partial Class Register
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\acer\Documents\Daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet

    
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
       
        s = "insert into register(name,city,mob,email,gen,dob,secque,ans,pass) values('" & TextBox1.Text & "','" & dd1.Value & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & RadioButtonList1.SelectedValue & "','" & TextBox5.Text & "','" & DropDownList1.SelectedValue & "','" & TextBox6.Text & "','" & TextBox7.Text & "')"
            cn.Open()
            cmd = New SqlCommand(s, cn)
            cmd.ExecuteNonQuery()
            cn.Close()
        MsgBox("Successfully Registered")
        Response.Redirect("~/Login.aspx")

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = ""
        TextBox3.Text = ""
        TextBox4.Text = ""
        TextBox5.Text = ""
        TextBox6.Text = ""
        TextBox7.Text = ""
        TextBox8.Text = ""
        dd1.SelectedIndex = 0
        DropDownList1.SelectedIndex = 0
        RadioButtonList1.ClearSelection()

    End Sub

End Class
