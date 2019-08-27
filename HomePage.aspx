<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="RCMC.HomePage" %>

<%@ Register assembly="DevExpress.XtraReports.v16.1.Web, Version=16.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.XtraReports.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
    <link href="style/StyleSheet1.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .auto-style2 {
            width: 31%;
            margin-left: 612px;
            height: 49px;
        }
        .auto-style4 {
            height: 44px;
            width: 72px;
            float: left;
            margin-left: 0px;
        }
        .auto-style5 {
            text-align: center;
            width: 96px;
        }
        .auto-style6 {
            width: 347px;
        }
    </style>
</head>
<body bgcolor=661a00>
    <form id="form1" runat="server">
        <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/index_01.jpg" alt="" width="398" height="231" border="0" usemap="#Map"><dx:ASPxReportDesigner ID="ASPxReportDesigner1" runat="server">
            </dx:ASPxReportDesigner>
          </td>
        <td><img src="images/index_02.jpg" width="602" height="231" alt=""><asp:Chart ID="Chart1" runat="server" CssClass="auto-style7" DataSourceID="SqlDataSource1" OnLoad="Chart1_Load" Width="455px">
            <Series>
                <asp:Series Name="Series1">
                </asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT &quot;Q1&quot;, &quot;Q2&quot;, &quot;Q3&quot;, &quot;Q4&quot;, &quot;Q5&quot;, &quot;SRV_DATE&quot; FROM &quot;SURVEY&quot; ORDER BY &quot;SRV_DATE&quot; DESC"></asp:SqlDataSource>
          </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/index_03.jpg" width="1000" height="30" alt=""></td>
  </tr>
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><a href="#"><img src="images/index_04.gif" alt="" width="196" height="52" border="0"></a></td>
        <td><a href="#"><img src="images/index_05.gif" alt="" width="126" height="52" border="0"></a></td>
        <td><a href="#"><img src="images/index_06.gif" alt="" width="99" height="52" border="0"></a></td>
        <td><a href="#"><img src="images/index_07.gif" alt="" width="97" height="52" border="0"></a></td>
        <td><a href="#"><img src="images/index_08.gif" alt="" width="102" height="52" border="0"></a></td>
        <td><a href="#"><img src="images/index_09.gif" alt="" width="115" height="52" border="0"></a></td>
        <td><img src="images/index_10.gif" width="265" height="52" alt=""></td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td><img src="images/index_11.jpg" width="1000" height="105" alt=""></td>
  </tr>
</table>
    <div>
    
        <br />
        <table class="auto-style2" align="center">
            <tr>
                <td class="auto-style5">
                    <img alt="" src="images/icnlogin.png" class="auto-style4" />
                     <asp:Label ID="Label1" runat="server" Text="login | signUp" color="eeeeee" >login | signUp</asp:Label>
                <td class="auto-style6"></td>
            </tr>
            
            
        </table>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
