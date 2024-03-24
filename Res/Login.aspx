<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OMSMS6.Res.Login" %>

<%@ Register Src="~/Links.ascx" TagName="Links" TagPrefix="omsms" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OMSMS | Login</title>

    <omsms:Links runat="server" />

    <%-- Validating Input --%>
    <script>
        $(document).ready(function () {
            $("#loginForm").validate({
                rules: {
                    txtEmail: {
                        required: true,
                        email: true,
                    },
                    txtPassword: {
                        required: true,
                    },
                },
                messages: {
                    txtEmail: {
                        required: "Please Enter Email!",
                        email: "Please Enter a valid Email!",
                    },
                    txtPassword: {
                        required: "Please Enter Password!",
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
                <p class="text-xl text-gray-600 text-center">Welcome back!</p>
                <%-- Login Form --%>
                <form id="loginForm" runat="server">

                    <%-- Email --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Email Address</label>
                        <asp:TextBox runat="server" ID="txtEmail" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" TextMode="Email" />
                    </div>

                    <%-- Password --%>
                    <div class="mt-4">
                        <div class="flex justify-between">
                            <label class="block text-gray-700 text-sm font-bold mb-2">Password</label>

                            <%-- Forgot Password --%>
                            <a href="Forgot_Password.aspx" class="text-xs text-gray-500 hover:text-cyan-600">Forget Password?</a>
                        </div>
                        <asp:TextBox runat="server" ID="txtPassword" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" TextMode="Password" />
                    </div>

                    <%-- Remember Me --%>
                    <div class="mt-4 flex item-center space-x-3">
                        <asp:CheckBox runat="server" ID="chbRemme" />
                        <label class="block text-gray-700 text-sm font-bold">Remember Me?</label>
                    </div>

                    <%-- Login Button --%>
                    <div class="mt-8">
                        <asp:Button runat="server" ID="btnLogin" class="bg-gray-700 text-white font-bold py-2 px-4 w-full rounded hover:bg-gray-600" Text="Login" OnClick="btnLogin_Click"></asp:Button>
                    </div>
                </form>

                <%-- Signup Link --%>
                <div class="mt-4 flex items-center justify-between">
                    <span class="border-b w-1/5 md:w-1/4"></span>
                    <a href="../Customer/Registration.aspx" class="text-sm text-gray-500 uppercase hover:text-cyan-600">or sign up</a>
                    <span class="border-b w-1/5 md:w-1/4"></span>
                </div>
            </div>
        </div>
    </div>
    <script>
        function onClickClose() {
            window.location.href = "../Customer/Default.aspx";
        }
    </script>
</body>
</html>
