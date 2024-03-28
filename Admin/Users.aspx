<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="OMSMS6.Admin.Users" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Table to display Admins --%>
    <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table id="tblAdmin" class="w-full text-sm text-center rtl:text-right text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-gray-700 uppercase bg-gray-50 dark:bg-gray-700 dark:text-gray-400">
                <tr>
                    <th scope="col" class="px-6 py-3">Sr. No</th>
                    <th scope="col" class="px-6 py-3">Name</th>
                    <th scope="col" class="px-6 py-3">Email</th>
                    <th scope="col" class="px-6 py-3">Contact</th>
                    <%--<th scope="col" class="px-6 py-3">City</th>--%>
                    <th scope="col" class="px-6 py-3">Status</th>
                    <th scope="col" class="px-6 py-3">Actions</th>
                </tr>
            </thead>
            <tbody>
                <asp:Repeater ID="rptAdmins" runat="server">
                    <ItemTemplate>
                        <tr class="bg-white border-b dark:bg-gray-800 dark:border-gray-700 hover:bg-gray-50 dark:hover:bg-gray-600">
                            <td class="px-6 py-4"><%# Container.ItemIndex + 1 %></td>
                            <td scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap dark:text-white"><%# Eval("name") %></td>
                            <td class="px-6 py-4"><%# Eval("email") %></td>
                            <td class="px-6 py-4"><%# Eval("contact") %></td>
                            <%--<td class="px-6 py-4"><%# Eval("City") %></td>--%>
                            <%# (int)Eval("status") == 1 ? "<td class='px-6 py-4'> <a href='' class='bg-green-400 rounded-md p-1 text-gray-800 font-medium text-xs'> ACTIVE </a> </td>" :  "<td class='px-6 py-4'> <a href='' class='bg-red-400 rounded-md p-1 text-gray-800 font-medium text-xs'> ACTIVE </a> </td>" %>
                            <td class="px-6 py-4 space-x-5">
                                <a href="EditAdmin.aspx?id=<%# Eval("Id") %>" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Edit</a>
                                <a href="DeleteAdmin.aspx?id=<%# Eval("Id") %>" class="font-medium text-red-600 dark:text-red-500 hover:underline">Delete</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </tbody>
        </table>
    </div>

    <%-- Table to display customers --%>
    <table id="tblCustomer">
        <thead>
            <tr>
                <th>Sr. No</th>
                <th>Name</th>
                <th>Email</th>
                <th>Contact</th>
                <%--<th>City</th>--%>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <asp:Repeater ID="rptCustomers" runat="server">
                <ItemTemplate>
                    <tr>
                        <td><%# Container.ItemIndex + 1 %></td>
                        <td><%# Eval("name") %></td>
                        <td><%# Eval("email") %></td>
                        <td><%# Eval("contact") %></td>
                        <%--<td><%# Eval("City") %></td>--%>
                        <td><%# Eval("status") %></td>
                        <td>
                            <a href="EditCustomer.aspx?id=<%# Eval("Id") %>">Edit</a>
                            <a href="DeleteCustomer.aspx?id=<%# Eval("Id") %>">Delete</a>
                        </td>
                    </tr>
                </ItemTemplate>
            </asp:Repeater>
        </tbody>
</asp:Content>
