<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="RCMC.Forms.forgetPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 100%;
            height: 147px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style21">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 60%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style1" style="width: 60%">
                <asp:TextBox ID="TextBox1" runat="server" Height="31px" Width="40%" placeholder="Enter Your Job ID"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Height="31px" Width="40%" placeholder="Enter Your Email"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 60%" class="auto-style1">
                <asp:Button ID="Button1" runat="server" Font-Names="Century Gothic" ForeColor="#993366" Text="Send To Reset Password" Width="186px" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
