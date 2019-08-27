<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="EventsNews.aspx.cs" Inherits="RCMC.Forms.EventsNews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 90%;
            height: 398px;
        }
        .auto-style22 {
            width: 33%;
            height: 139px;
        }
        .auto-style23 {
            height: 139px;
        }
        .auto-style24 {
            width: 33%;
            height: 50px;
        }
        .auto-style25 {
            width: 33%;
            height: 143px;
        }
        .auto-style26 {
            height: 143px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table align="center" class="auto-style21" style="font-family: 'Century Gothic'; color: #321010">
        <tr>
            <td class="auto-style23" colspan="2"><p> The Medical Library </p>
                <p> The medical Library help the doctors to accomplish various tasks.</p></td>
            <td class="auto-style22">
                <asp:Image ID="Image2" runat="server" Height="149px" ImageUrl="~/images/DSC029299.JPG" Width="302px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td class="auto-style26" colspan="2">The Medical Library 
                <br />
                the quality management staff visited the library to make sure it meets the standars.</td>
            <td class="auto-style25">
                <asp:Image ID="Image3" runat="server" Height="149px" ImageUrl="~/images/DSC02969.JPG" Width="302px" />
            </td>
        </tr>
        <tr>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
            <td class="auto-style24"></td>
        </tr>
    </table>

</asp:Content>
