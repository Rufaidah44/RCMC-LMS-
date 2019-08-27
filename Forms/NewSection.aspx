<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="NewSection.aspx.cs" Inherits="RCMC.Forms.NewSection" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style19 {
            height: 25px;
            text-align: center;
            width: 25%;
        }
        .auto-style20 {
            height: 25px;
            text-align: right;
            width: 20%;
        }
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            width: 25%;
        }
        .auto-style23 {
            text-align: right;
            width: 25%;
            height: 33px;
        }
        .auto-style24 {
            width: 25%;
            height: 33px;
        }
        .auto-style25 {
            width: 42%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <table align="center" style="background-color:#FF8040; opacity: 0.8; filter: alpha(opacity=50); font-family: 'Century Gothic'; color: #5B0000; " class="auto-style25" >              
      <tr><td class="auto-style21" style="width: 15%"></td><td class="auto-style22">
          <asp:Label ID="Label1" runat="server" Text="  "></asp:Label>
          </td></tr>
         <tr><td class="auto-style23" style="width: 15%">
                        <asp:Label ID="LabeLA" runat="server" Text="Section ID : *"></asp:Label>
                        &nbsp; &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style24">
                        <asp:TextBox ID="SIDTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="23px" ></asp:TextBox>
                    </td>
                </tr>
        <tr>
                    <td class="auto-style21" style="width: 15%">
                        <asp:Label ID="LabeP" runat="server" Text="Section Name : *  "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="SNTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="23px" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 15%" class="auto-style21" >
                        <asp:Label ID="LabelN" runat="server" Text="Number Of Books : *"></asp:Label>
                        &nbsp;
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style22">
                        <asp:TextBox ID="BNTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="23px" ></asp:TextBox>
                    </td>
                </tr>
         <tr><td class="auto-style20" style="width: 15%"></td><td class="auto-style19">
             <asp:Button ID="Button1" runat="server" Text="Add" Width="110px" ForeColor="Maroon" OnClick="Button1_Click" />
             </td></tr>
    </table>
</asp:Content>
