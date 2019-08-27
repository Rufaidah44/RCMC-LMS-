<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="UserAccount.aspx.cs" Inherits="RCMC.Forms.UserAccount1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 604px;
            text-align: center;
            font-family: 'Century Gothic';
            color:maroon ;
        }
        .auto-style12 {
            width: 604px;
            text-align: center;
            height: 23px;
            font-family: 'Century Gothic';
            color:maroon ;
        }
        .auto-style13 {
            width: 60%;
            height: 333px;
            font-family: 'Century Gothic';
        }
    .auto-style14 {
        width: 604px;
        text-align: center;
        height: 27px;
        font-family: 'Century Gothic';
        color:maroon ;
    }
        .auto-style21 {
            text-align: center;
            height: 70px;
        }
        .auto-style22 {
            width: 19%;
        }
        .auto-style23 {
            width: 65%;
            text-align: center;
            font-family: "Century Gothic";
            color: maroon;
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="right" class="auto-style22">
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21">
                <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/srv.png" OnClick="ImageButton1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
    <table style="background-color: #FFCAB0; opacity: 0.8; filter: alpha(opacity=70); font-size: large;" align="center" class="auto-style13" >
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label1" runat="server" Text="Welcome "></asp:Label>
                <asp:Label ID="LabelID" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style12" colspan="2">
                <asp:Label ID="Label2" runat="server" Text="You are a member since: "></asp:Label>
                <asp:Label ID="LabelDate" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label3" runat="server" Text="Status: "></asp:Label>
                <asp:Label ID="LabelSts" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label19" runat="server" Text="You are a/an: "></asp:Label>
                <asp:Label ID="LabelJob" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label4" runat="server" Text="Phone number "></asp:Label>
                <asp:Label ID="LabelPN" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style11" colspan="2">
                <asp:Label ID="Label5" runat="server" Text="Email: "></asp:Label>
                <asp:Label ID="LabelEml" runat="server" Text=" "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Last Library visiting: "></asp:Label>
                <asp:Label ID="LabelLV" runat="server" Text=" "></asp:Label>
            </td>
            <td class="auto-style11" style="width: 15%">
                <asp:Button ID="LVisitButton" runat="server" Text="Details" Height="19px" Width="80%" BorderStyle="None" Font-Names="Century Gothic" ForeColor="#993300" OnClick="LVisitButton_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style23">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Books borrowed:  "></asp:Label>
                <asp:Label ID="LabelNBB" runat="server" Text=" "></asp:Label>
            </td>
            <td class="auto-style11" style="width: 15%">
                <asp:Button ID="BookButton" runat="server" Text="Details" Height="19px" Width="80%" BorderStyle="None" Font-Names="Century Gothic" ForeColor="#993300" OnClick="BookButton_Click" />
            </td>
        </tr>
       
        <tr>
            <td class="auto-style14" colspan="2">
                <asp:Button ID="InfoButton" runat="server" Text="Edit Information" BorderStyle="None" Font-Names="Century Gothic" ForeColor="#993300" OnClick="InfoButton_Click"/>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="ResPassButton" runat="server"  Text="Reset Password" BorderStyle="None" Font-Names="Century Gothic" ForeColor="#993300" OnClick="ResPassButton_Click" />
            </td>
        </tr>

    </table>
</asp:Content>
