<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="BookSearchResult.aspx.cs" Inherits="RCMC.Forms.BookSearchResult" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 5%;
            height: 110px;
        }
        .auto-style22 {
            width: 90%;
            height: 110px;
            text-align: center;
        }
        .auto-style23 {
            width: 5%;
            height: 47px;
        }
        .auto-style24 {
            width: 90%;
            height: 47px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 5%" class="auto-style1">&nbsp;</td>
            <td style="width: 90%" class="auto-style1">&nbsp;</td>
            <td style="width: 5%" class="auto-style1">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td class="auto-style24">
                <asp:TextBox ID="SRTBox" runat="server" Height="27px" Width="60%" ></asp:TextBox>
            &nbsp;
                <asp:Button ID="Button1" runat="server" Height="35px" Text="Search" Width="6%" OnClick="Button1_Click" />
            </td>
            <td class="auto-style23"></td>
        </tr>
        <tr>
            <td class="auto-style21"></td>
            <td class="auto-style22">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
            <td class="auto-style21"></td>
        </tr>
        <tr>
            <td style="width: 5%">&nbsp;</td>
            <td style="width: 90%">&nbsp;</td>
            <td style="width: 5%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
