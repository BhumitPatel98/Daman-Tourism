Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Imports System.Math
Partial Class Insert_Hotel_Info
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s1, s2, s3, s4 As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cnt As Integer
    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim minprices, minpriced, minpricef, v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12 As Decimal
        Dim site1, site2, site3 As String
        v1 = TextBox7.Text
        v2 = TextBox8.Text
        v3 = TextBox9.Text
        v4 = TextBox10.Text
        Dim t1 As Decimal = Math.Min(v1, v2)
        Dim t2 As Decimal = Math.Min(v3, v4)
        minprices = Math.Min(t1, t2)
        If minprices = v1 Then
            site1 = "Booking.com"
        ElseIf minprices = v2 Then
            site1 = "TravelGuru.com"
        ElseIf minprices = v3 Then
            site1 = "Yatra.com"
        Else
            site1 = "ClearTrip.com"
        End If

        v5 = TextBox12.Text
        v6 = TextBox13.Text
        v7 = TextBox14.Text
        v8 = TextBox15.Text
        Dim u1 As Decimal = Math.Min(v5, v6)
        Dim u2 As Decimal = Math.Min(v7, v8)
        minpriced = Math.Min(u1, u2)

        If minpriced = v5 Then
            site2 = "Booking.com"
        ElseIf minpriced = v6 Then
            site2 = "TravelGuru.com"
        ElseIf minpriced = v7 Then
            site2 = "Yatra.com"
        Else
            site2 = "ClearTrip.com"
        End If

        v9 = TextBox17.Text
        v10 = TextBox18.Text
        v11 = TextBox19.Text
        v12 = TextBox20.Text
        Dim r1 As Decimal = Math.Min(v9, v10)
        Dim r2 As Decimal = Math.Min(v11, v12)
        minpricef = Math.Min(r1, r2)

        If minpricef = v9 Then
            site3 = "Booking.com"
        ElseIf minpricef = v10 Then
            site3 = "TravelGuru.com"
        ElseIf minpricef = v11 Then
            site3 = "Yatra.com"
        Else
            site3 = "ClearTrip.com"
        End If



        If FileUpload1.HasFile Then
            Dim filename1 As String
            filename1 = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName)
            FileUpload1.SaveAs(Server.MapPath("~/imgofhotel/") + filename1)
            Dim filepath1 As String = "~/imgofhotel/" + filename1

            If FileUpload2.HasFile Then
                Dim filename2 As String
                filename2 = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName)
                FileUpload2.SaveAs(Server.MapPath("~/imgofhotel/") + filename2)
                Dim filepath2 As String = "~/imgofhotel/" + filename2

                If FileUpload3.HasFile Then
                    Dim filename3 As String
                    filename3 = System.IO.Path.GetFileName(FileUpload3.PostedFile.FileName)
                    FileUpload3.SaveAs(Server.MapPath("~/imgofhotel/") + filename3)
                    Dim filepath3 As String = "~/imgofhotel/" + filename3

                    If FileUpload4.HasFile Then
                        Dim filename4 As String
                        filename4 = System.IO.Path.GetFileName(FileUpload4.PostedFile.FileName)
                        FileUpload4.SaveAs(Server.MapPath("~/imgofhotel/") + filename4)
                        Dim filepath4 As String = "~/imgofhotel/" + filename4
                        Dim str As [String] = ""
                        For i As Integer = 0 To CheckBoxList1.Items.Count - 1

                            If CheckBoxList1.Items(i).Selected Then

                                If str = "" Then
                                    str = CheckBoxList1.Items(i).Text
                                Else

                                    str += "," + CheckBoxList1.Items(i).Text

                                End If
                            End If
                        Next
                        s1 = "insert into basic(name,loc,email,phno,fac,mimg,img2,img3,img4) values(@a,@b,@c,@d,@e,@f,@g,@h,@i)"
                        cn.Open()
                        cmd = New SqlCommand(s1, cn)
                        cmd.Parameters.AddWithValue("@a", TextBox1.Text)
                        cmd.Parameters.AddWithValue("@b", TextBox2.Text)
                        cmd.Parameters.AddWithValue("@c", TextBox3.Text)
                        cmd.Parameters.AddWithValue("@d", TextBox4.Text)
                        cmd.Parameters.AddWithValue("@e", str)
                        cmd.Parameters.AddWithValue("@f", filepath1)
                        cmd.Parameters.AddWithValue("@g", filepath2)
                        cmd.Parameters.AddWithValue("@h", filepath3)
                        cmd.Parameters.AddWithValue("@i", filepath4)
                        cmd.ExecuteNonQuery()
                        cn.Close()
                        s2 = "insert into single(tor,book,travel,yatra,clear,minprice,minpricesite) values('Single Room','" & TextBox7.Text & "','" & TextBox8.Text & "','" & TextBox9.Text & "','" & TextBox10.Text & "','" & minprices & "','" & site1 & "')"
                        cn.Open()
                        cmd = New SqlCommand(s2, cn)
                        cmd.ExecuteNonQuery()
                        cn.Close()

                        s3 = "insert into doubl(tor,book,travel,yatra,clear,minprice,minpricesite) values('Double Room','" & TextBox12.Text & "','" & TextBox13.Text & "','" & TextBox14.Text & "','" & TextBox15.Text & "','" & minpriced & "','" & site2 & "')"
                        cn.Open()
                        cmd = New SqlCommand(s3, cn)
                        cmd.ExecuteNonQuery()
                        cn.Close()

                        s4 = "insert into family(tor,book,travel,yatra,clear,minprice,minpricesite) values('Family/Multiple Rooms','" & TextBox17.Text & "','" & TextBox18.Text & "','" & TextBox19.Text & "','" & TextBox20.Text & "','" & minpricef & "','" & site3 & "')"
                        cn.Open()
                        cmd = New SqlCommand(s4, cn)
                        cmd.ExecuteNonQuery()
                        cn.Close()
                    End If
                End If
            End If
        End If

    End Sub
End Class
