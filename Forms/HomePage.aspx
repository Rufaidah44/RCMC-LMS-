<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RCMC.Forms.HomePage2" %>
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
                text-align: center;
                width: 16%;
            }

            .auto-style24 {
                width: 15%;
                height: 65px;
            }

            .auto-style25 {
                height: 65px;
            }

            .auto-style26 {
                width: 15%;
                height: 55px;
            }

            .auto-style27 {
                height: 55px;
            }
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style21" style="font-family: 'Century Gothic'; color: #CC0066">
        <tr>
            <td colspan="5">
                <table align="center" style="width: 50%" >
                    <tr >
                        <td style="width: 70%" class="auto-style1">
                            <asp:TextBox ID="TextBox1" runat="server" Height="80%" Width="90%" placeholder=" Enter book name" style="box-sizing: border-box; border: 2px solid #ccc;border-radius: 4px; font-size: 16px; background-image: url('C:\Users\Rufaidah\documents\visual studio 2015\Projects\RCMC\RCMC\images\sicon.png'); background-repeat: no-repeat; padding: 12px 20px 12px 40px; -webkit-transition: width 0.4s ease-in-out; transition: width 0.4s ease-in-out;"></asp:TextBox>
                        </td>
                        <td style="width: 30%" >
                            &nbsp;
                            <asp:Button ID="Button1" runat="server" Text="Search" Width="105px" BackColor="#F8F8F8" Font-Names="Century Gothic" ForeColor="#660033" Height="36px" OnClick="Button1_Click1"  />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Visible="False">View Members Account</asp:LinkButton> </td>
            <td colspan="3" class="auto-style25"></td>
            <td class="auto-style24"></td>
        </tr>
        <tr>
            <td style="width: 15%" class="auto-style1">
                &nbsp;</td>
            <td colspan="3" rowspan="5">
            <div id="slide" class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/images/Picturey.png" Height="160px" Width="60%" />
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image2" runat="server" ImageUrl="~/images/Pictures.png" Height="159px" Width="60%" />
  <div class="text"></div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image3" runat="server" ImageUrl="~/images/Pictureb.png" Height="160px" Width="60%" />
  <div class="text"></div>
</div>

<a class="prev" onclick="plusSlides(-1)">❮</a>
<a class="next" onclick="plusSlides(1)">❯</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>

<script>
var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
}
</script>


            <td style="width: 15%" rowspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%" class="auto-style22">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%" class="auto-style22">
                &nbsp;</td>


            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">
                &nbsp;</td>


            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>


            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style26"></td>
            <td colspan="3" class="auto-style27"></td>
            <td class="auto-style26"></td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td style="width: 23%"><asp:ImageButton ID="ImageButton1" runat="server" Height="134px" ImageUrl="~/images/books.png" OnClick="ImageButton1_Click" Width="210px" /></td>
            <td style="width: 23%"><asp:ImageButton ID="ImageButton2" runat="server" Height="101px" ImageUrl="~/images/join.png" OnClick="ImageButton2_Click" Width="232px" /></td>
            <td class="auto-style23">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="123px" ImageUrl="~/images/contact.png" OnClick="ImageButton3_Click" Width="203px" />
            </td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 15%">&nbsp;</td>
            <td colspan="3">&nbsp;</td>
            <td style="width: 15%">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
