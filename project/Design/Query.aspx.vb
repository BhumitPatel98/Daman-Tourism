Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class Query
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s1, s2, s3 As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        's1 = "alter table single add minpricesite varchar(50)"
        'cn.Open()
        'cmd = New SqlCommand(s1, cn)
        'cmd.ExecuteNonQuery()
        'cn.Close()
        's2 = "alter table doubl add minpricesite varchar(50)"
        'cn.Open()
        'cmd = New SqlCommand(s2, cn)
        'cmd.ExecuteNonQuery()
        'cn.Close()
        's3 = "alter table family add minpricesite varchar(50)"
        'cn.Open()
        'cmd = New SqlCommand(s3, cn)
        'cmd.ExecuteNonQuery()
        'cn.Close()


        's1 = "alter table busbook add busid int"
        'cn.Open()
        'cmd = New SqlCommand(s1, cn)
        'cmd.ExecuteNonQuery()
        'cn.Close()



        'Response.Write("Today date is " + "<br>")
        'Dim d_diff As Integer = DateDiff("d", #2/28/2006#, #9/28/2006#)
        'Response.Write("Difference " & d_diff & "<br>")

        s1 = "alter table carbook add uid varchar(50)"
        cn.Open()
        cmd = New SqlCommand(s1, cn)
        cmd.ExecuteNonQuery()
        cn.Close()


       
    End Sub
End Class
