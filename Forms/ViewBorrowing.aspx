<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="ViewBorrowing.aspx.cs" Inherits="RCMC.Forms.ViewBorrowing" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 20%;
            height: 47px;
        }
        .auto-style22 {
            width: 60%;
            height: 47px;
        }
        .auto-style25 {
            width: 20%;
            height: 47px;
            text-align: center;
        }
        .auto-style26 {
            width: 20%;
            height: 46px;
        }
        .auto-style27 {
            width: 60%;
            height: 46px;
        }
        .auto-style28 {
            width: 20%;
            height: 46px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width:100%;">
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td style="width: 60%">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td class="auto-style1" style="width: 60%">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22"></td>
            <td class="auto-style25">
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Century Gothic" Height="26px" Width="80%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td class="auto-style27"></td>
            <td class="auto-style28">
                <asp:Button ID="Button1" runat="server" Font-Names="Century Gothic" ForeColor="#3333CC" OnClick="Button1_Click" Text="Returned" />
            </td>
        </tr>
    </table>
</asp:Content>
