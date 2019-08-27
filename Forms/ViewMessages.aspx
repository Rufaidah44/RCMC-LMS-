<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="ViewMessages.aspx.cs" Inherits="RCMC.Forms.ViewMessages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 20%;
            height: 56px;
        }
        .auto-style22 {
            width: 71%;
            height: 56px;
            text-align: right;
        }
        .auto-style23 {
            width: 60%;
            height: 56px;
            text-align: center;
        }
        .auto-style24 {
            width: 20%;
            height: 56px;
            text-align: center;
        }
        .auto-style25 {
            width: 20%;
            height: 287px;
        }
        .auto-style26 {
            text-align: center;
            width: 60%;
            height: 287px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="width: 100%; font-family: 'Century Gothic';">
        <tr>
            <td class="auto-style21" style="width: 15%"></td>
            <td class="auto-style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="150px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
            <td class="auto-style23">
                <asp:Button ID="Button1" runat="server" Text="Check" Font-Names="Century Gothic" ForeColor="#009999" Width="80px" OnClick="Button1_Click" />
            </td>
            <td class="auto-style24" style="width: 15%">
                <asp:Button ID="Button2" runat="server" Text="View All Messages" Font-Names="Century Gothic" ForeColor="#006666" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 15%" class="auto-style25"></td>
            <td class="auto-style26" colspan="2" style="width: 70%">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" Font-Names="Century Gothic" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
            <td style="width: 15%" class="auto-style25"></td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td colspan="2" style="width: 70%">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
