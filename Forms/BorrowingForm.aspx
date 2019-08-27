<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="BorrowingForm.aspx.cs" Inherits="RCMC.Forms.BorrowingForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            width: 351px;
        }
        .auto-style21 {
            width: 50%;
            height: 293px;
        }
        .auto-style22 {
            width: 60%;
            text-align: center;
        height: 31px;
    }
        .auto-style25 {
            text-align: center;
            width: 40%;
            height: 3px;
        }
        .auto-style26 {
            width: 60%;
            text-align: center;
            height: 3px;
        }
        .auto-style27 {
            text-align: center;
            width: 40%;
            height: 32px;
        }
        .auto-style28 {
            width: 60%;
            height: 32px;
        }
        .auto-style29 {
            text-align: center;
            width: 40%;
            height: 35px;
        }
        .auto-style30 {
            width: 60%;
            height: 35px;
        }
        .auto-style31 {
            text-align: center;
            width: 40%;
            height: 31px;
        }
        .auto-style32 {
            width: 60%;
            height: 31px;
        }
        .auto-style33 {
            margin-top: 1px;
        }
        .auto-style34 {
            height: 23px;
        }
        .auto-style35 {
            width: 24%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="right" class="auto-style35">
        <tr>
            <td class="auto-style34"></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:LinkButton ID="LinkButton3" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#990033" OnClick="LinkButton3_Click">View All Borrowing</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" Font-Names="Century Gothic" ForeColor="#990033" OnClick="LinkButton4_Click">Late Return</asp:LinkButton>
            </td>
        </tr>
    </table>
    <table align="center" class="auto-style21" style="font-family: 'Century Gothic'; color: #660033; background-color: #CC99FF; opacity: 0.8; filter: alpha(opacity=50);">
        <tr>
            <td class="auto-style27">
                <asp:Label ID="Label2" runat="server" Text="Request ID: "></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:Label ID="RIDLabel" runat="server" Text="  "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style29">
                <asp:Label ID="Label4" runat="server" Text="Member ID: "></asp:Label>
            </td>
            <td class="auto-style30">
                <asp:TextBox ID="MIDTBox" runat="server" Width="80%" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label5" runat="server" Text="Book ID: "></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:TextBox ID="BIDTBox" runat="server" Width="80%" Height="25px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style25">
                <asp:Label ID="Label6" runat="server" Text="Borrowing Date: "></asp:Label>
            </td>
            <td class="auto-style26">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="160px" NextPrevFormat="FullMonth" Width="350px" CssClass="auto-style33">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td style="width: 40%" class="auto-style1">
                <asp:Label ID="Label7" runat="server" Text="Return Date"></asp:Label>
            </td>
            <td class="auto-style20" style="width: 60%">
                <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="160px" NextPrevFormat="FullMonth" Width="350px">
                    <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
                    <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
                    <OtherMonthDayStyle ForeColor="#999999" />
                    <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                    <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
                    <TodayDayStyle BackColor="#CCCCCC" />
                </asp:Calendar>
            </td>
        </tr>
        <tr>
            <td class="auto-style31">
                <asp:Label ID="Label8" runat="server" Text="Status"></asp:Label>
            </td>
            <td class="auto-style32">
                <asp:DropDownList ID="StDropDownList" runat="server" Width="80%" Height="25px" ForeColor="#660033">
                    <asp:ListItem>NOT RETURNED</asp:ListItem>
                    <asp:ListItem>RETURNED</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style31"></td>
            <td class="auto-style22">
                <asp:Button ID="AddButton" runat="server" Font-Names="Century Gothic" ForeColor="#660033" Text="Add" Width="95px" OnClick="AddButton_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
