<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration Form.aspx.cs" Inherits="RCMC.Regestration_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Registeration Form</title>
    <link href="style/StyleSheet1.css" rel="stylesheet" type="text/css">
    <style type="text/css">
        .auto-style2 {
            height: 23px;
            width: 433px;
        }
        .auto-style3 {
            width: 660px;
            height: 23px;
        }
        .auto-style7 {
            width: 433px;
            height: 34px;
            text-align: center;
        }
        .auto-style8 {
            width: 660px;
            height: 34px;
            text-align: center;
        }
        .auto-style11 {
            width: 433px;
            height: 32px;
            text-align: center;
        }
        .auto-style12 {
            width: 660px;
            height: 32px;
            text-align: center;
        }
        #Text1 {
            width: 373px;
            text-align: center;
        }
        #Text2 {
            width: 373px;
            text-align: center;
        }
        #Text3 {
            width: 373px;
            text-align: center;
        }
        #Text4 {
            width: 373px;
        }
        #Text5 {
            width: 373px;
        }
        #Text6 {
            width: 373px;
        }
        #Text7 {
            width: 373px;
            text-align: right;
        }
        #Text8 {
            width: 373px;
        }
        #Text9 {
            width: 373px;
        }
        #Text9 {
            width: 373px;
        }
        #Text10 {
            width: 373px;
        }
        #Text11 {
            width: 373px;
            text-align: center;
        }
        #Radio1 {
            width: 60px;
        }
        #Select1 {
            width: 276px;
        }
        .auto-style23 {
            width: 433px;
            height: 35px;
            text-align: center;
        }
        .auto-style24 {
            width: 660px;
            height: 35px;
            text-align: center;
        }
        .auto-style25 {
            width: 433px;
            text-align: center;
            height: 42px;
        }
        .auto-style26 {
            width: 660px;
            text-align: center;
            height: 42px;
        }
        .auto-style29 {
            width: 433px;
            height: 36px;
            text-align: center;
        }
        .auto-style30 {
            width: 660px;
            height: 36px;
            text-align: center;
        }
        .auto-style31 {
            width: 433px;
            height: 39px;
            text-align: center;
        }
        .auto-style32 {
            width: 660px;
            height: 39px;
            text-align: center;
        }
        #Select2 {
            width: 56px;
        }
        #Select3 {
            width: 56px;
        }
        #Select4 {
            width: 56px;
        }
        .auto-style33 {
            width: 55%;
            height: 695px;
        }
        .auto-style34 {
            width: 224px;
            margin-left: 390px;
        }
        .auto-style35 {
            height: 49px;
        }
    </style>
</head>
<body bgcolor=661a00 leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
    <form id="form1" runat="server">
        <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img src="images/index_01.jpg" alt="" width="398" height="231" border="0" usemap="#Map"></td>
        <td><img src="images/index_02.jpg" width="602" height="231" alt=""></td>
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
            <table align="center" style="margin-right: 25px;" class="auto-style33">
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="LabeID" runat="server" Text="Employee ID : "></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox1" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="LabePS" runat="server" Text="PassWord : "></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox2" runat="server" style="margin-left: 0px" Width="293px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="LabelRPS" runat="server" Text="Re PassWord : "></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox3" runat="server" style="margin-left: 0px" Width="293px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">
                        <asp:Label ID="LabelFN" runat="server" Text="First Name : "></asp:Label>
                    </td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox4" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style29">
                        <asp:Label ID="LabeMN" runat="server" Text="Middle Name : "></asp:Label>
                    </td>
                    <td class="auto-style30">
                        <asp:TextBox ID="TextBox5" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:Label ID="LabeLM" runat="server" Text="Last Name : "></asp:Label>
                    </td>
                    <td class="auto-style32">
                        <asp:TextBox ID="TextBox6" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="LabeE" runat="server" Text="Email : "></asp:Label>
                    </td>
                    <td class="auto-style8">
                        <asp:TextBox ID="TextBox7" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="LabelPN" runat="server" Text="Phone Number : "></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox8" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style23">
                        <asp:Label ID="LabelBD" runat="server" Text="Birth Date : "></asp:Label>
                    </td>
                    <td class="auto-style24">
                        &nbsp;
                        <asp:DropDownList ID="DropDownList3" runat="server">
                            <asp:ListItem Value="2000">2000</asp:ListItem>
                            <asp:ListItem Value="99">1999</asp:ListItem>
                            <asp:ListItem Value="98">1998</asp:ListItem>
                            <asp:ListItem Value="97">1997</asp:ListItem>
                            <asp:ListItem Value="96">1996</asp:ListItem>
                            <asp:ListItem Value="95">1995</asp:ListItem>
                            <asp:ListItem Value="94">1994</asp:ListItem>
                            <asp:ListItem Value="93">1993</asp:ListItem>
                            <asp:ListItem Value="92">1992</asp:ListItem>
                            <asp:ListItem Value="91">1991</asp:ListItem>
                            <asp:ListItem Value="90">1990</asp:ListItem>
                            <asp:ListItem Value="89">1989</asp:ListItem>
                            <asp:ListItem Value="88">1988</asp:ListItem>
                            <asp:ListItem Value="87">1987</asp:ListItem>
                            <asp:ListItem Value="86">1986</asp:ListItem>
                            <asp:ListItem Value="85">1985</asp:ListItem>
                            <asp:ListItem Value="84">1984</asp:ListItem>
                            <asp:ListItem Value="83">1983</asp:ListItem>
                            <asp:ListItem Value="82">1982</asp:ListItem>
                            <asp:ListItem Value="81">1981</asp:ListItem>
                            <asp:ListItem Value="80">1980</asp:ListItem>
                            <asp:ListItem Value="79">1979</asp:ListItem>
                            <asp:ListItem Value="78">1978</asp:ListItem>
                            <asp:ListItem Value="77">1977</asp:ListItem>
                            <asp:ListItem Value="76">1976</asp:ListItem>
                            <asp:ListItem Value="75">1975</asp:ListItem>
                            <asp:ListItem Value="74">1974</asp:ListItem>
                            <asp:ListItem Value="73">1973</asp:ListItem>
                            <asp:ListItem Value="72">1972</asp:ListItem>
                            <asp:ListItem Value="71">1971</asp:ListItem>
                            <asp:ListItem Value="70">1970</asp:ListItem>
                            <asp:ListItem Value="69">1969</asp:ListItem>
                            <asp:ListItem Value="68">1968</asp:ListItem>
                            <asp:ListItem Value="67">1967</asp:ListItem>
                            <asp:ListItem Value="66">1966</asp:ListItem>
                            <asp:ListItem Value="65">1965</asp:ListItem>
                            <asp:ListItem Value="64">1964</asp:ListItem>
                            <asp:ListItem Value="63">1963</asp:ListItem>
                            <asp:ListItem Value="62">1962</asp:ListItem>
                            <asp:ListItem Value="61">1961</asp:ListItem>
                            <asp:ListItem Value="60">1960</asp:ListItem>
                            <asp:ListItem Value="59">1959</asp:ListItem>
                            <asp:ListItem Value="58">1958</asp:ListItem>
                            <asp:ListItem Value="57">1957</asp:ListItem>
                            <asp:ListItem Value="56">1956</asp:ListItem>
                            <asp:ListItem Value="55">1955</asp:ListItem>
                            <asp:ListItem Value="54">1954</asp:ListItem>
                            <asp:ListItem Value="53">1953</asp:ListItem>
                            <asp:ListItem Value="52">1952</asp:ListItem>
                            <asp:ListItem Value="51">1951</asp:ListItem>
                            <asp:ListItem Value="50">1950</asp:ListItem>
                            <asp:ListItem Value="49">1949</asp:ListItem>
                            <asp:ListItem Value="48">1948</asp:ListItem>
                            <asp:ListItem Value="47">1947</asp:ListItem>
                            <asp:ListItem Value="46">1946</asp:ListItem>
                            <asp:ListItem Value="45">1945</asp:ListItem>
                            <asp:ListItem Value="44">1944</asp:ListItem>
                            <asp:ListItem Value="43">1943</asp:ListItem>
                            <asp:ListItem Value="42">1942</asp:ListItem>
                            <asp:ListItem Value="41">1941</asp:ListItem>
                            <asp:ListItem Value="40">1940</asp:ListItem>
                            <asp:ListItem Value="39">1939</asp:ListItem>
                            <asp:ListItem Value="38">1938</asp:ListItem>
                            <asp:ListItem Value="37">1937</asp:ListItem>
                            <asp:ListItem Value="36">1936</asp:ListItem>
                            <asp:ListItem Value="35">1935</asp:ListItem>
                            <asp:ListItem Value="34">1934</asp:ListItem>
                            <asp:ListItem Value="33">1933</asp:ListItem>
                            <asp:ListItem Value="32">1932</asp:ListItem>
                            <asp:ListItem Value="31">1931</asp:ListItem>
                            <asp:ListItem Value="30">1930</asp:ListItem>
                            <asp:ListItem Value="29">1929</asp:ListItem>
                            <asp:ListItem Value="28">1928</asp:ListItem>
                            <asp:ListItem Value="27">1927</asp:ListItem>
                            <asp:ListItem Value="26">1926</asp:ListItem>
                            <asp:ListItem Value="25">1925</asp:ListItem>
                            <asp:ListItem Value="24">1924</asp:ListItem>
                            <asp:ListItem Value="23">1923</asp:ListItem>
                            <asp:ListItem Value="22">1922</asp:ListItem>
                            <asp:ListItem Value="21">1921</asp:ListItem>
                            <asp:ListItem Value="20">1920</asp:ListItem>
                            <asp:ListItem Value="19">1919</asp:ListItem>
                            <asp:ListItem Value="18">1918</asp:ListItem>
                            <asp:ListItem Value="17">1917</asp:ListItem>
                            <asp:ListItem Value="16">1916</asp:ListItem>
                        </asp:DropDownList>
&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>1</asp:ListItem>
                            <asp:ListItem>2</asp:ListItem>
                            <asp:ListItem>3</asp:ListItem>
                            <asp:ListItem>4</asp:ListItem>
                            <asp:ListItem>5</asp:ListItem>
                            <asp:ListItem>6</asp:ListItem>
                            <asp:ListItem>7</asp:ListItem>
                            <asp:ListItem>8</asp:ListItem>
                            <asp:ListItem>9</asp:ListItem>
                            <asp:ListItem>10</asp:ListItem>
                            <asp:ListItem>11</asp:ListItem>
                            <asp:ListItem>12</asp:ListItem>
                            <asp:ListItem>13</asp:ListItem>
                            <asp:ListItem>14</asp:ListItem>
                            <asp:ListItem>15</asp:ListItem>
                            <asp:ListItem>16</asp:ListItem>
                            <asp:ListItem>17</asp:ListItem>
                            <asp:ListItem>18</asp:ListItem>
                            <asp:ListItem>19</asp:ListItem>
                            <asp:ListItem>20</asp:ListItem>
                            <asp:ListItem>21</asp:ListItem>
                            <asp:ListItem>22</asp:ListItem>
                            <asp:ListItem>23</asp:ListItem>
                            <asp:ListItem>24</asp:ListItem>
                            <asp:ListItem>25</asp:ListItem>
                            <asp:ListItem>26</asp:ListItem>
                            <asp:ListItem>27</asp:ListItem>
                            <asp:ListItem>28</asp:ListItem>
                            <asp:ListItem>29</asp:ListItem>
                            <asp:ListItem>30</asp:ListItem>
                            <asp:ListItem>31</asp:ListItem>
                        </asp:DropDownList>
                        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                            <NextPrevStyle VerticalAlign="Bottom" />
                            <OtherMonthDayStyle ForeColor="#808080" />
                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                            <SelectorStyle BackColor="#CCCCCC" />
                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="LabelG" runat="server" Text="Gender : "></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="Fmale" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="LabelJ" runat="server" Text="Job : "></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="22px" Width="301px">
                            <asp:ListItem>Doctor</asp:ListItem>
                            <asp:ListItem>Nurse</asp:ListItem>
                            <asp:ListItem>Pharmacist</asp:ListItem>
                            <asp:ListItem>Laboratorian</asp:ListItem>
                            <asp:ListItem>Adminstration Staff</asp:ListItem>
                        </asp:DropDownList>
                    </td>

                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="LabelAd" runat="server" Text="Address : "></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox9" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="LabelAd2" runat="server" Text="Address 2 : "></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox10" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style25">
                        <asp:Label ID="LabelPC" runat="server" Text="Postal Code : "></asp:Label>
                    </td>
                    <td class="auto-style26">
                        <asp:TextBox ID="TextBox11" runat="server" style="margin-left: 0px" Width="293px"></asp:TextBox>
                    </td>
                </tr>
                
            </table>

        <br />
    
        <p class="auto-style34">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: Center" Text="Register" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    
    </div>

        <table width="1000" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td><table width="100%" border="0" cellspacing="10" cellpadding="0">
      <tr>
        <td align="center"><img src="images/index_49.gif" width="912" height="21" alt=""></td>
      </tr>
      <tr>
        <td><table width="100%" border="0" cellspacing="10" cellpadding="0">
          <tr>
            <td class="auto-style35" width="63%"><a href="#"><strong>Terms of Use</strong></a><strong class="broun-text-regular"> | </strong><a href="#"><strong>Privacy Statement</strong></a></td>
            <td width="37%" align="center" class="auto-style35">&copy; 2016 Your Corporation. All rights reserved</td>
          </tr>
        </table></td>
      </tr>
    </table></td>
  </tr>
</table>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
