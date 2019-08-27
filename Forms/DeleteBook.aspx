<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="DeleteBook.aspx.cs" Inherits="RCMC.Forms.DeleteBook" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="background-color:peru; opacity: 0.8; filter: alpha(opacity=50); font-family: 'Century Gothic'; color: #5B0000; width: 50%;" ">
                
        <tr><td colspan="2" class="auto-style39"></td><td colspan="2" class="auto-style39"></td><td></td></tr>        
    <tr>
               <td class="auto-style19" style="width: 25%">
                   <asp:Label ID="Labelu" runat="server" Text="Book ID : "></asp:Label>
                   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               </td>
               <td colspan="2" class="auto-style1">
                   <asp:TextBox ID="UCTBox" runat="server" Height="23px" required="" style="margin-left: 0px" Width="90%"></asp:TextBox>
               </td>
               <td class="auto-style1" style="width: 25%">
                   <asp:Button ID="Button1" runat="server" Text="Delete" ForeColor="Maroon" Width="76px" OnClick="Button1_Click" />
               </td>
           </tr>
        <tr><td></td><td></td><td></td><td></td></tr>
        <tr><td>&nbsp;</td><td class="auto-style1" colspan="2">
            <asp:Label ID="Label2" runat="server" Text="Are you sure you want to delete ''"></asp:Label>
            </td><td class="auto-style1">
                <asp:Button ID="Button2" runat="server" Text="YES" Width="76px" ForeColor="#993300" OnClick="Button2_Click" />
            </td></tr>
        </table>
</asp:Content>
