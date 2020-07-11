Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Imports System.Collections
Imports System.IO
Partial Class View_Hotel
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim ds As DataSet
    Dim s, rate As String
    Dim da As SqlDataAdapter
    Dim mainrate As Integer
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
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Label1.Text = Request.QueryString().ToString
        rate = Request.Form("rating-input-1")
        mainrate = CType(rate, Integer)

        If Not IsPostBack Then
            BindRepeater()
        End If
       
    End Sub
    
    Protected Sub BindRepeater()

        Dim cmd As New SqlCommand("Select * from review where hid='" & Label1.Text & "'", cn)
        If cn.State = ConnectionState.Closed Then
            cn.Open()
        End If
        Dim dt As New DataTable()
        Dim adp As New SqlDataAdapter(cmd)
        adp.Fill(dt)
        Dim pgitems As New PagedDataSource()
        Dim dv As New DataView(dt)
        pgitems.DataSource = dv
        pgitems.AllowPaging = True
        pgitems.PageSize = 1
        pgitems.CurrentPageIndex = PageNumber
        If pgitems.PageCount > 0 Then
            rptPaging.Visible = True
            Dim pages As New ArrayList()
            For i As Integer = 0 To pgitems.PageCount - 1
                pages.Add((i + 1).ToString())
            Next
            rptPaging.DataSource = pages
            rptPaging.DataBind()
        Else
            rptPaging.Visible = False
        End If
        rptBooks.DataSource = pgitems
        rptBooks.DataBind()
    End Sub

    Public Property PageNumber() As Integer
        Get
            If ViewState("PageNumber") IsNot Nothing Then
                Return Convert.ToInt32(ViewState("PageNumber"))
            Else
                Return 0
            End If
        End Get
        Set(ByVal value As Integer)
            ViewState("PageNumber") = value
        End Set
    End Property
    Protected Sub rptPaging_ItemCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.RepeaterCommandEventArgs) Handles rptPaging.ItemCommand
        PageNumber = Convert.ToInt32(e.CommandArgument) - 1
        BindRepeater()
    End Sub


    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

        If FileUpload1.HasFile Then
            Dim filename1 As String
            filename1 = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName)
            FileUpload1.SaveAs(Server.MapPath("~/imgofreview/") + filename1)
            Dim filepath1 As String = "~/imgofreview/" + filename1
            s = "insert into review(hid,name,loc,img,review,rating) values(@a,@b,@c,@d,@e,@f)"
            cn.Open()
            cmd = New SqlCommand(s, cn)
            cmd.Parameters.AddWithValue("@a", Label1.Text)
            cmd.Parameters.AddWithValue("@b", TextBox1.Text)
            cmd.Parameters.AddWithValue("@c", TextBox2.Text)
            cmd.Parameters.AddWithValue("@d", filepath1)
            cmd.Parameters.AddWithValue("@e", TextBox3.Text)
            cmd.Parameters.AddWithValue("@f", mainrate)
            cmd.ExecuteNonQuery()
            cn.Close()
        End If

    End Sub

    
  
End Class
