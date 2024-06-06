﻿<%@ Page Title="OMSMS | Registration" Language="C#" MasterPageFile="~/Res/Customer_Navbar.Master" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OMSMS6.Customer.Registration" %>

<%@ Register Src="~/Links.ascx" TagName="Links" TagPrefix="omsms" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <omsms:Links runat="server" />

    <!-- toastr -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script>
        toastr.options = {
            "positionClass": "toast-top-center",
            "timeOut": 2000, // 2 seconds
            "extendedTimeOut": 1000, // 1 second extended time on hover
            "closeButton": true,
            "progressBar": true,
            "debug": false,
            "showDuration": 300,
            "hideDuration": 1000,
        };
    </script>

    <%-- <script>
        // Function to display Toastr success message
        function showSuccessMessage(message) {
            toastr.success(message);
        }

        // Function to display Toastr error message
        function showErrorMessage(message) {
            toastr.error(message);
        }
    </script>--%>

    <%-- Validating Input --%>
    <script>
        $(document).ready(function () {
            $("#RegistrationForm").validate({
                rules: {
                    ctl00$ContentPlaceHolder1$txtName: {
                        required: true,
                        //text: true,
                    },
                    ctl00$ContentPlaceHolder1$txtEmail: {
                        required: true,
                        //email: true,
                    },
                    ctl00$ContentPlaceHolder1$txtContact: {
                        required: true,
                        //number: true,
                        //minlength: 10,
                        //maxlength: 10,
                    },
                    ctl00$ContentPlaceHolder1$txtPassword: {
                        required: true,
                        minlength: 6,
                    },
                    ctl00$ContentPlaceHolder1$txtRepeatPassword: {
                        required: true,
                        equalTo: "#<%= txtPassword.ClientID%>",
                    },
                    ctl00$ContentPlaceHolder1$gender: {
                        required: true,
                    },
                    ctl00$ContentPlaceHolder1$ddlState: {
                        required: true,
                    },
                    ctl00$ContentPlaceHolder1$ddlCity: {
                        required: true,
                    },
                    //ctl00$ContentPlaceHolder1$txtAddress: {
                    //    required: true,
                    //},

                },
                messages: {
                    ctl00$ContentPlaceHolder1$txtName: {
                        required: "Please Enter Your Name!",
                        //text: "Please Enter Only Text!",
                    },
                    ctl00$ContentPlaceHolder1$txtEmail: {
                        required: "Please Enter Your Email!",
                        //email: "Please Enter Valid Email!",
                    },
                    ctl00$ContentPlaceHolder1$txtContact: {
                        required: "Please Enter Contact Number!",
                        //number: "Please Enter Valid Contact Number!",
                        //minlength: "Please Enter 10 Digit Contact Number!",
                        //maxlength: "Please Enter 10 Digit Contact Number!",
                    },
                    ctl00$ContentPlaceHolder1$txtPassword: {
                        required: "Please Enter Password!",
                        minlength: "Password must be at least 6 character long!",
                    },
                    ctl00$ContentPlaceHolder1$txtRepeatPassword: {
                        required: "Please Enter Password Again!",
                        equalTo: 'Both password should be Same!',
                    },
                    ctl00$ContentPlaceHolder1$gender: {
                        required: "Please Select Gender!",
                    },
                    ctl00$ContentPlaceHolder1$ddlState: {
                        required: "Please Select State!",
                    },
                    ctl00$ContentPlaceHolder1$ddlCity: {
                        required: "Please Select City!",
                    },
                    //ctl00$ContentPlaceHolder1$txtAddress: {
                    //    required: "Please Enter Full Address!",
                    //},
                },
            });
        });
    </script>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="py-16">
        <div class="flex bg-white rounded-lg shadow-lg overflow-hidden mx-auto max-w-sm lg:max-w-4xl">
            <div class="w-full p-8 lg:w-1/2">
                <div class="flex justify-between">
                    <div></div>
                    <ion-icon onclick="onClickClose()" name="close" class="text-2xl cursor-pointer"></ion-icon>
                </div>
                <h2 class="text-2xl font-semibold text-gray-700 text-center">OMSMS</h2>
                <p class="text-xl text-gray-600 text-center">New here? Register Now!</p>

                <%-- Registration Form --%>
                <form id="RegistrationForm" runat="server">
                    <%-- Name --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Full Name</label>
                        <asp:TextBox runat="server" ID="txtName" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtName" ErrorMessage="Name should contain Character Only!" ForeColor="Red" ValidationExpression="^[a-zA-Z\s]*$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </div>

                    <%-- Email --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Email Address</label>
                        <asp:TextBox runat="server" ID="txtEmail" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" TextMode="Email" />
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Please Enter Valid Email!" ForeColor="Red" ValidationExpression="\b[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}\b" Display="Dynamic"></asp:RegularExpressionValidator>--%>
                    </div>

                    <%-- Contact Number --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Contact Number</label>
                        <asp:TextBox runat="server" ID="txtContact" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" TextMode="Phone" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtContact" ForeColor="Red" ErrorMessage="Please Enter Valid Contact Number!" ValidationExpression="^[6-9]\d{9}$" Display="Dynamic"></asp:RegularExpressionValidator>
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

                    <%-- Gender --%>
                    <div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Gender</label>
                        <div class="flex bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none space-x-5">
                            <div>
                                <asp:RadioButton runat="server" ID="rbMale" GroupName="gender" class="text-lg" />
                                <label>Male</label>
                            </div>
                            <div>
                                <asp:RadioButton runat="server" ID="rbFemale" GroupName="gender" class="text-lg" />
                                <label>Female</label>
                            </div>
                            <div>
                                <asp:RadioButton runat="server" ID="rbOther" GroupName="gender" class="text-lg" />
                                <label>Other</label>
                            </div>
                        </div>
                        <label id="ctl00$ContentPlaceHolder1$gender-error" class="error" for="ctl00$ContentPlaceHolder1$gender"></label>
                    </div>

                    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                    <div class="mt-4">
                        <%-- State --%>
                        <div>
                            <asp:UpdatePanel runat="server" ID="statePanel">
                                <ContentTemplate>
                                    <label class="block text-gray-700 text-sm font-bold mb-2">State</label>
                                    <asp:DropDownList runat="server" ID="ddlState" AutoPostBack="true" DataTextField="name" DataValueField="id" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" OnSelectedIndexChanged="ddlState_SelectedIndexChanged">
                                    </asp:DropDownList>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddlState" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>

                        <%-- City --%>
                        <div class="mt-4">
                            <asp:UpdatePanel ID="cityPanel" runat="server">
                                <ContentTemplate>
                                    <label class="block text-gray-700 text-sm font-bold mb-2">City</label>
                                    <asp:DropDownList runat="server" ID="ddlCity" AutoPostBack="true" DataTextField="name" DataValueField="id" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none">
                                        <asp:ListItem>--Select State First--</asp:ListItem>
                                    </asp:DropDownList>
                                </ContentTemplate>
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="ddlCity" />
                                </Triggers>
                            </asp:UpdatePanel>
                        </div>
                    </div>

                    <%-- Address --%>
                    <%--<div class="mt-4">
                        <label class="block text-gray-700 text-sm font-bold mb-2">Address</label>
                        <asp:TextBox runat="server" ID="txtAddress" TextMode="MultiLine" class="bg-gray-200 text-gray-700 focus:outline-none focus:shadow-outline border border-gray-300 rounded py-2 px-4 block w-full appearance-none" />
                    </div>--%>

                    <%-- Register Button --%>
                    <div class="mt-4">
                        <asp:Button runat="server" ID="btnRegister" OnClick="btnRegister_Click" class="bg-gray-700 text-white font-bold py-2 px-4 w-full rounded hover:bg-gray-600" Text="Register"></asp:Button>
                    </div>
                </form>

                <%-- Sign in Link --%>
                <div class="mt-4 flex items-center justify-between">
                    <span class="border-b w-1/5 md:w-1/4"></span>
                    <a href="../Res/Login.aspx" class="text-sm text-gray-500 uppercase hover:text-cyan-600">or sign in</a>
                    <span class="border-b w-1/5 md:w-1/4"></span>
                </div>
            </div>
            <div class="hidden lg:block lg:w-1/2 bg-cover"
                style="background-image: url('../Res/Images/shop-image.jpg')">
            </div>
        </div>
    </div>
    <script>
        // Close
        function onClickClose() {
            window.location.href = "Default.aspx";
        }
    </script>
</asp:Content>
