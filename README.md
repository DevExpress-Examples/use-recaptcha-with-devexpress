<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/439169172/21.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1053753)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->

# ASP.NET - How to add the Google reCAPTCHA tool to a project and use it with DevExpress Editors

This example demonstrates how to use the [reCAPTCHA API](https://www.google.com/recaptcha/about/) to validate user actions on your website.

![Sample](./Sample.png)

## Files to Look At

* [Default.aspx](./CS/ReCaptcha/Default.aspx) (VB: [Default.aspx](./VB/ReCaptcha/Default.aspx))

* [Default.aspx.cs](./CS/ReCaptcha/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/ReCaptcha/Default.aspx.vb))

## Implementation Details

Follow the steps below to add **reCAPTCHA** verification to a project:

1. Register your website with the [Google reCAPTCHA](https://www.google.com/recaptcha/admin/create) service to get a key pair that consists of a **site key** and **secret key**.

2. Create a `div` container with the **class** attribute set to **g-recaptcha**. Assign the **site key** value to the container's **data-sitekey** attribute.

This example handles the button's [Click](https://docs.devexpress.com/AspNet/js-ASPxClientButton.Click) event on the client side to get a user's [response](https://developers.google.com/recaptcha/docs/verify) to the **reCAPTCHA** challenge.

## Documentation

[reCAPTCHA Documentation](https://developers.google.com/recaptcha/intro)
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=use-recaptcha-with-devexpress&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=use-recaptcha-with-devexpress&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
