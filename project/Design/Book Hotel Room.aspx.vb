Imports System.Data
Imports System.Data.SqlClient
Imports System.Data.SqlClient.SqlParameter
Partial Class Book_Hotel_Room
    Inherits System.Web.UI.Page
    Dim cn As New SqlConnection("Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True")
    Dim cmd As New SqlCommand
    Dim s As String
    Dim da As SqlDataAdapter
    Dim ds As New DataSet
    Dim cnt As Integer
    Private PageSize As Integer = 10
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

    
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("typeofroom") = DropDownList1.SelectedValue
        Session("arrival") = TextBox1.Text
        Session("departure") = TextBox2.Text
        TextBox1.Text = Date.Today.ToString("D")
        TextBox2.Text = Date.Today.AddDays(1).ToString("D")


        If Not Me.IsPostBack Then
            Me.BindRepeater()

        End If

       
    End Sub
    Private Sub BindRepeater()
        If DropDownList1.SelectedValue = "Double Room" Then
            Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"
            Using con As New SqlConnection(constr)
                Using cmd As New SqlCommand("select * from doubl", con)
                    Using sda As New SqlDataAdapter(cmd)
                        Dim dt As New DataTable()
                        sda.Fill(dt)
                        Repeater1.DataSource = dt
                        Repeater1.DataBind()

                    End Using
                End Using
            End Using
        End If
        If DropDownList1.SelectedValue = "Single Room" Then
            Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"
            Using con As New SqlConnection(constr)
                Using cmd As New SqlCommand("select * from single", con)
                    Using sda As New SqlDataAdapter(cmd)
                        Dim dt As New DataTable()
                        sda.Fill(dt)
                        Repeater1.DataSource = dt
                        Repeater1.DataBind()

                    End Using
                End Using
            End Using
        End If
        If DropDownList1.SelectedValue = "Family/Multiple Rooms" Then
            Dim constr As String = "Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\Bijal\Documents\daman.mdf;Integrated Security=True;Connect Timeout=30;User Instance=True"
            Using con As New SqlConnection(constr)
                Using cmd As New SqlCommand("select * from family", con)
                    Using sda As New SqlDataAdapter(cmd)
                        Dim dt As New DataTable()
                        sda.Fill(dt)
                        Repeater1.DataSource = dt
                        Repeater1.DataBind()

                    End Using
                End Using
            End Using
        End If
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles DropDownList1.SelectedIndexChanged
        BindRepeater()

    End Sub

    Protected Sub ImageButton1_Click(ByVal sender As Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles ImageButton1.Click
        Session("user") = " "
        Response.Redirect("~/Login.aspx")
    End Sub
End Class
