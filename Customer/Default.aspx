<%@ Page Title="" Language="C#" MasterPageFile="~/Res/Customer_Navbar.Master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="OMSMS6.Customer.Default" %>

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

    <%-- Favicon --%>
    <link rel="icon" href="Images/logo.png" type="image/png">

    <%-- CSS files --%>
    <link rel="stylesheet" href="../Res/CSS/Style.css">
    <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    fontFamily: {
                        inter: ['Inter', 'sans-serif'],
                    },
                    animation: {
                        'infinite-scroll': 'infinite-scroll 25s linear infinite',
                    },
                    keyframes: {
                        'infinite-scroll': {
                            from: { transform: 'translateX(0)' },
                            to: { transform: 'translateX(-100%)' },
                        }
                    }
                },
            },
        };
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <body class="bg-gray-700">
        <div class=" dark:bg-gray-100">

            <div class="carousel w-full h-screen ">
                <div id="slide1" class="carousel-item relative w-full">

                    <section class="bg-white w-full  dark:bg-gray-700">
                        <div
                            class="container grid max-w-screen-xl px-4 py-8 mx-auto lg:gap-8 xl:gap-0 lg:py-16 lg:grid-cols-12">
                            <div class="mr-auto w-full place-self-center lg:col-span-7">
                                <h1
                                    class="max-w-2xl  mb-4 text-4xl font-extrabold tracking-tight leading-none md:text-5xl xl:text-6xl dark:text-white">Finding New Phone...?</h1>
                                <p
                                    class="max-w-2xl mb-6 font-light text-gray-500 lg:mb-8 md:text-lg lg:text-xl dark:text-gray-400">
                                    Buy your favourite brand's mobiles and register now to stay tuned for moblie phones news
                                </p>
                                </p>

                            <asp:HyperLink
                                class="bg-transparent text-white hover:bg-blue-100 text-white-300 hover:text-black rounded shadow hover:shadow-lg py-2 px-4 border border-blue-300 hover:border-transparent"
                                runat="server" NavigateUrl="" Text="Buy Now" />
                            </div>
                            <div class="hidden lg:mt-0 lg:col-span-5 lg:flex">
                                <img src="https://flowbite.s3.amazonaws.com/blocks/marketing-ui/hero/phone-mockup.png"
                                    alt="mockup">
                            </div>
                        </div>
                    </section>
                </div>

                <div id="slide2" class="carousel-item relative w-full">
                    <!--
  Heads up! 👋

  This component comes with some `rtl` classes. Please remove them if they are not needed in your project.
-->

                    <section
                        class="relative bg-[url(https://images.unsplash.com/photo-1604014237800-1c9102c219da?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1770&q=80)] bg-cover bg-center bg-no-repeat">
                        <div
                            class="absolute inset-0 bg-white/75 sm:bg-transparent sm:from-white/95 sm:to-white/25 ltr:sm:bg-gradient-to-r rtl:sm:bg-gradient-to-l">
                        </div>

                        <div
                            class="relative mx-auto max-w-screen-xl px-4 py-32 sm:px-6 lg:flex lg:h-screen lg:items-center lg:px-8">
                            <div class="max-w-xl text-center ltr:sm:text-left rtl:sm:text-right">
                                <h1 class="text-3xl font-extrabold sm:text-5xl">Let us find your

        <strong class="block font-extrabold text-rose-700">Forever Home. </strong>
                                </h1>

                                <p class="mt-4 max-w-lg sm:text-xl/relaxed">
                                    Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nesciunt illo tenetur fuga ducimus
        numquam ea!
                                </p>

                                <div class="mt-8 flex flex-wrap gap-4 text-center">
                                    <a
                                        href="#"
                                        class="block w-full rounded bg-rose-600 px-12 py-3 text-sm font-medium text-white shadow hover:bg-rose-700 focus:outline-none focus:ring active:bg-rose-500 sm:w-auto">Get Started
                                    </a>

                                    <a
                                        href="#"
                                        class="block w-full rounded bg-white px-12 py-3 text-sm font-medium text-rose-600 shadow hover:text-rose-700 focus:outline-none focus:ring active:text-rose-500 sm:w-auto">Learn More
                                    </a>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
                <div id="slide3" class="carousel-item relative w-full">
                    <img src="https://daisyui.com/images/stock/photo-1414694762283-acccc27bca85.jpg" class="w-full" />
                    <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
                        <a href="#slide2" class="btn btn-circle">❮</a>
                        <a href="#slide4" class="btn btn-circle">❯</a>
                    </div>
                </div>
                <div id="slide4" class="carousel-item relative w-full">
                    <img src="https://daisyui.com/images/stock/photo-1665553365602-b2fb8e5d1707.jpg" class="w-full" />
                    <div class="absolute flex justify-between transform -translate-y-1/2 left-5 right-5 top-1/2">
                        <a href="#slide3" class="btn btn-circle">❮</a>
                        <a href="#slide1" class="btn btn-circle">❯</a>
                    </div>
                </div>
            </div>



            <!--  carousel of top 7 products -->

            <section>
                <header class="text-center">
                    <h2 class="text-xl  my-8 font-bold text-gray-900 sm:text-3xl">Top Categories</h2>

                    <p class="mx-auto mt-4 max-w-md text-gray-500">
                        Lorem ipsum, dolor sit amet consectetur adipisicing elit. Itaque praesentium cumque iure
   dicta incidunt est ipsam, officia dolor fugit natus?
                    </p>
                </header>



                <div class="carousel carousel-center max-8 mx-8 max-w-full p-4 space-x-4  rounded-box">

                    <div class="carousel-item">

                        <div class="max-w-2xl mx-auto">


                            <div class="bg-white shadow-md rounded-box max-w-sm dark:bg-gray-800 dark:border-gray-700">
                                <a href="#">
                                    <img class="rounded-t-lg p-8"
                                        src="https://i.ibb.co/KqdgGY4/cosmetic-packaging-mockup-1150-40280.webp"
                                        alt="product image">
                                </a>
                                <div class="px-5 pb-5">
                                    <a href="#">
                                        <h3 class="text-gray-900 font-semibold text-xl tracking-tight dark:text-white">Apple
                                        Watch Series 7
                                        GPS, Aluminium Case, Starlight Sport</h3>
                                    </a>
                                    <div class="flex items-center mt-2.5 mb-5">
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <span
                                            class="bg-blue-100 text-blue-800 text-xs font-semibold mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ml-3">5.0</span>
                                    </div>
                                    <div class="flex items-center justify-between">
                                        <span class="text-3xl font-bold text-gray-900 dark:text-white">$599</span>
                                        <a href="#"
                                            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Add
                                        to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">

                        <div class="max-w-2xl mx-auto">


                            <div class="bg-white shadow-md rounded-box max-w-sm dark:bg-gray-800 dark:border-gray-700">
                                <a href="#">
                                    <img class="rounded-t-lg p-8"
                                        src="https://i.ibb.co/KqdgGY4/cosmetic-packaging-mockup-1150-40280.webp"
                                        alt="product image">
                                </a>
                                <div class="px-5 pb-5">
                                    <a href="#">
                                        <h3 class="text-gray-900 font-semibold text-xl tracking-tight dark:text-white">Apple
                                        Watch Series 7
                                        GPS, Aluminium Case, Starlight Sport</h3>
                                    </a>
                                    <div class="flex items-center mt-2.5 mb-5">
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <span
                                            class="bg-blue-100 text-blue-800 text-xs font-semibold mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ml-3">5.0</span>
                                    </div>
                                    <div class="flex items-center justify-between">
                                        <span class="text-3xl font-bold text-gray-900 dark:text-white">$599</span>
                                        <a href="#"
                                            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Add
                                        to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">

                        <div class="max-w-2xl mx-auto">


                            <div class="bg-white shadow-md rounded-box max-w-sm dark:bg-gray-800 dark:border-gray-700">
                                <a href="#">
                                    <img class="rounded-t-lg p-8"
                                        src="https://i.ibb.co/KqdgGY4/cosmetic-packaging-mockup-1150-40280.webp"
                                        alt="product image">
                                </a>
                                <div class="px-5 pb-5">
                                    <a href="#">
                                        <h3 class="text-gray-900 font-semibold text-xl tracking-tight dark:text-white">Apple
                                        Watch Series 7
                                        GPS, Aluminium Case, Starlight Sport</h3>
                                    </a>
                                    <div class="flex items-center mt-2.5 mb-5">
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <svg class="w-5 h-5 text-yellow-300" fill="currentColor" viewBox="0 0 20 20"
                                            xmlns="http://www.w3.org/2000/svg">
                                            <path
                                                d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z">
                                            </path>
                                        </svg>
                                        <span
                                            class="bg-blue-100 text-blue-800 text-xs font-semibold mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ml-3">5.0</span>
                                    </div>
                                    <div class="flex items-center justify-between">
                                        <span class="text-3xl font-bold text-gray-900 dark:text-white">$599</span>
                                        <a href="#"
                                            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">Add
                                        to cart</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
            </section>


            <!-- Collection Grid  -->
            <section>
                <div class="mx-auto max-w-screen-xl px-4 py-8 sm:px-6 sm:py-12 lg:px-8">
                    <header class="text-center">
                        <h2 class="text-xl font-bold text-gray-900 sm:text-3xl">New Collection</h2>

                        <p class="mx-auto mt-4 max-w-md text-gray-500">
                            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Itaque praesentium cumque iure
        dicta incidunt est ipsam, officia dolor fugit natus?
                        </p>
                    </header>

                    <ul class="mt-8 grid grid-cols-1 gap-4 lg:grid-cols-3">
                        <li>
                            <a href="#" class="group relative block">
                                <img
                                    src="https://images.unsplash.com/photo-1618898909019-010e4e234c55?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
                                    alt=""
                                    class="aspect-square w-full object-cover transition duration-500 group-hover:opacity-90" />

                                <div class="absolute inset-0 flex flex-col items-start justify-end p-6">
                                    <h3 class="text-xl font-medium text-white">Casual Trainers</h3>

                                    <span
                                        class="mt-1.5 inline-block bg-black px-5 py-3 text-xs font-medium uppercase tracking-wide text-white">Shop Now
                                    </span>
                                </div>
                            </a>
                        </li>

                        <li>
                            <a href="#" class="group relative block">
                                <img
                                    src="https://images.unsplash.com/photo-1624623278313-a930126a11c3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80"
                                    alt=""
                                    class="aspect-square w-full object-cover transition duration-500 group-hover:opacity-90" />

                                <div class="absolute inset-0 flex flex-col items-start justify-end p-6">
                                    <h3 class="text-xl font-medium text-white">Winter Jumpers</h3>

                                    <span
                                        class="mt-1.5 inline-block bg-black px-5 py-3 text-xs font-medium uppercase tracking-wide text-white">Shop Now
                                    </span>
                                </div>
                            </a>
                        </li>

                        <li class="lg:col-span-2 lg:col-start-2 lg:row-span-2 lg:row-start-1">
                            <a href="#" class="group relative block">
                                <img
                                    src="https://images.unsplash.com/photo-1593795899768-947c4929449d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2672&q=80"
                                    alt=""
                                    class="aspect-square w-full object-cover transition duration-500 group-hover:opacity-90" />

                                <div class="absolute inset-0 flex flex-col items-start justify-end p-6">
                                    <h3 class="text-xl font-medium text-white">Skinny Jeans Blue</h3>

                                    <span
                                        class="mt-1.5 inline-block bg-black px-5 py-3 text-xs font-medium uppercase tracking-wide text-white">Shop Now
                                    </span>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </section>



            <!-- Product view -->
            <section class="text-gray-600 body-font">
                <div class="container px-5 py-24 mx-auto">
                    <div class="flex flex-col text-center w-full mb-20">
                        <h2 class="text-xl font-bold text-gray-900 sm:text-3xl">New Collection</h2>
                        <p class="lg:w-2/3 mx-auto leading-relaxed text-base">
                            Whatever cardigan tote bag tumblr hexagon
                brooklyn asymmetrical gentrify, subway tile poke farm-to-table. Franzen you probably haven't
                heard of them.
                        </p>
                    </div>
                    <div class="flex flex-wrap -m-4">
                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>
                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>

                        <div class="lg:w-1/4 md:w-1/2 p-4 w-full border-2 border-gray-200 flex flex-col">
                            <a class="block relative h-48 rounded overflow-hidden">
                                <img alt="ecommerce" class="object-cover object-center w-full h-full block"
                                    src="https://dummyimage.com/420x260">
                            </a>
                            <div class="mt-4 flex justify-between items-center">
                                <div>
                                    <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">CATEGORY</h3>
                                    <h2 class="text-gray-900 title-font text-lg font-medium">The Catalyzer</h2>
                                    <p class="mt-1">$16.00</p>
                                </div>
                                <button class="bg-blue-500 mt-[40px] text-white px-4 py-2 rounded">Add to Cart</button>
                            </div>
                        </div>


                        <!-- button to view all products -->
                        <div class="flex justify-center w-full mt-6">
                            <asp:Button ID="btnViewMore" runat="server" Text="View More"
                                CssClass="flex items-center text-white bg-blue-500 border-0 py-2 px-8 focus:outline-none hover:bg-blue-600 rounded text-lg"
                                PostBackUrl="~/Customer/CUst_View_All_Product.aspx" />

                        </div>
                    </div>
                </div>
            </section>








            <!--  Buisness copmanies logo carousel -->
            <section>

                <main
                    class="relative  my-px max-h-[100px] flex flex-col justify-center bg-gray-700  text-white overflow-hidden">
                    <div class="w-full max-w-5xl mx-auto px-4 md:px-6 py-24">
                        <div class="text-center">

                            <!-- Logo Carousel animation -->
                            <div x-data="{}" x-init="$nextTick(() => {
                let ul = $refs.logos;
                ul.insertAdjacentHTML('afterend', ul.outerHTML);
                ul.nextSibling.setAttribute('aria-hidden', 'true');
            })"
                                class="w-full inline-flex flex-nowrap overflow-hidden [mask-image:_linear-gradient(to_right,transparent_0,_black_128px,_black_calc(100%-128px),transparent_100%)]">
                                <ul x-ref="logos"
                                    class="flex items-center justify-center md:justify-start [&_li]:mx-8 [&_img]:max-w-none animate-infinite-scroll">
                                    <li>
                                        <h1>Exclusiove Sale for Moviles </h1>
                                    </li>
                                    <li>
                                        <img src="./disney.svg" alt="Disney" />
                                    </li>
                                    <li>
                                        <img src="https://raw.githubusercontent.com/cruip/cruip-tutorials/16d063a406b2c7b667ad97d83fc1697cb0b2cde2/logo-carousel/airbnb.svg"
                                            alt="Airbnb" />
                                    </li>
                                    <li>
                                        <img src="https://raw.githubusercontent.com/cruip/cruip-tutorials/16d063a406b2c7b667ad97d83fc1697cb0b2cde2/logo-carousel/apple.svg"
                                            alt="Apple" />
                                    </li>
                                    <li>
                                        <img src="./spark.svg" alt="Spark" />
                                    </li>
                                    <li>
                                        <img src="./samsung.svg" alt="Samsung" />
                                    </li>
                                    <li>
                                        <img src="./quora.svg" alt="Quora" />
                                    </li>
                                    <li>
                                        <img src="./sass.svg" alt="Sass" />
                                    </li>
                                </ul>
                            </div>
                            <!-- End: Logo Carousel animation -->

                        </div>

                    </div>
                </main>

            </section>
        </div>


        <section>

            <div class="container flex flex-col mx-auto">
                <div class="flex flex-col items-center w-full my-20">
                    <span class="mb-8">
                        <svg width="140" viewBox="0 0 419 95" fill="none" xmlns="http://www.w3.org/2000/svg">
                            <path d="M121.4 69V25.32H132.6V30.68C133.72 28.5467 135.347 26.9733 137.48 25.96C139.613 24.8933 142.067 24.36 144.84 24.36C147.72 24.36 150.333 24.9733 152.68 26.2C155.08 27.3733 156.893 29 158.12 31.08C159.667 28.7867 161.587 27.1067 163.88 26.04C166.227 24.92 168.813 24.36 171.64 24.36C174.787 24.36 177.56 25.0533 179.96 26.44C182.413 27.8267 184.333 29.7733 185.72 32.28C187.107 34.7333 187.8 37.6133 187.8 40.92V69H175.8V43.48C175.8 40.9733 175.107 38.9733 173.72 37.48C172.387 35.9333 170.547 35.16 168.2 35.16C165.853 35.16 163.987 35.9333 162.6 37.48C161.267 38.9733 160.6 40.9733 160.6 43.48V69H148.6V43.48C148.6 40.9733 147.907 38.9733 146.52 37.48C145.187 35.9333 143.347 35.16 141 35.16C138.653 35.16 136.787 35.9333 135.4 37.48C134.067 38.9733 133.4 40.9733 133.4 43.48V69H121.4ZM217.377 69.96C213.057 69.96 209.11 68.9733 205.537 67C202.017 65.0267 199.19 62.3333 197.057 58.92C194.977 55.4533 193.937 51.5333 193.937 47.16C193.937 42.7333 194.977 38.8133 197.057 35.4C199.19 31.9867 202.017 29.2933 205.537 27.32C209.11 25.3467 213.057 24.36 217.377 24.36C221.697 24.36 225.617 25.3467 229.137 27.32C232.657 29.2933 235.457 31.9867 237.537 35.4C239.67 38.8133 240.737 42.7333 240.737 47.16C240.737 51.5333 239.67 55.4533 237.537 58.92C235.457 62.3333 232.657 65.0267 229.137 67C225.617 68.9733 221.697 69.96 217.377 69.96ZM217.377 59.16C220.63 59.16 223.27 58.04 225.297 55.8C227.324 53.56 228.337 50.68 228.337 47.16C228.337 43.6933 227.324 40.84 225.297 38.6C223.27 36.3067 220.63 35.16 217.377 35.16C214.124 35.16 211.457 36.3067 209.377 38.6C207.35 40.84 206.337 43.6933 206.337 47.16C206.337 50.68 207.35 53.56 209.377 55.8C211.457 58.04 214.124 59.16 217.377 59.16ZM268.065 69.48C262.785 69.48 258.678 68.0667 255.745 65.24C252.865 62.36 251.425 58.36 251.425 53.24V35.72H244.065V25.32H244.465C249.105 25.32 251.425 23.08 251.425 18.6V15.4H263.425V25.32H273.665V35.72H263.425V52.44C263.425 56.8667 265.905 59.08 270.865 59.08C271.612 59.08 272.545 59 273.665 58.84V69C272.865 69.1067 271.958 69.2133 270.945 69.32C269.932 69.4267 268.972 69.48 268.065 69.48ZM280.697 21.4V9.39999H292.697V21.4H280.697ZM280.697 69V25.32H292.697V69H280.697ZM323.158 69.96C318.838 69.96 314.891 68.9733 311.318 67C307.798 65.0267 304.971 62.3333 302.838 58.92C300.758 55.4533 299.718 51.5333 299.718 47.16C299.718 42.7333 300.758 38.8133 302.838 35.4C304.971 31.9867 307.798 29.2933 311.318 27.32C314.891 25.3467 318.838 24.36 323.158 24.36C327.478 24.36 331.398 25.3467 334.918 27.32C338.438 29.2933 341.238 31.9867 343.318 35.4C345.451 38.8133 346.518 42.7333 346.518 47.16C346.518 51.5333 345.451 55.4533 343.318 58.92C341.238 62.3333 338.438 65.0267 334.918 67C331.398 68.9733 327.478 69.96 323.158 69.96ZM323.158 59.16C326.411 59.16 329.051 58.04 331.078 55.8C333.105 53.56 334.118 50.68 334.118 47.16C334.118 43.6933 333.105 40.84 331.078 38.6C329.051 36.3067 326.411 35.16 323.158 35.16C319.905 35.16 317.238 36.3067 315.158 38.6C313.131 40.84 312.118 43.6933 312.118 47.16C312.118 50.68 313.131 53.56 315.158 55.8C317.238 58.04 319.905 59.16 323.158 59.16ZM353.588 69V25.32H364.788V30.68C365.908 28.5467 367.534 26.9733 369.668 25.96C371.801 24.8933 374.254 24.36 377.028 24.36C380.334 24.36 383.214 25.0533 385.668 26.44C388.174 27.8267 390.121 29.7733 391.508 32.28C392.894 34.7333 393.588 37.6133 393.588 40.92V69H381.588V43.48C381.588 40.9733 380.841 38.9733 379.348 37.48C377.854 35.9333 375.934 35.16 373.588 35.16C371.241 35.16 369.321 35.9333 367.828 37.48C366.334 38.9733 365.588 40.9733 365.588 43.48V69H353.588Z" fill="url(#paint0_linear_1001_3)" />
                            <path d="M34.2138 5.86107C34.7122 4.28095 36.3972 3.40401 37.9773 3.90239L76.9347 16.1896C78.5148 16.688 79.3917 18.373 78.8934 19.9531L72.8993 38.9574C72.2692 40.9554 69.8371 41.7086 68.188 40.4165L52.7882 28.3503C52.2168 27.9025 51.5023 27.6772 50.7773 27.7161L31.2415 28.7635C29.1495 28.8757 27.5896 26.8634 28.2198 24.8654L34.2138 5.86107Z" fill="url(#paint1_linear_1001_3)" />
                            <path d="M13.3226 80.1965C11.7071 80.5642 10.0994 79.5527 9.73164 77.9371L0.665552 38.1067C0.297829 36.4912 1.30938 34.8834 2.92491 34.5157L22.3551 30.093C24.3979 29.6281 26.2761 31.347 25.9936 33.4229L23.3549 52.808C23.2569 53.5274 23.4232 54.2578 23.8228 54.864L34.5917 71.1973C35.7449 72.9464 34.7957 75.3089 32.7529 75.7738L13.3226 80.1965Z" fill="url(#paint2_linear_1001_3)" />
                            <path d="M87.9774 60.8205C89.0945 62.0441 89.008 63.9417 87.7843 65.0587L57.6148 92.5988C56.3911 93.7158 54.4936 93.6294 53.3766 92.4057L39.9419 77.6883C38.5294 76.141 39.0976 73.6592 41.0426 72.8806L59.2053 65.6098C59.8793 65.34 60.4326 64.835 60.7626 64.1883L69.6548 46.762C70.6071 44.8959 73.1303 44.5557 74.5427 46.103L87.9774 60.8205Z" fill="url(#paint3_linear_1001_3)" />
                            <defs>
                                <linearGradient id="paint0_linear_1001_3" x1="268" y1="0" x2="268" y2="86" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#1A31A7" />
                                    <stop offset="1" stop-color="#7C3AED" />
                                </linearGradient>
                                <linearGradient id="paint1_linear_1001_3" x1="62.4802" y1="11.9181" x2="43.6919" y2="47.2867" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#1A31A7" />
                                    <stop offset="1" stop-color="#7C3AED" />
                                </linearGradient>
                                <linearGradient id="paint2_linear_1001_3" x1="4.27748" y1="52.74" x2="44.293" y2="51.0974" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#1A31A7" />
                                    <stop offset="1" stop-color="#7C3AED" />
                                </linearGradient>
                                <linearGradient id="paint3_linear_1001_3" x1="68.56" y1="82.2363" x2="47.3853" y2="48.2426" gradientUnits="userSpaceOnUse">
                                    <stop stop-color="#1A31A7" />
                                    <stop offset="1" stop-color="#7C3AED" />
                                </linearGradient>
                            </defs>
                        </svg>
                    </span>
                    <div class="flex flex-col items-center gap-6 mb-8">
                        <div class="flex flex-wrap items-center justify-center gap-5 lg:gap-12 gap-y-3 lg:flex-nowrap text-dark-grey-900">
                            <a href="javascript:void(0)" class="text-gray-600 hover:text-white">About</a>
                            <a href="javascript:void(0)" class="text-gray-600 hover:text-white">Features</a>
                            <a href="javascript:void(0)" class="text-gray-600 hover:text-white">Blog</a>
                            <a href="javascript:void(0)" class="text-gray-600 hover:text-white">Resources</a>
                            <a href="javascript:void(0)" class="text-gray-600 hover:text-white">Partners</a>
                            <a href="javascript:void(0)" class="text-gray-600 hover:text-white">Help</a>
                            <a href="javascript:void(0)" class="text-gray-600 hover:text-white">Terms</a>
                        </div>
                        <div class="flex items-center gap-8">
                            <a href="javascript:void(0)" class="text-grey-700 hover:text-grey-900">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M13.6348 20.7273V12.766H16.3582L16.7668 9.66246H13.6348V7.68128C13.6348 6.78301 13.8881 6.17085 15.2029 6.17085L16.877 6.17017V3.39424C16.5875 3.35733 15.5937 3.27273 14.437 3.27273C12.0216 3.27273 10.368 4.71881 10.368 7.37391V9.66246H7.63636V12.766H10.368V20.7273H13.6348Z" fill="currentColor" />
                                    <mask id="mask0_3320_6483" style="mask-type: luminance" maskUnits="userSpaceOnUse" x="7" y="3" width="10" height="18">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M13.6348 20.7273V12.766H16.3582L16.7668 9.66246H13.6348V7.68128C13.6348 6.78301 13.8881 6.17085 15.2029 6.17085L16.877 6.17017V3.39424C16.5875 3.35733 15.5937 3.27273 14.437 3.27273C12.0216 3.27273 10.368 4.71881 10.368 7.37391V9.66246H7.63636V12.766H10.368V20.7273H13.6348Z" fill="white" />
                                    </mask>
                                    <g mask="url(#mask0_3320_6483)">
                                    </g>
                                </svg>
                            </a>
                            <a href="javascript:void(0)" class="text-grey-700 hover:text-grey-900">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M21.8182 6.14597C21.1356 6.44842 20.4032 6.65355 19.6337 6.74512C20.4194 6.27461 21.0208 5.5283 21.3059 4.64176C20.5689 5.07748 19.7553 5.39388 18.8885 5.56539C18.1943 4.82488 17.207 4.36364 16.1118 4.36364C14.0108 4.36364 12.3072 6.06718 12.3072 8.16706C12.3072 8.46488 12.3408 8.75576 12.4058 9.03391C9.24436 8.87512 6.44106 7.36048 4.56485 5.05894C4.23688 5.61985 4.0503 6.27342 4.0503 6.97109C4.0503 8.29106 4.72246 9.45573 5.74227 10.1371C5.11879 10.1163 4.53239 9.94476 4.01903 9.65967V9.70718C4.01903 11.5498 5.33088 13.0876 7.07033 13.4376C6.75164 13.5234 6.41558 13.5709 6.06791 13.5709C5.82224 13.5709 5.58467 13.5465 5.35173 13.5002C5.83612 15.0125 7.2407 16.1123 8.90485 16.1424C7.60343 17.1622 5.96246 17.7683 4.18012 17.7683C3.87303 17.7683 3.57055 17.7498 3.27273 17.7162C4.95658 18.7974 6.95564 19.4278 9.10418 19.4278C16.1026 19.4278 19.9281 13.6312 19.9281 8.60397L19.9153 8.11145C20.6628 7.57833 21.3094 6.90851 21.8182 6.14597Z" fill="currentColor" />
                                    <mask id="mask0_3320_6484" style="mask-type: luminance" maskUnits="userSpaceOnUse" x="3" y="4" width="19" height="16">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M21.8182 6.14597C21.1356 6.44842 20.4032 6.65355 19.6337 6.74512C20.4194 6.27461 21.0208 5.5283 21.3059 4.64176C20.5689 5.07748 19.7553 5.39388 18.8885 5.56539C18.1943 4.82488 17.207 4.36364 16.1118 4.36364C14.0108 4.36364 12.3072 6.06718 12.3072 8.16706C12.3072 8.46488 12.3408 8.75576 12.4058 9.03391C9.24436 8.87512 6.44106 7.36048 4.56485 5.05894C4.23688 5.61985 4.0503 6.27342 4.0503 6.97109C4.0503 8.29106 4.72246 9.45573 5.74227 10.1371C5.11879 10.1163 4.53239 9.94476 4.01903 9.65967V9.70718C4.01903 11.5498 5.33088 13.0876 7.07033 13.4376C6.75164 13.5234 6.41558 13.5709 6.06791 13.5709C5.82224 13.5709 5.58467 13.5465 5.35173 13.5002C5.83612 15.0125 7.2407 16.1123 8.90485 16.1424C7.60343 17.1622 5.96246 17.7683 4.18012 17.7683C3.87303 17.7683 3.57055 17.7498 3.27273 17.7162C4.95658 18.7974 6.95564 19.4278 9.10418 19.4278C16.1026 19.4278 19.9281 13.6312 19.9281 8.60397L19.9153 8.11145C20.6628 7.57833 21.3094 6.90851 21.8182 6.14597Z" fill="white" />
                                    </mask>
                                    <g mask="url(#mask0_3320_6484)">
                                    </g>
                                </svg>
                            </a>
                            <a href="javascript:void(0)" class="text-grey-700 hover:text-grey-900">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path d="M12 3C7.0275 3 3 7.13211 3 12.2284C3 16.3065 5.5785 19.7648 9.15375 20.9841C9.60375 21.0709 9.76875 20.7853 9.76875 20.5403C9.76875 20.3212 9.76125 19.7405 9.7575 18.9712C7.254 19.5277 6.726 17.7332 6.726 17.7332C6.3165 16.6681 5.72475 16.3832 5.72475 16.3832C4.9095 15.8111 5.78775 15.8229 5.78775 15.8229C6.6915 15.887 7.16625 16.7737 7.16625 16.7737C7.96875 18.1847 9.273 17.777 9.7875 17.5414C9.8685 16.9443 10.1003 16.5381 10.3575 16.3073C8.35875 16.0764 6.258 15.2829 6.258 11.7471C6.258 10.7399 6.60675 9.91659 7.18425 9.27095C7.083 9.03774 6.77925 8.0994 7.263 6.82846C7.263 6.82846 8.01675 6.58116 9.738 7.77462C10.458 7.56958 11.223 7.46785 11.988 7.46315C12.753 7.46785 13.518 7.56958 14.238 7.77462C15.948 6.58116 16.7017 6.82846 16.7017 6.82846C17.1855 8.0994 16.8818 9.03774 16.7917 9.27095C17.3655 9.91659 17.7142 10.7399 17.7142 11.7471C17.7142 15.2923 15.6105 16.0725 13.608 16.2995C13.923 16.5765 14.2155 17.1423 14.2155 18.0071C14.2155 19.242 14.2043 20.2344 14.2043 20.5341C14.2043 20.7759 14.3617 21.0647 14.823 20.9723C18.4237 19.7609 21 16.3002 21 12.2284C21 7.13211 16.9703 3 12 3Z" fill="currentColor" />
                                </svg>
                            </a>
                            <a href="javascript:void(0)" class="text-grey-700 hover:text-grey-900">
                                <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 18 18" fill="none">
                                    <path d="M16.2 0H1.8C0.81 0 0 0.81 0 1.8V16.2C0 17.19 0.81 18 1.8 18H16.2C17.19 18 18 17.19 18 16.2V1.8C18 0.81 17.19 0 16.2 0ZM5.4 15.3H2.7V7.2H5.4V15.3ZM4.05 5.67C3.15 5.67 2.43 4.95 2.43 4.05C2.43 3.15 3.15 2.43 4.05 2.43C4.95 2.43 5.67 3.15 5.67 4.05C5.67 4.95 4.95 5.67 4.05 5.67ZM15.3 15.3H12.6V10.53C12.6 9.81004 11.97 9.18 11.25 9.18C10.53 9.18 9.9 9.81004 9.9 10.53V15.3H7.2V7.2H9.9V8.28C10.35 7.56 11.34 7.02 12.15 7.02C13.86 7.02 15.3 8.46 15.3 10.17V15.3Z" fill="currentColor" />
                                </svg>
                            </a>
                            <a href="javascript:void(0)" class="text-grey-700 hover:text-grey-900">
                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none">
                                    <path fill-rule="evenodd" clip-rule="evenodd" d="M7.60063 2.18182H16.3991C19.3873 2.18182 21.8183 4.61281 21.8182 7.60074V16.3993C21.8182 19.3872 19.3873 21.8182 16.3991 21.8182H7.60063C4.6127 21.8182 2.18182 19.3873 2.18182 16.3993V7.60074C2.18182 4.61281 4.6127 2.18182 7.60063 2.18182ZM16.3993 20.0759C18.4266 20.0759 20.0761 18.4266 20.0761 16.3993H20.0759V7.60074C20.0759 5.57348 18.4265 3.92405 16.3991 3.92405H7.60063C5.57336 3.92405 3.92405 5.57348 3.92405 7.60074V16.3993C3.92405 18.4266 5.57336 20.0761 7.60063 20.0759H16.3993ZM6.85714 12.0001C6.85714 9.16424 9.16418 6.85714 12 6.85714C14.8358 6.85714 17.1429 9.16424 17.1429 12.0001C17.1429 14.8359 14.8358 17.1429 12 17.1429C9.16418 17.1429 6.85714 14.8359 6.85714 12.0001ZM8.62798 12C8.62798 13.8593 10.1407 15.3719 12 15.3719C13.8593 15.3719 15.372 13.8593 15.372 12C15.372 10.1406 13.8594 8.6279 12 8.6279C10.1406 8.6279 8.62798 10.1406 8.62798 12Z" fill="currentColor" />
                                    <mask id="mask0_3320_6487" style="mask-type: luminance" maskUnits="userSpaceOnUse" x="2" y="2" width="20" height="20">
                                        <path fill-rule="evenodd" clip-rule="evenodd" d="M7.60063 2.18182H16.3991C19.3873 2.18182 21.8183 4.61281 21.8182 7.60074V16.3993C21.8182 19.3872 19.3873 21.8182 16.3991 21.8182H7.60063C4.6127 21.8182 2.18182 19.3873 2.18182 16.3993V7.60074C2.18182 4.61281 4.6127 2.18182 7.60063 2.18182ZM16.3993 20.0759C18.4266 20.0759 20.0761 18.4266 20.0761 16.3993H20.0759V7.60074C20.0759 5.57348 18.4265 3.92405 16.3991 3.92405H7.60063C5.57336 3.92405 3.92405 5.57348 3.92405 7.60074V16.3993C3.92405 18.4266 5.57336 20.0761 7.60063 20.0759H16.3993ZM6.85714 12.0001C6.85714 9.16424 9.16418 6.85714 12 6.85714C14.8358 6.85714 17.1429 9.16424 17.1429 12.0001C17.1429 14.8359 14.8358 17.1429 12 17.1429C9.16418 17.1429 6.85714 14.8359 6.85714 12.0001ZM8.62798 12C8.62798 13.8593 10.1407 15.3719 12 15.3719C13.8593 15.3719 15.372 13.8593 15.372 12C15.372 10.1406 13.8594 8.6279 12 8.6279C10.1406 8.6279 8.62798 10.1406 8.62798 12Z" fill="white" />
                                    </mask>
                                    <g mask="url(#mask0_3320_6487)">
                                    </g>
                                </svg>
                            </a>
                        </div>
                    </div>
                    <div class="flex items-center">
                        <p class="text-base font-normal leading-7 text-center text-grey-700">
                            2024 OMSMS. All rights reserved.
                        </p>
                    </div>
                </div>
            </div>
            </div>

        </section>

    </body>
</asp:Content>
