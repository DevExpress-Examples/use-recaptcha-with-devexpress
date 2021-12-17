Imports System
Imports System.Web.UI
Imports System.Web.UI.WebControls

Namespace ReCaptcha

    Public Partial Class [Default]
        Inherits Page

        Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        End Sub

        Protected Sub Submit_Click(ByVal sender As Object, ByVal e As EventArgs)
            Dim label As Label = New Label() With {.ID = "ValidationResult", .Text = "Success"}
            label.ForeColor = System.Drawing.Color.Green
            form1.Controls.Add(label)
        End Sub
    End Class
End Namespace
