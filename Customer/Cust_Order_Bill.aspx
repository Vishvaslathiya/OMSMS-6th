<%@ Page Title="" Language="C#" MasterPageFile="~/Res/Customer_Navbar.Master" AutoEventWireup="true"
    CodeBehind="Cust_Order_Bill.aspx.cs" %>

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

        <div
            class=" m-4 border-[5px] border-gray-400 shadow-default dark:border-strokedark dark:bg-boxdark mb-10 rounded-sm border bg-white">
             

            <div class="p-4 sm:p-6 xl:p-9">
                <div class="mb-10 flex flex-wrap items-center justify-end gap-3.5">
                    Order ID:
                    <div class="flex flex-wrap justify-between gap-5">
                        <asp:Label runat="server" ID="lbl_order_id" CssClass="text-black font-medium text-black"
                            Text="34567"></asp:Label>
                     </div>
            <button
                        class="bg-meta-3 inline-flex items-center gap-2.5 rounded bg-red-600 px-4 py-[7px] font-medium text-white hover:bg-opacity-90">
                        <svg class="fill-current" width="18" height="18" viewBox="0 0 18 18" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M15.3566 4.07803V1.96865C15.3566 1.15303 14.6816 0.478027 13.866 0.478027H4.10664C3.29102 0.478027 2.61602 1.15303 2.61602 1.96865V4.07803C1.82852 4.10615 1.18164 4.75303 1.18164 5.54053V9.59053C1.18164 10.378 1.82852 11.0249 2.61602 11.053V16.0312C2.61602 16.8468 3.29102 17.5218 4.10664 17.5218H13.8941C14.7098 17.5218 15.3848 16.8468 15.3848 16.0312V11.053C16.1723 11.0249 16.8191 10.378 16.8191 9.59053V5.54053C16.791 4.75303 16.1441 4.10615 15.3566 4.07803ZM3.90977 1.96865C3.90977 1.85615 3.99414 1.74365 4.13477 1.74365H13.9223C14.0348 1.74365 14.1473 1.82803 14.1473 1.96865V4.07803H3.90977V1.96865ZM14.091 16.0312C14.091 16.1437 14.0066 16.2562 13.866 16.2562H4.10664C3.99414 16.2562 3.88164 16.1718 3.88164 16.0312V11.053H14.091V16.0312V16.0312ZM15.5254 9.59053C15.5254 9.70303 15.441 9.81553 15.3004 9.81553H2.67227C2.55977 9.81553 2.44727 9.73115 2.44727 9.59053V5.54053C2.44727 5.42803 2.53164 5.31553 2.67227 5.31553H15.3004C15.4129 5.31553 15.5254 5.3999 15.5254 5.54053V9.59053V9.59053Z"
                                fill=""></path>
                            <path
                                d="M6.89102 13.2186H11.1098C11.4473 13.2186 11.7566 12.9373 11.7566 12.5717C11.7566 12.2061 11.4754 11.9248 11.1098 11.9248H6.89102C6.55352 11.9248 6.24414 12.2061 6.24414 12.5717C6.24414 12.9373 6.55352 13.2186 6.89102 13.2186Z"
                                fill=""></path>
                            <path
                                d="M14.0629 6.5249H11.9535C11.616 6.5249 11.3066 6.80615 11.3066 7.17178C11.3066 7.5374 11.5879 7.81865 11.9535 7.81865H14.0629C14.4004 7.81865 14.7098 7.5374 14.7098 7.17178C14.7098 6.80615 14.4285 6.5249 14.0629 6.5249Z"
                                fill=""></path>
                            <path
                                d="M6.89102 15.3562H11.1098C11.4473 15.3562 11.7566 15.075 11.7566 14.7094C11.7566 14.3437 11.4754 14.0625 11.1098 14.0625H6.89102C6.55352 14.0625 6.24414 14.3437 6.24414 14.7094C6.24414 15.075 6.55352 15.3562 6.89102 15.3562Z"
                                fill=""></path>
                        </svg>
                        Print
                    </button>

                    <button
                        class="bg-primary inline-flex items-center gap-2.5 rounded bg-green-600 px-4 py-[7px] font-medium text-white hover:bg-opacity-90">
                        <svg class="fill-current" width="18" height="18" viewBox="0 0 18 18" fill="none"
                            xmlns="http://www.w3.org/2000/svg">
                            <path
                                d="M15.3419 4.66885L11.5204 0.843848C11.2988 0.618848 10.9942 0.506348 10.6896 0.506348H4.04344C3.10191 0.506348 2.29883 1.29385 2.29883 2.27822V8.8876C2.29883 9.2251 2.57575 9.53447 2.93575 9.53447C3.29575 9.53447 3.57267 9.25322 3.57267 8.8876V2.2501C3.57267 1.96885 3.79421 1.74385 4.07114 1.74385H10.3296V5.34385C10.3296 5.68135 10.6065 5.99072 10.9665 5.99072H14.4834V8.71885C14.4834 9.05635 14.7604 9.36572 15.1204 9.36572C15.4804 9.36572 15.7573 9.08447 15.7573 8.71885V5.5126C15.6742 5.20322 15.5634 4.89385 15.3419 4.66885ZM11.5481 2.64385L13.625 4.7251H11.5481V2.64385Z"
                                fill=""></path>
                            <path
                                d="M15.0653 14.5688C14.733 14.5688 14.4284 14.8501 14.4284 15.2157V15.7782C14.4284 16.0595 14.2069 16.2845 13.9299 16.2845H4.04379C3.76687 16.2845 3.54533 16.0595 3.54533 15.7782V15.3845C3.54533 15.047 3.26841 14.7376 2.90841 14.7376C2.54841 14.7376 2.27148 15.0188 2.27148 15.3845V15.7501C2.27148 16.7063 3.04687 17.522 4.0161 17.522H13.9023C14.8438 17.522 15.6469 16.7345 15.6469 15.7501V15.1876C15.6746 14.8501 15.3976 14.5688 15.0653 14.5688Z"
                                fill=""></path>
                            <path
                                d="M12.6014 10.6875H14.1245C14.4568 10.6875 14.7614 10.4063 14.7614 10.0407C14.7614 9.67505 14.4845 9.3938 14.1245 9.3938H12.6014C11.8537 9.3938 11.2168 10.0407 11.2168 10.8V14.2032C11.2168 14.5407 11.4937 14.85 11.8537 14.85C12.2137 14.85 12.4906 14.5688 12.4906 14.2032V12.4313H13.543C13.8753 12.4313 14.1799 12.15 14.1799 11.7844C14.1799 11.4188 13.903 11.1375 13.543 11.1375H12.463V10.7719C12.463 10.7719 12.5183 10.6875 12.6014 10.6875Z"
                                fill=""></path>
                            <path
                                d="M8.8346 14.8782C9.80383 14.8782 10.6069 14.0626 10.6069 13.0501V11.1938C10.6069 10.1813 9.80383 9.36572 8.8346 9.36572H7.56075C7.22844 9.36572 6.92383 9.64697 6.92383 10.0126V14.2595C6.92383 14.597 7.20075 14.9063 7.56075 14.9063H8.8346V14.8782ZM8.16998 10.6313H8.8069C9.08383 10.6313 9.33306 10.8845 9.33306 11.1938V13.0501C9.33306 13.3595 9.08383 13.6126 8.8069 13.6126H8.16998V10.6313Z"
                                fill=""></path>
                            <path
                                d="M3.87716 14.8782C4.20947 14.8782 4.51408 14.5969 4.51408 14.2313V12.5438H5.871C6.20331 12.5438 6.50793 12.2625 6.50793 11.8969V10.0407C6.50793 9.70317 6.231 9.3938 5.871 9.3938H3.87716C3.54485 9.3938 3.24023 9.67505 3.24023 10.0407V14.2313C3.26793 14.5969 3.54485 14.8782 3.87716 14.8782ZM4.51408 10.6875H5.23408V11.2782H4.51408V10.6875Z"
                                fill=""></path>
                        </svg>
                        Save As PDF
                    </button>
                </div>

                <div class="flex flex-wrap justify-between gap-5">
                    <div>
                        <p class="mb-1.5 font-medium text-black dark:text-white">Billing From:</p>
                        <h4 class="mb-3 text-xl font-bold text-black dark:text-white">Super Technologies</h4>
                        <a href="#" class="block"><span class="font-medium text-black dark:text-white">Email:</span>
                            contact@example.com</a>
                        <span class="mt-1.5 block"><span class="font-medium text-black dark:text-white">Address:</span>
                            2972 Westheimer Rd. Santa Ana.</span>
                    </div>

                    <div>
                        <p class="mb-1.5 font-medium text-black dark:text-white">Billing To:</p>
                        <h4 class="mb-3 text-xl font-bold text-black dark:text-white">Devid wilium</h4>
                        <a href="#" class="block"><span class="font-medium text-black dark:text-white">Email:</span>
                            contact@example.com</a>
                        <span class="mt-1.5 block"><span class="font-medium text-black dark:text-white">Address:</span>
                            New York, USA 2707 Davis Anenue</span>
                    </div>
                </div>

                <div
                    class="my-7.5 border-stroke dark:border-strokedark xsm:grid-cols-2 grid grid-cols-1 border sm:grid-cols-4">
                    <div
                        class="border-stroke dark:border-strokedark border-b border-r px-5 py-4 last:border-r-0 sm:border-b-0">
                        <h5 class="mb-1.5 font-bold text-black dark:text-white">Invoice ID :</h5>
                        <span class="text-sm font-medium">#STK83084398239 </span>
                    </div>

                    <div
                        class="border-stroke dark:border-strokedark border-b px-5 py-4 last:border-r-0 sm:border-b-0 sm:border-r">
                        <h5 class="mb-1.5 font-bold text-black dark:text-white">Date Issued :</h5>
                        <span class="text-sm font-medium">29, Nov 2027 </span>
                    </div>

                    <div
                        class="border-stroke dark:border-strokedark xsm:border-b-0 border-b border-r px-5 py-4 last:border-r-0">
                        <h5 class="mb-1.5 font-bold text-black dark:text-white">Due Date :</h5>
                        <span class="text-sm font-medium">29, Dec 2027 </span>
                    </div>

                    <div class="border-stroke dark:border-strokedark border-r px-5 py-4 last:border-r-0">
                        <h5 class="mb-1.5 font-bold text-black dark:text-white">Due Amount :</h5>
                        <span class="text-sm font-medium">$2,578.90 </span>
                    </div>
                </div>

                <div class="border-stroke dark:border-strokedark border">
                    <div class="max-w-full overflow-x-auto">
                        <div class="min-w-[670px]">
                            <!-- table header start -->
                            <div
                                class="border-stroke dark:border-strokedark grid grid-cols-12 border-b py-3.5 pl-5 pr-6">
                                <div class="col-span-3">
                                    <h5 class="font-medium text-black dark:text-white">Brand name</h5>
                                </div>

                                <div class="col-span-4">
                                    <h5 class="font-medium text-black dark:text-white">Description</h5>
                                </div>

                                <div class="col-span-2">
                                    <h5 class="font-medium text-black dark:text-white">Quantity</h5>
                                </div>

                                <div class="col-span-2">
                                    <h5 class="font-medium text-black dark:text-white">Price Per Unit</h5>
                                </div>

                                <div class="col-span-1">
                                    <h5 class="text-right font-medium text-black dark:text-white">Total</h5>
                                </div>
                            </div>
                            <!-- table header end -->


                            <!-- product item -->
                            <div
                                class="border-stroke dark:border-strokedark grid grid-cols-12 border-b py-3.5 pl-5 pr-6">
                                <div class="col-span-3">
                                    <asp:Label ID="prd_brand" CssClass="font-medium" runat="server" Text="Samsung">
                                    </asp:Label>
                                </div>

                                <div class="col-span-4">
                                    <asp:Label ID="prd_name" CssClass="font-medium" runat="server"
                                        Text="Samsung S24 Ultra"></asp:Label>
                                </div>

                                <div class="col-span-2">
                                    <asp:Label ID="prd_quantity" CssClass="font-medium" runat="server" Text="1">
                                    </asp:Label>
                                </div>

                                <div class="col-span-2">
                                    <asp:Label ID="prd_price" CssClass="font-medium" runat="server" Text="$300">
                                    </asp:Label>
                                </div>

                                <div class="col-span-1">
                                    <asp:Label ID="prd_total" CssClass="font-medium" runat="server" Text="$300">
                                    </asp:Label>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

                <!-- total price start -->
                <div class="flex justify-end p-6">
                    <div class="max-w-65 w-full">
                        <div class="flex flex-col gap-4">
                            <p class="flex justify-between font-medium text-black dark:text-black">
                                <span>Subtotal </span>
                                <asp:Label ID="prd_subtotal" CssClass="font-medium" runat="server" Text="$300">
                                </asp:Label>
                            </p>

                            <p class="flex justify-between font-medium text-black dark:text-black">
                                <span>Shipping Cost (+) </span>
                                <asp:Label ID="prd_shipping_charge" CssClass="font-medium" runat="server" Text="$10">
                                </asp:Label>
                            </p>


                        </div>

                        <p class="border-stroke dark:border-strokedark mt-4 flex justify-between border-t pt-5">
                            <span class="font-medium text-black  ">Total </span>
                            <asp:Label ID="total_bill" CssClass="font-medium" runat="server" Text="$310"></asp:Label>
                        </p>

                        <asp:Button runat="server" ID="btn_download" Text="Download"
                            CssClass="bg-red-600 p-4 px-7.5 float-right mt-10 inline-flex items-center gap-2.5 rounded py-2.5 font-medium text-white hover:bg-opacity-90">
                        </asp:Button>

                    </div>
                </div> <!-- total price end -->
            </div>
        </div>
        </div>

    </asp:Content>
