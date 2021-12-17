<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/439169172/21.2.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T1053753)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->

# How to use Google reCAPTCHA with DevExpress Editors

This example demonstrates how to use [reCAPTCHA API](https://www.google.com/recaptcha/about/) to validate user input.

![Sample](./Sample.png)

## Files to Look At

* [Default.aspx](./CS/ReCaptcha/Default.aspx)(VB: [Default.aspx](./VB/ReCaptcha/Default.aspx))

* [Default.aspx.cs](./CS/ReCaptcha/Default.aspx.cs)(VB: [Default.aspx.vb](./VB/ReCaptcha/Default.aspx.vb))

## Implementation Details

Follow the steps below to add **reCAPTCHA** verification to your project:

1. Register your website's domain in the [Google reCAPTCHA](https://www.google.com/recaptcha/admin/create) service to get a pair of a **site key** and **secret key**.

2. Create a `div` container with the **class** attribute set to **g-recaptcha**. Assign the **site key** value to the container's **data-sitekey** attribute.

## Documentation
[reCAPTCHA Documentation](https://developers.google.com/recaptcha/intro)