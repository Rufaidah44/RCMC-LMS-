<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="RCMC.Forms.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 60%;
            text-align: center;
            height: 187px;
        }
        .auto-style22 {
            width: 20%;
            height: 63px;
        }
        .auto-style23 {
            width: 60%;
            height: 63px;
        }
        .auto-style25 {
            width: 60%;
            height: 40px;
            text-align: center;
        }
        .auto-style27 {
            width: 20%;
            height: 187px;
        }
        .auto-style28 {
            width: 20%;
            height: 40px;
        }
        .auto-style29 {
            width: 20%;
            height: 43px;
        }
        .auto-style30 {
            width: 60%;
            height: 43px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; font-family: 'Century Gothic'; color: #0066FF;">
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23"><h3 class="auto-style1"> You can contact us on (exit): 8141  </h3>
                <h3 class="auto-style1"> Or Feel Free in talking to us in this text area. We will replay you as soon as possible.</h3></td>
            <td class="auto-style22"></td>
        </tr>
        <tr>
            <td class="auto-style29"></td>
            <td class="auto-style30">
                <asp:TextBox ID="EmailTBox" runat="server" Width="50%" placeholder="Enter Your Email Address" Height="70%"></asp:TextBox>
            </td>
            <td class="auto-style29"></td>
        </tr>
        <tr>
            <td class="auto-style27"></td>
            <td class="auto-style21">
                <asp:TextBox ID="MssgTBox" runat="server" Height="90%" Width="50%" placeholder="Enter Your Message" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="auto-style27"></td>
        </tr>
         <tr>
            <td class="auto-style28"></td>
            <td class="auto-style25">
                <asp:Button ID="Button1" runat="server" Text="Send" Width="20%" Font-Names="Century Gothic" ForeColor="#3333CC" OnClick="Button1_Click" />
             </td>
            <td class="auto-style28"></td>
        </tr>
    </table>
</asp:Content>
