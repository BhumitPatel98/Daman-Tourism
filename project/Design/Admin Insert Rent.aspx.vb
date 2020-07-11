Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class Admin_Insert_Rent
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        If FileUpload1.HasFile Then
            Dim filename1 As String
            filename1 = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName)
            FileUpload1.SaveAs(Server.MapPath("~/imgofrent/") + filename1)
            Dim filepath1 As String = "~/imgofrent/" + filename1
            s = "insert into bus(name,cnt,email,start,stop,img,HOO,type,rate,accmdt) values(@a,@b,@c,@d,@e,@f,@g,@h,@i,@j)"
            cn.Open()
            cmd = New SqlCommand(s, cn)
            cmd.Parameters.AddWithValue("@a", TextBox1.Text)
            cmd.Parameters.AddWithValue("@b", TextBox2.Text)
            cmd.Parameters.AddWithValue("@c", TextBox3.Text)
            cmd.Parameters.AddWithValue("@d", TextBox4.Text)
            cmd.Parameters.AddWithValue("@e", TextBox5.Text)
            cmd.Parameters.AddWithValue("@f", filepath1)
            cmd.Parameters.AddWithValue("@g", TextBox6.Text)
            cmd.Parameters.AddWithValue("@h", DropDownList1.SelectedValue)
            cmd.Parameters.AddWithValue("@i", TextBox7.Text)
            cmd.Parameters.AddWithValue("@j", TextBox8.Text)
            cmd.ExecuteNonQuery()
            cn.Close()
        End If

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        If FileUpload2.HasFile Then
            Dim filename2 As String
            filename2 = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName)
            FileUpload2.SaveAs(Server.MapPath("~/imgofrent/") + filename2)
            Dim filepath2 As String = "~/imgofrent/" + filename2
            s = "insert into car(name,cnt,email,img,type,rate,accmdt) values(@a,@b,@c,@d,@e,@f,@g)"
            cn.Open()
            cmd = New SqlCommand(s, cn)
            cmd.Parameters.AddWithValue("@a", TextBox9.Text)
            cmd.Parameters.AddWithValue("@b", TextBox10.Text)
            cmd.Parameters.AddWithValue("@c", TextBox11.Text)
            cmd.Parameters.AddWithValue("@d", filepath2)
            cmd.Parameters.AddWithValue("@e", TextBox17.Text)
            cmd.Parameters.AddWithValue("@f", TextBox15.Text)
            cmd.Parameters.AddWithValue("@g", TextBox16.Text)
            cmd.ExecuteNonQuery()
            cn.Close()
        End If
    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If FileUpload3.HasFile Then
            Dim filename3 As String
            filename3 = System.IO.Path.GetFileName(FileUpload3.PostedFile.FileName)
            FileUpload3.SaveAs(Server.MapPath("~/imgofrent/") + filename3)
            Dim filepath3 As String = "~/imgofrent/" + filename3
            s = "insert into bike(name,cnt,email,img,type,rate) values(@a,@b,@c,@d,@e,@f)"
            cn.Open()
            cmd = New SqlCommand(s, cn)
            cmd.Parameters.AddWithValue("@a", TextBox18.Text)
            cmd.Parameters.AddWithValue("@b", TextBox19.Text)
            cmd.Parameters.AddWithValue("@c", TextBox20.Text)
            cmd.Parameters.AddWithValue("@d", filepath3)
            cmd.Parameters.AddWithValue("@e", TextBox21.Text)
            cmd.Parameters.AddWithValue("@f", TextBox22.Text)
            cmd.ExecuteNonQuery()
            cn.Close()
        End If
    End Sub
End Class
