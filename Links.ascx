<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="Links.ascx.cs" Inherits="OMSMS6.Links" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <title></title>

    <%-- Tailwind CSS CDN --%>
    <script src="https://cdn.tailwindcss.com"></script>

    <!-- toastr -->
    <%--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.css" integrity="sha512-3pIirOrwegjM6erE5gPSwkUzO+3cTjpnV9lexlNZqvupR64iZBnOOTiiLPb9M36zpMScbmUNIcHUqKD47M719g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js" integrity="sha512-VEd+nq25CkR676O+pLBnDW09R7VQX9Mdiij052gVCp5yVH3jGtH70Ho/UUv4mJDsEdTvqRCFZg0NKGiojGnUCw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>--%>


    <%-- JQuery CDNs --%>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/jquery.validation/1.16.0/jquery.validate.min.js"></script>

    <%-- Error Color --%>
    <style>
        .error {
            color: red;
        }
    </style>

    <%-- Ionicons Links --%>
    <script type="module" src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule="" src="https://unpkg.com/ionicons@4.5.10-0/dist/ionicons/ionicons.js"></script>

    <%-- Favicon --%>
    <link rel="icon" href="../Res/Images/logo.png" type="image/png" />

    <%-- Toastr Options --%>
    <%--<script>
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
    </script>--%>

    <%-- Toastr Event --%>
    <%--<script>
        // Function to display Toastr success message
        function showSuccessMessage(message) {
            toastr.success(message);
        }

        // Function to display Toastr error message
        function showErrorMessage(message) {
            toastr.error(message);
        }
    </script>--%>
</head>
<body>
</body>
</html>
