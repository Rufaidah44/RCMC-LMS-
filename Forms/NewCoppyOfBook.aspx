<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="NewCoppyOfBook.aspx.cs" Inherits="RCMC.Forms.NewCoppyOfBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style20 {
            text-align: center;
            height: 49px;
        }
        .auto-style21 {
            text-align: center;
            width: 25%;
            height: 49px;
        }
        .auto-style22 {
            height: 45px;
        }
        .auto-style23 {
            height: 45px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="background-color:peru; opacity: 0.8; filter: alpha(opacity=50); font-family: 'Century Gothic'; color: #5B0000; width: 60%;" ">
                
        <tr><td colspan="2" class="auto-style39"></td><td colspan="2" class="auto-style39"></td><td></td></tr>        
    <tr>
               <td class="auto-style21">
                   <asp:Label ID="Labelu" runat="server" Text="Book ID : "></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </td>
               <td class="auto-style20">
                   <asp:TextBox ID="BIDTBox" runat="server" Height="23px" required="" style="margin-left: 0px" Width="90%"></asp:TextBox>
               </td>
               <td class="auto-style21">
                   <asp:Label ID="Labelu0" runat="server" Text="Number Of Coppies : "></asp:Label>
                   </td>
               <td class="auto-style21">
                   <asp:TextBox ID="CNTBox" runat="server" Height="23px" required="" style="margin-left: 0px" Width="90%"></asp:TextBox>
               </td>
           </tr>
        <tr><td class="auto-style22"></td><td class="auto-style22"></td><td class="auto-style22"></td><td class="auto-style23">
                   <asp:Button ID="Button1" runat="server" Text="Add" ForeColor="Maroon" Width="82px" OnClick="Button1_Click" Height="27px" />
               </td></tr>
        </table>
</asp:Content>
