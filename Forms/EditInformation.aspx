<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="EditInformation.aspx.cs" Inherits="RCMC.Forms.EditInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 55%;
            height: 284px;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            text-align: right;
            width: 40%;
            height: 28px;
        }
        .auto-style14 {
            text-align: center;
            height: 26px;
        }
    .auto-style19 {
        text-align: center;
        height: 28px;
        width: 60%;
    }
    .auto-style20 {
        width: 70%;
        height: 308px;
        text-align: left;
    }
    .auto-style21 {
        text-align: right;
        width: 20%;
    }
    .auto-style22 {
        text-align: right;
    }
        .auto-style23 {
            width: 54%;
            height: 297px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background-color: #ff9966; opacity: 0.8; filter: alpha(opacity=70); font-family: 'Century Gothic'; color: #712400;" align="center" class="auto-style23">
        <tr><td class="auto-style22"><td></td></td></tr>
        <tr>
            <td style="width: 40%" class="auto-style21">
                <asp:Label ID="LabeID" runat="server" Text="Member ID : "></asp:Label>
            </td>
            <td class="auto-style12">
                        <asp:Label ID="Label1" runat="server" Text="."></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 40%" class="auto-style21"><asp:Label ID="LabelFN" runat="server" Text="First Name : "></asp:Label></td>
            <td class="auto-style12">
                        <asp:TextBox ID="FNTBox" runat="server" style="margin-left: 0px" Width="293px" ></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 40%" class="auto-style21">
                        <asp:Label ID="LabeMN" runat="server" Text="Middle Name : "></asp:Label>
                    </td>
            <td class="auto-style12">
                        <asp:TextBox ID="MNTBox3" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 40%" class="auto-style21">
                        <asp:Label ID="LabeLM" runat="server" Text="Last Name : "></asp:Label>
                    </td>
            <td class="auto-style12">
                        <asp:TextBox ID="LNTBox4" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td class="auto-style13">
                        <asp:Label ID="LabeE" runat="server" Text="Email : "></asp:Label>
                    </td>
            <td class="auto-style19">
                        <asp:TextBox ID="EmailTBox" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 40%" class="auto-style21">
                        <asp:Label ID="LabelPN" runat="server" Text="Phone Number : "></asp:Label>
                    </td>
            <td class="auto-style12">
                        <asp:TextBox ID="PNTBox" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 40%" class="auto-style21">
                        <asp:Label ID="Label4" runat="server" Text="Job: "></asp:Label>
                    </td>
            <td class="auto-style12">
                        <asp:TextBox ID="JobTBox" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
        </tr>
        <tr>
            <td style="width: 40%" class="auto-style21">
                        
                    </td>
            <td class="auto-style12">      
                    <asp:Button ID="Button1" runat="server" Text="Save" Width="81px" Font-Names="Century Gothic" ForeColor="#990000" OnClick="Button1_Click" />
                    </td>
        </tr>
        
    </table>
</asp:Content>
