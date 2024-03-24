<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Forgot_Password_OTP.aspx.cs" Inherits="OMSMS6.Res.Forgot_Password_OTP" %>

<%@ Register Src="~/Links.ascx" TagName="Links" TagPrefix="omsms" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OMSMS | OTP Verification</title>
    <omsms:Links runat="server" />

    <%-- Validating Input --%>
    <script>
        $(document).ready(function () {
            $('#forgotPasswordOTPForm').validate({
                rules: {
                    txtOTP: {
                        required: true,
                        number: true,
                        minlength: 6,
                        maxlength: 6
                    },
                },
                messages: {
                    txtOTP: {
                        required: "Please Enter OTP!",
                        number: "Please Enter valid OTP",
                        minlength: "OTP must be 6 digits!",
                        maxlength: "OTP must be 6 digits!"
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
                <p class="text-xl text-gray-600 text-center">OTP Verification</p>

                <%-- Registration OTP Form --%>
                <form id="forgotPasswordOTPForm" runat="server">

                    <%-- Email --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">OTP [One Time Password]</label>
                        <asp:TextBox runat="server" ID="txtOTP" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" />
                    </div>

                    <%-- Verify Button --%>
                    <div class="mt-8">
                        <asp:Button runat="server" ID="btnVerify" class="bg-gray-700 text-white font-bold py-2 px-4 w-full rounded hover:bg-gray-600" OnClick="btnVerify_Click" Text="Verify"></asp:Button>
                    </div>
                </form>
                <div class="mt-4 flex items-center justify-between">
                    <span class="border-b w-1/5 md:w-1/4"></span>
                    <a href="Forgot_Password.aspx" class="text-sm text-gray-500 uppercase hover:text-cyan-600">not recieved OTP?</a>
                    <span class="border-b w-1/5 md:w-1/4"></span>
                </div>
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
