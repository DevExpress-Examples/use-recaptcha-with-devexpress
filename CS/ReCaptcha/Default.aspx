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

        <dx:ASPxFormLayout ID="ASPxFormLayout1" runat="server">
            <Items>
                <dx:LayoutItem Caption="Name:">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox runat="server" ID="Name"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem Caption="E-Mail:">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxTextBox runat="server" ID="mail"></dx:ASPxTextBox>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem ShowCaption="False">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <div class="g-recaptcha" data-sitekey="6LdZ6acdAAAAAFBsz2QYYxWUB1j8Gf1yQ3yQtofM"></div>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>
                <dx:LayoutItem ShowCaption="False">
                    <LayoutItemNestedControlCollection>
                        <dx:LayoutItemNestedControlContainer>
                            <dx:ASPxButton runat="server" Text="Submit" AutoPostBack="false" ID="Submit" ClientInstanceName="submit" OnClick="Submit_Click">
                                <ClientSideEvents Click="OnSubmitClick" />
                            </dx:ASPxButton>
                        </dx:LayoutItemNestedControlContainer>
                    </LayoutItemNestedControlCollection>
                </dx:LayoutItem>





            </Items>
        </dx:ASPxFormLayout>
    </form>
</body>
</html>
