﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Password.aspx.cs" Inherits="OMSMS6.Res.Forgot_Password" %>

<%@ Register Src="~/Links.ascx" TagName="Links" TagPrefix="omsms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OMSMS | Forgot Password</title>

    <omsms:Links runat="server" />

    <%-- Validating Input --%>
    <script>
        $(document).ready(function () {
            $('#forgotPasswordForm').validate({
                rules: {
                    txtEmail: {
                        required: true,
                        email: true
                    },
                    txtPassword: {
                        required: true,
                        minlength: 6
                    },
                    txtRepeatPassword: {
                        required: true,
                        equalTo: "#txtPassword"
                    },
                },
                messages: {
                    txtEmail: {
                        required: "Please Enter Email!",
                        email: "Please Enter a valid Email!"
                    },
                    txtPassword: {
                        required: "Please Enter Password!",
                        minlength: "Password must be at least 6 characters long!"
                    },
                    txtRepeatPassword: {
                        required: "Please Enter Password Again!",
                        equalTo: "Both Passwords are must be Same!"
                    },
                },
            });
        });
    </script>

</head>
<body>
    <div class="py-16">
        <div class="flex bg-white rounded-lg shadow-lg overflow-hidden mx-auto max-w-sm lg:max-w-4xl">
            <div class="hidden lg:block lg:w-1/2 bg-cover"
                style="background-image: url('../Res/Images/shop-image.jpg')">
            </div>
            <div class="w-full p-8 lg:w-1/2">
                <div class="flex justify-between">
                    <div></div>
                    <ion-icon onclick="onClickClose()" name="close" class="text-2xl cursor-pointer"></ion-icon>
                </div>
                <h2 class="text-2xl font-semibold text-gray-700 text-center">OMSMS</h2>
                <p class="text-xl text-gray-600 text-center">Forgot Password?</p>
                <p class="text-xl text-gray-600 text-center">Don't Worry, We are here!</p>
                <%-- Forgot Password Form --%>
                <form id="forgotPasswordForm" runat="server">

                    <%-- Email --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Email Address</label>
                        <asp:TextBox runat="server" ID="txtEmail" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" TextMode="Email" />
                    </div>

                    <%-- Password --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Password</label>
                        <asp:TextBox runat="server" ID="txtPassword" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" TextMode="Password" />
                    </div>

                    <%-- Repeat Password --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Repeat Password</label>
                        <asp:TextBox runat="server" ID="txtRepeatPassword" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" TextMode="Password" />
                    </div>

                    <%-- Forgot Password Button --%>
                    <div class="mt-8">
                        <asp:Button runat="server" ID="btnSave" class="bg-gray-700 text-white font-bold py-2 px-4 w-full rounded hover:bg-gray-600" Text="Save" OnClick="btnSave_Click"></asp:Button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script>
        function onClickClose() {
            window.location.href = "Login.aspx";
        }
    </script>
</body>
</html>
