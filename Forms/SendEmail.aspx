<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="SendEmail.aspx.cs" Inherits="RCMC.Forms.EmailTrigger" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 100%;
            height: 192px;
        }
        .auto-style22 {
            width: 20%;
            height: 161px;
        }
        .auto-style23 {
            text-align: center;
            height: 161px;
        }
        .auto-style24 {
            width: 20%;
            height: 161px;
            text-align: center;
        }
        .auto-style25 {
            width: 20%;
            height: 61px;
        }
        .auto-style26 {
            text-align: center;
            height: 61px;
        }
        .auto-style27 {
            width: 20%;
            height: 61px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style21">
        <tr>
            <td style="width: 20%">&nbsp;</td>
            <td class="auto-style1">&nbsp;</td>
            <td style="width: 20%">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22"></td>
            <td class="auto-style23">
                <div class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                </div>
            </td>
            <td class="auto-style24">
                <asp:TextBox ID="TextBox1" runat="server" Font-Names="Century Gothic" Height="35px" Width="95%"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25"></td>
            <td class="auto-style26"></td>
            <td class="auto-style27">
                <asp:Button ID="Button1" runat="server" Font-Names="Century Gothic" ForeColor="#9966FF" OnClick="Button1_Click" Text="Send Alert" />
            </td>
        </tr>
    </table>
</asp:Content>
