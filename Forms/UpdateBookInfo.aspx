<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="UpdateBookInfo.aspx.cs" Inherits="RCMC.Forms.UpdateBookInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style24 {
            text-align: left;
            height: 36px;
        }
        .auto-style31 {
            width: 738px;
            height: 325px;
        }
        .auto-style33 {
            text-align: left;
            width: 25%;
            height: 36px;
        }
        .auto-style34 {
            width: 25%;
            height: 36px;
            text-align: right;
        }
        .auto-style38 {
            text-align: center;
            width: 50%;
            height: 36px;
        }
    .auto-style39 {
        width: 25%;
        height: 22px;
        text-align: right;
    }
         .auto-style40 {
             height: 36px;
         }
         .auto-style41 {
             text-align: center;
             height: 36px;
         }
         .auto-style42 {
             height: 36px;
             text-align: right;
         }
         .auto-style43 {
             width: 25%;
             height: 36px;
             text-align: center;
         }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table align="center" style="background-color:peru; opacity: 0.8; filter: alpha(opacity=50); font-family: 'Century Gothic'; color: #5B0000; " class="auto-style31">
                
        <tr><td colspan="2" class="auto-style39"></td><td colspan="2" class="auto-style39"></td></tr>        
        <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabeID" runat="server" Text="Call Number : *"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="BIDTBox" runat="server" Height="22px" required="" style="margin-left: 0px" Width="90%"></asp:TextBox>
                        <asp:Label ID="Label1" runat="server" Text="  "></asp:Label>
                    </td>
                    <td class="auto-style43">
                        <asp:Button ID="Button2" runat="server" ForeColor="Maroon" Height="24px" Text="Check" Width="72px" OnClick="Button2_Click" />
                    </td>
                    <td class="auto-style33">
                        &nbsp;</td>
                </tr>
        
                <tr><td class="auto-style42"> 
                        <asp:Label ID="LabeS" runat="server" Text="Section ID : *"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; </td><td class="auto-style40">
                        <asp:TextBox ID="SIDTBox" runat="server" Height="24px" style="margin-left: 0px" Width="90%"></asp:TextBox>
                    </td><td class="auto-style40">&nbsp;</td><td class="auto-style41"></td></tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabelBN" runat="server" Text="Book Name : *"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style24" colspan="3">
                        <asp:TextBox ID="BNTBox" runat="server" Height="22px" style="margin-left: 0px" Width="70%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabeLA" runat="server" Text="Book Auther : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="BATBox" runat="server" style="margin-left: 0px" Width="90%"  Height="23px" ></asp:TextBox>
                    </td>
                    <td class="auto-style34">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabeE" runat="server" Text="Book Edition No : *"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="BENTBox" runat="server" style="margin-left: 0px" Width="90%" Height="23px" ></asp:TextBox>
                    </td>
                </tr>
        <tr>
                    <td class="auto-style34">
                        <asp:Label ID="Labely" runat="server" Text="Year Of Publish : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="PYTBox" runat="server" Height="25px" style="margin-left: 0px" Width="90%"></asp:TextBox>
                    </td>
                    <td class="auto-style34">
                        <asp:Label ID="LabelN" runat="server" Text="Numper Of Coppies: *"></asp:Label>
                        &nbsp;&nbsp;
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="NCTBox" runat="server" Height="23px" style="margin-left: 0px" Width="90%"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabelB" runat="server" Text="Borrowed : *"></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style33">
                        <asp:DropDownList ID="DropDownList2" runat="server" ForeColor="Maroon" Width="90%">
                            <asp:ListItem>BORROWED</asp:ListItem>
                            <asp:ListItem>NOT BORROWED</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style34">
                        <asp:Label ID="LabelS" runat="server" Text="Book Statuse : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style33">
                        <asp:DropDownList ID="DropDownList1" runat="server" ForeColor="Maroon" Width="90%">
                            <asp:ListItem>AVAILABLE</asp:ListItem>
                            <asp:ListItem>NOT AVAILABLE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabelAC" runat="server" Text="ACC No : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="ACCTBox" runat="server" Height="25px" style="margin-left: 0px" Width="90%"></asp:TextBox>
                        </td>
                    <td class="auto-style34">
                        <asp:Label ID="Labelu" runat="server" Text="Unit Cost : "></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style33">
                        <asp:TextBox ID="UCTBox" runat="server" Height="23px" style="margin-left: 0px" Width="90%"></asp:TextBox>
                        </td>
                </tr>
                <tr> <td class="auto-style38" colspan="2"> 
                    &nbsp;</td>
                    <td class="auto-style38" colspan="2"> <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" Font-Names="Century Gothic" ForeColor="#990000" Width="50%" /> 
                        <br />
                    </td></tr>
           <tr><td></td><td></td><td></td><td></td></tr>
            </table>
     </asp:Content>
