<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="LibHomePage.aspx.cs" Inherits="RCMC.Forms.LibHomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="Stylesheet" type="text/css" href="<%= ResolveUrl("~/style/HomePage.css") %>"/>
    <style type="text/css">
        .auto-style21 {
            width: 100%;
            height: 221px;
        }
        .auto-style22 {
            text-align: left;
        }
        .auto-style23 {
            width: 15%;
            height: 34px;
        }
        .auto-style24 {
            width: 70%;
            height: 34px;
        }
        .auto-style25 {
            text-align: center;
            width: 15%;
            height: 34px;
        }
        .auto-style26 {
            width: 15%;
            height: 27px;
            text-align: center;
        }
        .auto-style27 {
            width: 15%;
            height: 28px;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table class="auto-style21" style="font-family: 'Century Gothic'; color: #CC0066">
        <tr>
            <td colspan="5">
                <table align="center" style="width: 50%" >
                    <tr >
                        <td style="width: 70%">
                            <asp:TextBox ID="TextBox1" runat="server" Height="90%" Width="90%" placeholder=" Enter book name" style="box-sizing: border-box; border: 2px solid #ccc;border-radius: 4px; font-size: 16px; background-image: url('C:\Users\Rufaidah\documents\visual studio 2015\Projects\RCMC\RCMC\images\sicon.png'); background-repeat: no-repeat; padding: 12px 20px 12px 40px; -webkit-transition: width 0.4s ease-in-out; transition: width 0.4s ease-in-out;"></asp:TextBox>
                        </td>
                        <td style="width: 30%" >
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Search" Width="105px" BackColor="#F8F8F8" Font-Names="Century Gothic" ForeColor="#660033" Height="36px"  />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 70%" colspan="3">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%" class="auto-style1">
                &nbsp;</td>
            <td style="width: 70%" colspan="3" rowspan="5">
            

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
                <asp:Menu ID="BSMenu" runat="server" Font-Names="Gill Sans Ultra Bold Condensed" ForeColor="#660066" Visible="False">
                    <Items>
                        <asp:MenuItem ImageUrl="~/images/Bicon.png" Text="Books" Value="Books">
                            <asp:MenuItem NavigateUrl="~/Forms/NewBook.aspx" Text="Add Book" Value="Add Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Forms/UpdateBookInfo.aspx" Text="Edit Book" Value="Edit Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Forms/DeleteBook.aspx" Text="Delete Book" Value="Delete Book"></asp:MenuItem>
                            <asp:MenuItem NavigateUrl="~/Forms/NewCoppyOfBook.aspx" Text="New Coppy Of Book" Value="New Coppy Of Book"></asp:MenuItem>
                        </asp:MenuItem>
                        <asp:MenuItem ImageUrl="~/images/Seicon.png" Text="Sections" Value="Sections">
                            <asp:MenuItem NavigateUrl="~/Forms/NewSection.aspx" Text="New Section " Value="New Section "></asp:MenuItem>
                        </asp:MenuItem>
                    </Items>
                </asp:Menu>
                <asp:ImageButton ID="BFImageButton" runat="server" Height="69px" ImageUrl="~/images/BF1.png" OnClick="ImageButton4_Click" Width="171px" Visible="False" />
                <asp:ImageButton ID="VLImageButton" runat="server" Height="57px" ImageUrl="~/images/VL.png" OnClick="ImageButton5_Click" Width="169px" Visible="False" />
                <asp:ImageButton ID="msgImageButton" runat="server" ImageUrl="~/images/msgev.png" OnClick="ImageButton4_Click1" Visible="False" Width="176px" Height="61px" />
</div>




            <td style="width: 15%" rowspan="2" class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Reports"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 15%" class="auto-style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%" class="auto-style22">
                &nbsp;</td>


            <td style="width: 15%" class="auto-style1">
                <asp:LinkButton ID="LinkButton3" runat="server" OnClick="ExportExcel" Visible="False" Font-Bold="True" ForeColor="#CC0066">Survey Responses</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 15%">
                &nbsp;</td>


            <td style="width: 15%" class="auto-style1">
                <asp:LinkButton ID="LinkButton4" runat="server" Font-Bold="True" ForeColor="#CC0066" OnClick="LinkButton4_Click">Membrers</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>


            <td style="width: 15%" class="auto-style1">
                <asp:LinkButton ID="LinkButton5" runat="server" Font-Bold="True" ForeColor="#CC0066" OnClick="LinkButton5_Click">Books</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style23"></td>
            <td colspan="3" class="auto-style24"></td>
            <td class="auto-style25">
                <asp:LinkButton ID="LinkButton6" runat="server" Font-Bold="True" ForeColor="#CC0066" OnClick="LinkButton6_Click">Borrowing</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 15%" rowspan="3">&nbsp;</td>
            <td style="width: 23%" rowspan="3">&nbsp;</td>
            <td style="width: 23%" rowspan="3"><asp:ImageButton ID="ImageButton1" runat="server" Height="134px" ImageUrl="~/images/books.png" OnClick="ImageButton1_Click" Width="210px" /></td>
            <td style="width: 23%" class="auto-style1" rowspan="3">
                &nbsp;</td>
            <td class="auto-style26">
                <asp:LinkButton ID="LinkButton7" runat="server" Font-Bold="True" ForeColor="#CC0066" OnClick="LinkButton7_Click">Categories</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="auto-style27">
                <asp:LinkButton ID="LinkButton8" runat="server" Font-Bold="True" ForeColor="#CC0066" OnClick="LinkButton8_Click" >Visitors Log</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 70%" colspan="3">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
    </table>


</asp:Content>
