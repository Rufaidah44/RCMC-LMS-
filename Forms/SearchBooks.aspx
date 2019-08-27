<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="SearchBooks.aspx.cs" Inherits="RCMC.Forms.SearchBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 62%;
            height: 136px;
        }
        .auto-style18 {
            width: 456px;
            height: 48px;
            text-align: center;
        }
        .auto-style22 {
        width: 23%;
        height: 48px;
        text-align: center;
    }
        .auto-style25 {
            width: 228px;
            height: 48px;
            text-align: center;
        }
    .auto-style26 {
        width: 23%;
    }
    .auto-style27 {
        width: 57%;
    }
    .auto-style28 {
        width: 57%;
        height: 39px;
        text-align: center;
    }
        .auto-style29 {
            width: 20%;
            height: 26px;
            text-align: center;
            direction: ltr;
        }
        .auto-style30 {
            width: 57%;
            height: 26px;
            text-align: center;
            direction: ltr;
        }
        .auto-style31 {
            width: 23%;
            height: 26px;
            text-align: center;
            direction: ltr;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p></p>
    <p></p>
    <table align="center" class="auto-style13" style=" background-color:burlywood; opacity: 0.8; filter: alpha(opacity=50); font-family: 'Century Gothic'; color: #990000;">
        <tr><td class="auto-style26"></td><td class="auto-style27"></td><td style="width: 20%"></td></tr>
        <tr>
            <td class="auto-style22">
                <asp:Label ID="Label1" runat="server" Text="Book Name"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="BNTBox" runat="server" Width="90%" Height="25px" OnTextChanged="BNTBox_TextChanged"></asp:TextBox>
            </td>
            <td class="auto-style25" style="width: 20%">
                <asp:Button ID="BNButton" runat="server" Text="Search" Width="100px" Font-Names="Century Gothic" ForeColor="#990000" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:Label ID="Label2" runat="server" Text="Book Author"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:TextBox ID="ANTBox" runat="server" Width="90%" Height="25px"></asp:TextBox>
            </td>
            <td class="auto-style25" style="width: 20%">
                <asp:Button ID="Button2" runat="server" Text="Search" Width="100px" Font-Names="Century Gothic" ForeColor="#990000" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                <asp:Label ID="Label3" runat="server" Text="Section Name"></asp:Label>
            </td>
            <td class="auto-style28">
                <asp:DropDownList ID="SNDropDownList" runat="server" Height="60%" Width="90%" Font-Names="Century Gothic">
                    <asp:ListItem Value="610">Medicine &amp; health</asp:ListItem>
                    <asp:ListItem Value="611"> Human anatomy, cytology, histology</asp:ListItem>
                    <asp:ListItem Value="612">Human physiology</asp:ListItem>
                    <asp:ListItem Value="613">Personal health &amp; safety</asp:ListItem>
                    <asp:ListItem Value="614">Forensic medicine, incidence of injuries, wounds, disease, public preventive medicine</asp:ListItem>
                    <asp:ListItem Value="615"> Pharmacology and therapeutics</asp:ListItem>
                    <asp:ListItem Value="616">Diseases</asp:ListItem>
                    <asp:ListItem Value="617">Surgery, regional medicine, dentistry, ophthalmology, otology, audiology</asp:ListItem>
                    <asp:ListItem Value="618">Gynecology, obstetrics, pediatrics, geriatrics</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="auto-style25" style="width: 20%">
                <asp:Button ID="Button3" runat="server" Text="Search" Width="100px" Font-Names="Century Gothic" ForeColor="#990000" OnClick="Button3_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style31">
            </td>
            <td class="auto-style30">
            </td>
            <td class="auto-style29">
            </td>
        </tr>
    </table>


</asp:Content>
