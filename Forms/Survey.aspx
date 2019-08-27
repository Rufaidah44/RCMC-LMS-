<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="RCMC.Forms.Survey" %>
<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 80%;
            height: 247px;
        }
        .auto-style22 {
            text-align: center;
            width: 40%;
            height: 48px;
        }
        .auto-style24 {
            text-align: center;
            width: 40%;
            height: 38px;
        }
        .auto-style25 {
            text-align: center;
            width: 12%;
            height: 38px;
        }
        .auto-style26 {
            text-align: center;
            height: 38px;
        }
        .auto-style27 {
            text-align: center;
            width: 40%;
            height: 41px;
        }
        .auto-style28 {
            text-align: center;
            height: 41px;
        }
        .auto-style31 {
            text-align: center;
            width: 40%;
            height: 47px;
        }
        .auto-style33 {
            text-align: center;
            height: 48px;
        }
        .auto-style34 {
            text-align: center;
            height: 47px;
        }
        .auto-style36 {
            text-align: center;
            width: 12%;
            height: 42px;
        }
        .auto-style37 {
            text-align: center;
            width: 40%;
            height: 42px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style21" style="font-family: 'Century Gothic'; color: #990099; background-color: #FFCCFF; opacity: 0.8; filter: alpha(opacity=70);">
        <tr>
            <td class="auto-style37">
                <asp:Label ID="Label2" runat="server" Text="Questions" Font-Bold="True"></asp:Label>
            </td>
            <td class="auto-style36">
                <asp:Image ID="Image2" runat="server" Height="28px" ImageUrl="~/images/f1.png" Width="32px" />
            </td>
            <td class="auto-style36">
                <asp:Image ID="Image7" runat="server" Height="28px" ImageUrl="~/images/f2.png" Width="32px" />
            </td>
            <td class="auto-style36">
                <asp:Image ID="Image12" runat="server" Height="28px" ImageUrl="~/images/f3.png" Width="32px" />
            </td>
            <td class="auto-style36">
                <asp:Image ID="Image17" runat="server" Height="28px" ImageUrl="~/images/f4.png" Width="32px" />
            </td>
            <td class="auto-style36">
                <asp:Image ID="Image22" runat="server" Height="28px" ImageUrl="~/images/f5.png" Width="32px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:Label ID="Label3" runat="server" Text="How do you find books available in the library ??"></asp:Label>
            </td>
            <td class="auto-style33" colspan="5">
                <asp:RadioButtonList ID="Q1RadioButtonList" runat="server" Height="42px" RepeatDirection="Horizontal" Width="100%" ForeColor="#FFCCFF"  required="required" >
                    <asp:ListItem Value="1" Selected> &#39;</asp:ListItem><asp:ListItem Value="2"> &#39;</asp:ListItem><asp:ListItem Value="3"> &#39;</asp:ListItem>
                    <asp:ListItem Value="4"> &#39;</asp:ListItem>
                    <asp:ListItem Value="5"> &#39;</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label4" runat="server" Text="How do you find computer devices available in the library ??"></asp:Label>
            </td>
            <td class="auto-style34" colspan="5">
                <asp:RadioButtonList ID="Q2RadioButtonList" runat="server" Height="42px" RepeatDirection="Horizontal" Width="100%" ForeColor="#FFCCFF" required="required">
                    <asp:ListItem Value="1" Selected> &#39;</asp:ListItem><asp:ListItem Value="2"> &#39;</asp:ListItem><asp:ListItem Value="3"> &#39;</asp:ListItem>
                    <asp:ListItem Value="4"> &#39;</asp:ListItem>
                    <asp:ListItem Value="5"> &#39;</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label5" runat="server" Text="How do you find services in the library ??"></asp:Label>
            </td>
            <td class="auto-style34" colspan="5">
                <asp:RadioButtonList ID="Q3RadioButtonList" runat="server" Height="42px" RepeatDirection="Horizontal" Width="100%" ForeColor="#FFCCFF"  required="required" >
                    <asp:ListItem Value="1" Selected> &#39;</asp:ListItem><asp:ListItem Value="2"> &#39;</asp:ListItem><asp:ListItem Value="3"> &#39;</asp:ListItem>
                    <asp:ListItem Value="4"> &#39;</asp:ListItem>
                    <asp:ListItem Value="5"> &#39;</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label6" runat="server" Text="how do you find the librarian's dealing ??"></asp:Label>
            </td>
            <td class="auto-style34" colspan="5">
                <asp:RadioButtonList ID="Q4RadioButtonList" runat="server" Height="42px" RepeatDirection="Horizontal" Width="100%" ForeColor="#FFCCFF"  required="required" >
                    <asp:ListItem Value="1" Selected> &#39;</asp:ListItem><asp:ListItem Value="2"> &#39;</asp:ListItem><asp:ListItem Value="3"> &#39;</asp:ListItem>
                    <asp:ListItem Value="4"> &#39;</asp:ListItem>
                    <asp:ListItem Value="5"> &#39;</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label7" runat="server" Text="How do find the library in general ??"></asp:Label>
            </td>
            <td class="auto-style34" colspan="5">
                <asp:RadioButtonList ID="Q5RadioButtonList" runat="server" Height="42px" RepeatDirection="Horizontal" Width="100%" ForeColor="#FFCCFF"  required="required" >
                    <asp:ListItem Value="1" Selected> &#39;</asp:ListItem><asp:ListItem Value="2"> &#39;</asp:ListItem><asp:ListItem Value="3"> &#39;</asp:ListItem>
                    <asp:ListItem Value="4"> &#39;</asp:ListItem>
                    <asp:ListItem Value="5"> &#39;</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
            </td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style25"></td>
            <td class="auto-style26" colspan="2">
                <asp:Button ID="Button1" runat="server" Text="Submit" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#993366" Width="92px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                &nbsp;</td>
            <td class="auto-style28" colspan="3">Have an issue ?!
                <asp:LinkButton ID="LinkButton3" runat="server" ForeColor="#993366" OnClick="LinkButton3_Click">Please Contact Us</asp:LinkButton>
            </td>
            <td class="auto-style28" colspan="2"></td>
        </tr>
    </table>
</asp:Content>
