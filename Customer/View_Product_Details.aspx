<%@ Page Title="" Language="C#" MasterPageFile="~/Res/Customer_Navbar.Master" AutoEventWireup="true" CodeBehind="View_Product_Details.aspx.cs" Inherits="OMSMS6.Customer.View_Product_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <title>OMSMS</title>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <%-- Tailwind CSS CDN --%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%-- Daisy UI CDN --%>

    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.2/dist/full.min.css" rel="stylesheet"
        type="text/css" />

    <link href="https://cdn.jsdelivr.net/npm/remixicon@4.2.0/fonts/remixicon.css" rel="stylesheet" />
    <script src="https://cdn.tailwindcss.com"></script>
    <%-- Ionicons Links --%>

    <script type="module"
        src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule="" src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons/ionicons.js"></script>

    <script src="https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js" defer></script>


    <%-- Favicon --%>
    <link rel="icon" href="Images/logo.png" type="image/png">

    <%-- CSS files --%>
    <link rel="stylesheet" href="../Res/CSS/Style.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Add breadcrum with font size 20px -->
    <div class="flex items-left ">
        <nav class="text-sm ml-8  p-4 md:p-6 lg:p-6 rounded-md ">
            <ol class="list-none p-0 inline-flex space-x-2">
                <li class="flex items-center">
                    <svg onclick="window.location.href='/';" xmlns="http://www.w3.org/2000/svg" height="1em" viewBox="0 0 576 512" class="cursor-pointer hover:fill-blue-500 transition-colors duration-300" fill="#4b5563">
                        <!--! Font Awesome Free 6.4.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license (Commercial License) Copyright 2023 Fonticons, Inc. -->
                        <path d="M575.8 255.5c0 18-15 32.1-32 32.1h-32l.7 160.2c0 2.7-.2 5.4-.5 8.1V472c0 22.1-17.9 40-40 40H456c-1.1 0-2.2 0-3.3-.1c-1.4 .1-2.8 .1-4.2 .1H416 392c-22.1 0-40-17.9-40-40V448 384c0-17.7-14.3-32-32-32H256c-17.7 0-32 14.3-32 32v64 24c0 22.1-17.9 40-40 40H160 128.1c-1.5 0-3-.1-4.5-.2c-1.2 .1-2.4 .2-3.6 .2H104c-22.1 0-40-17.9-40-40V360c0-.9 0-1.9 .1-2.8V287.6H32c-18 0-32-14-32-32.1c0-9 3-17 10-24L266.4 8c7-7 15-8 22-8s15 2 21 7L564.8 231.5c8 7 12 15 11 24z" />
                    </svg>
                    <span class="mx-2">/</span>
                </li>
                <li class="flex items-center">
                    <a href="#" class="text-gray-600 hover:text-blue-500 transition-colors duration-300">Tools</a>
                    <span class="mx-2">/</span>
                </li>

            </ol>
        </nav>
    </div>

    <hr />


    <main class=" bg-gray-900 pt-4 h-screen ">
        <div class="container mx-auto px-6">
            <div class="md:flex md:items-center">
                <div class="w-full h-full  md:w-1/2 lg:h-96">
                    <img class="h-full w-full rounded-md object-cover max-w-lg mx-auto" src="https://images.unsplash.com/photo-1578262825743-a4e402caab76?ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80" alt="Nike Air">
                </div>
                <div class="w-full max-w-lg mx-auto mt-5 md:ml-8 md:mt-0 md:w-1/2">
                    <h3 class="text-white uppercase text-lg">Nike Air</h3>
                    <span class="text-white mt-3">Free</span>
                    <hr class="my-3">
                    <div class="mt-2">
                        <label class="text-white text-sm" for="count">Count : </label>
                        <div class="flex items-center mt-1">
                            <asp:Button ID="btnDecrease" runat="server" Class="text-white focus:outline-none focus:text-gray-600"  >
                                
                            </asp:Button>
                            <asp:Label ID="lblCount" runat="server" Class="text-white text-lg mx-2">20</asp:Label>
                            <asp:Button ID="btnIncrease" runat="server" Class="text-white focus:outline-none focus:text-gray-600" >
 
                            </asp:Button>
                        </div>
                    </div>

                    <div class="mt-3">
                        <label class="text-white text-sm" for="count">Color:</label>
                        <div class="flex items-center mt-1">
                            <asp:Button ID="btnColorBlue" runat="server" Class="h-5 w-5 rounded-full bg-blue-600 border-2 border-blue-200 mr-2 focus:outline-none" />
                            <asp:Button ID="btnColorTeal" runat="server" Class="h-5 w-5 rounded-full bg-teal-600 mr-2 focus:outline-none" />
                            <asp:Button ID="btnColorPink" runat="server" Class="h-5 w-5 rounded-full bg-pink-600 mr-2 focus:outline-none" />

                        </div>
                    </div>
                    <div class="mt-3 ">
                        <label class="text-white text-sm" for="count">Size : </label>
                        <asp:Button ID="btnSuccess1" runat="server" Text="Success" Class="btn btn-outline btn-success mx-2" />
                        <asp:Button ID="btnSuccess2" runat="server" Text="Success" Class="btn btn-outline btn-success" />
                        <asp:Button ID="btnSuccess3" runat="server" Text="Success" Class="btn btn-outline btn-success mx-2" />

                    </div>
                    <div class="flex items-center mt-6">
                        <asp:Button ID="btnOrderNow" runat="server" Text="Order Now" Class="px-8 py-2 text-white text-sm font-medium rounded hover:bg-indigo-500 focus:outline-none focus:bg-indigo-500"   />
                        <asp:Button ID="btnCancel" runat="server" Class="mx-2 text-gray-600 border rounded-md p-2 hover:bg-gray-200 focus:outline-none">
                            
                        </asp:Button>

                    </div>
                </div>
            </div>

        </div>
    </main>



</asp:Content>
