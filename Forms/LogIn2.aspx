<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Library2.Master" AutoEventWireup="true" CodeBehind="LogIn2.aspx.cs" Inherits="RCMC.Forms.LogIn2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style12 {
            width: 50%;
            height: 142px;
        }
        .auto-style13 {
            text-align: center;
        }
        .auto-style19 {
            width: 50%;
            height: 160px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <p></p>
    <p></p>

    <table style="background-color: #FFCC99; opacity: 0.8; filter: alpha(opacity=70); font-family: 'Century Gothic'; color: #993300; " align="center" class="auto-style19">
        <tr>
            <td style="width: 50%" class="auto-style5">
                &nbsp;</td>
            <td style="width: 50%" class="auto-style13">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50%" class="auto-style13">
                <asp:Label ID="Label2" runat="server" Text="Member ID :"></asp:Label>
            </td>
            <td style="width: 50%" class="auto-style13">
                <asp:TextBox ID="IDTBox" runat="server" Width="80%" Font-Names="Century Gothic" Height="22px" placeholder="Member ID"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%" class="auto-style13">
                <asp:Label ID="Label3" runat="server" Text="Password :"></asp:Label>
            </td>
            <td style="width: 50%" class="auto-style13">
                <asp:TextBox ID="PassTBox" runat="server" Width="80%" Font-Names="Century Gothic" Height="22px" placeholder="Password" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 50%" class="auto-style13">
                <asp:Label ID="Label4" runat="server" Text="Invalid Login" Visible="False"></asp:Label>
            </td>
            <td style="width: 50%" class="auto-style13">
                <asp:Button ID="Button1" runat="server" Font-Names="Century Gothic" Text="Login" Width="85px" OnClick="Button1_Click" ForeColor="#990000" />
            </td>
        </tr>
        <tr>
            <td style="width: 50%" class="auto-style13">
                &nbsp;</td>
            <td style="width: 50%" class="auto-style13">
                <asp:LinkButton ID="LinkButton22" runat="server" ForeColor="#990000" OnClick="LinkButton22_Click">Forget Password ?</asp:LinkButton>
            </td>
        </tr>
    </table>
</asp:Content>
