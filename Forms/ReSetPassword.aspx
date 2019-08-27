<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="ReSetPassword.aspx.cs" Inherits="RCMC.Forms.ReSetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 30%;
            height: 170px;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            text-align: center;
            width: 40%;
            height: 33px;
        }
        .auto-style14 {
            text-align: center;
            height: 33px;
        }
        .auto-style19 {
            width: 60%;
            height: 170px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background-color: #ff9966; opacity: 0.8; filter: alpha(opacity=70); font-family: 'Century Gothic'; color: #990000; width: 40%;" align="center" class="auto-style19">
        <tr><td></td><td></td></tr>
        <tr>
            <td class="auto-style12" style="width: 40%">
                <asp:Label ID="Label1" runat="server" Text="Old Password"></asp:Label>
                :</td>
            <td class="auto-style12">
                <asp:TextBox ID="OPassTtBox" runat="server" Width="80%" TextMode="Password" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="width: 40%">
                <asp:Label ID="Label2" runat="server" Text="New PassWord"></asp:Label>
                :</td>
            <td class="auto-style12">
                <asp:TextBox ID="NPassTBox" runat="server" Width="80%" TextMode="Password" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13">
                <asp:Label ID="Label3" runat="server" Text="Re New Password"></asp:Label>
            </td>
            <td class="auto-style14">
                <asp:TextBox ID="ReNPassTBox" runat="server" Width="80%" TextMode="Password" required></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="width: 40%">
                <asp:Label ID="Label5" runat="server" Text=" New Password NOT Match" Visible="False"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Button ID="Button1" runat="server" Text="Save" Width="60%" Font-Names="Century Gothic" ForeColor="#990000" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style12" style="width: 40%">
                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
            </td>
            <td class="auto-style12">
                <asp:Label ID="Label4" runat="server" Text="Password has Changed" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>



</asp:Content>
