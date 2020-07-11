Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Imports System.DateTime
Partial Class View_Deal
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\acer\Documents\Daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s, s1, site As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cnt As Integer
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        TextBox5.Text = Session("typeofroom").ToString
        TextBox1.Text = Session("arrival").ToString
        TextBox2.Text = Session("departure").ToString
        Label1.Text = Request.QueryString.ToString
        ' Dim site As String
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
                site = dr("minpricesite").ToString
                TextBox7.Text = dr("minprice").ToString
                If site = "TravelGuru.com" Then
                    Image1.Visible = True
                End If
                If site = "Yatra.com" Then
                    Image2.Visible = True
                End If
                If site = "ClearTrip.com" Then
                    Image3.Visible = True
                End If
                If site = "Booking.com" Then
                    Image4.Visible = True
                End If
            End While
            cn.Close()
        End If
        If TextBox5.Text = "Single Room" Then
            s = "select * from single where hid='" & Label1.Text & "'"
            cn.Open()
            cmd = New SqlCommand(s, cn)

            Dim dr As SqlDataReader = cmd.ExecuteReader
            While (dr.Read())
                site = dr("minpricesite").ToString
                TextBox7.Text = dr("minprice").ToString
                If site = "TravelGuru.com" Then
                    Image1.Visible = True
                End If
                If site = "Yatra.com" Then
                    Image2.Visible = True
                End If
                If site = "ClearTrip.com" Then
                    Image3.Visible = True
                End If
                If site = "Booking.com" Then
                    Image4.Visible = True
                End If
            End While
            cn.Close()
        End If

        If TextBox5.Text = "Family/Multiple Rooms" Then
            s = "select * from family where hid='" & Label1.Text & "'"
            cn.Open()
            cmd = New SqlCommand(s, cn)

            Dim dr As SqlDataReader = cmd.ExecuteReader
            While (dr.Read())
                site = dr("minpricesite").ToString
                TextBox7.Text = dr("minprice").ToString
                If site = "TravelGuru.com" Then
                    Image1.Visible = True
                End If
                If site = "Yatra.com" Then
                    Image2.Visible = True
                End If
                If site = "ClearTrip.com" Then
                    Image3.Visible = True
                End If
                If site = "Booking.com" Then
                    Image4.Visible = True
                End If
            End While
            cn.Close()
        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        Dim dt As Date = Today.Date
        Dim qry As String = "insert into roombook(site,arriv,depart,nop,name,tor,amt,dtime) values('" & site & "','" & TextBox1.Text & "','" & TextBox2.Text & "','" & TextBox3.Text & "','" & TextBox4.Text & "','" & TextBox5.Text & "','" & TextBox7.Text & "','" & dt & "')"
        cn.Open()
        cmd = New SqlCommand(qry, cn)
        cmd.ExecuteNonQuery()
        cn.Close()
        Response.Redirect("~/Payment.aspx")
    End Sub

    
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
        Session("user") = ""
        Response.Redirect("~/Login.aspx")
    End Sub
End Class
