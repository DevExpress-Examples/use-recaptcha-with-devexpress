<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ReCaptcha.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to use ReCaptcha with DevExpress Editors</title>
 <script src="https://www.google.com/recaptcha/api.js"></script>
    <script>
        function OnSubmitClick(s, e) {
            if (document.getElementById("ValidationResult") != null) {
                ValidationResult.remove();
            }
            if (grecaptcha.getResponse().length !== 0) {
                e.processOnServer = true;
            }
            else {
                e.processOnServer = false;
                let label = document.createElement("label");
                label.id = "ValidationResult";
                label.style.color = "red";
                label.textContent = "Captcha Failed"
                form1.append(label);
            }
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <h1>How to use ReCaptcha with DevExpress Editors</h1>
        <dx:ASPxTextBox runat="server" ID="Name" Caption="Name:"></dx:ASPxTextBox>
        <dx:ASPxTextBox runat="server" ID="mail" Caption="E-Mail:"></dx:ASPxTextBox>
        <div class="g-recaptcha" data-sitekey=""></div> 
        <dx:ASPxButton runat="server" Text="Submit" AutoPostBack="false" ID="Submit" ClientInstanceName="submit" OnClick="Submit_Click">
            <ClientSideEvents Click="OnSubmitClick" />
        </dx:ASPxButton>
    </form>
</body>
</html>
