<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="RCMC.Forms.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style21 {
            width: 100%;
            height: 221px;
        }
        .auto-style23 {
            width: 33%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" class="auto-style21" style="width: 80%">
        <tr>
            <td>
                <p style="font-family: 'Century Gothic'; color: #00003C">Welcome to the RCMC Medical Library, where we provide information, resources, and services to support the education, research, clinical care, and outreach missions of the University of Minnesota's Academic Health Center.</p>
                <p style="font-family: 'Century Gothic'; color: #00003C; text-decoration: underline; font-size: 18px;">Vision: </p>
                <p style="font-family: 'Century Gothic'; color: #00003C">The Medical Library Association (MLA) believes that quality information is essential for improved health. MLA aspires to be the association of the most visible, valued, and trusted health information experts.</p>
                <p style="font-family: 'Century Gothic'; color: #00003C; text-decoration: underline; font-size: 18px;">Core Values: </p>
                <p style="font-family: 'Century Gothic'; color: #00003C">-&nbsp; Use of scientific evidence in making health care decisions Public awareness of, access to, and use of high quality health information </p>
                <p style="font-family: 'Century Gothic'; color: #00003C"> - Lifelong learning and professional development . </p>
                <p style="font-family: 'Century Gothic'; color: #00003C">- Advancement of health information research and evidence-based practice</p>
            </td>
            <td class="auto-style23">
                <asp:Image ID="Image2" runat="server" Height="288px" ImageUrl="~/images/DSC029299.JPG" Width="266px" />
            </td>
        </tr>
        </table>
</asp:Content>
