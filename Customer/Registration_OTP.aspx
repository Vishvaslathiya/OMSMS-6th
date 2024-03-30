<%@ Page Title="OMSMS | Registration OTP" MasterPageFile="~/Res/Customer_Navbar.Master" Language="C#" AutoEventWireup="true" CodeBehind="Registration_OTP.aspx.cs" Inherits="OMSMS6.Customer.Registration_OTP" %>

<%@ Register Src="~/Links.ascx" TagName="Links" TagPrefix="omsms" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <omsms:Links runat="server" />

    <%-- Validating Input --%>
    <script>
        $(document).ready(function () {
            $("#registrationOTPForm").validate({
                rules: {
                    ctl00$ContentPlaceHolder1$txtOTP: {
                        required: true,
                        number: true,
                        maxlength: 6,
                        minlength: 6,
                    },
                },
                messages: {
                    ctl00$ContentPlaceHolder1$txtOTP: {
                        required: "Please Enter OTP!",
                        number: "Please Enter Valid OTP!",
                        maxlength: "OTP must br 6 Digits long!",
                        minlength: "OTP must br 6 Digits long!",
                    },
                },
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
                <p class="text-xl text-gray-600 text-center">OTP sent on</p>
                <p class="text-xl text-gray-600 text-center"><%=Session["email"] %></p>

                <%-- Registration OTP Form --%>
                <form id="registrationOTPForm" runat="server">

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
                    <a href="../Customer/Registration.aspx" class="text-sm text-gray-500 uppercase hover:text-cyan-600">not recieved OTP?</a>
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
</asp:Content>
