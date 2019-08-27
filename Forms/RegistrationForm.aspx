<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="RCMC.Forms.RegistrationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            width: 445px;
        }
        .auto-style14 {
            text-align: center;
        }
        .auto-style16 {
            width: 445px;
            text-align: center;
        }
    .auto-style17 {
        width: 60%;
        text-align: center;
        height: 511px;
    }
    .auto-style18 {
        height: 26px;
        text-align: center;
        width: 60%;
    }
    .auto-style19 {
        width: 445px;
        text-align: center;
        height: 26px;
    }
        .auto-style22 {
            height: 39px;
            text-align: left;
            width: 25%;
        }
        .auto-style23 {
            width: 445px;
            text-align: right;
            height: 26px;
        }
        .auto-style26 {
            height: 39px;
            text-align: right;
            width: 15%;
        }
        .auto-style31 {
            width: 70%;
            text-align: center;
            height: 344px;
        }
        .auto-style32 {
            width: 50%;
            height: 25px;
        }
        .auto-style33 {
            width: 50%;
            text-align: right;
            height: 39px;
        }
        .auto-style34 {
            width: 25%;
            text-align: right;
            height: 39px;
        }
        .auto-style35 {
            width: 25%;
            text-align: center;
            height: 39px;
        }
        </style>
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p></p>

    <table align="center" style="background-color:peru; opacity: 0.8; filter: alpha(opacity=50); font-family: 'Century Gothic'; color: #5B0000; " class="auto-style31">
                
        <tr><td colspan="2" class="auto-style32"></td><td colspan="2" class="auto-style32"></td></tr>        
        <tr>
                    <td class="auto-style33" colspan="2">
                        <asp:Label ID="LabeID" runat="server" Text="Employee ID : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style22" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="EmpTBox" runat="server" style="margin-left: 0px" Width="45%" required Height="24px" placeholder="Enter your Job ID" maxlength="6"></asp:TextBox>
                    </td>
                </tr>
        
                
                <tr>
                    <td class="auto-style23" style="width: 25%">
                        <asp:Label ID="LabelFN" runat="server" Text="First Name : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style19" style="width: 25%">
                        <asp:TextBox ID="FNTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="22px" placeholder="First Name" ></asp:TextBox>
                    </td>
                    <td class="auto-style26" style="width: 25%">
                        <asp:Label ID="LabeMN" runat="server" Text="Middle Name : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style18" style="width: 25%">
                        <asp:TextBox ID="MNTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="24px" placeholder="Middle Name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabeLM" runat="server" Text="Last Name : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="LNTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="23px" placeholder="Last Name"></asp:TextBox>
                    </td>
                    <td class="auto-style34">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="LabeE" runat="server" Text="Email : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="EmTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="23px" placeholder="Example@Email.com"></asp:TextBox>
                    </td>
                </tr>
        <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabePS" runat="server" Text="PassWord : * "></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="PassTBox" runat="server" style="margin-left: 0px" Width="90%" TextMode="Password" required Height="23px" placeholder="Enter Password"></asp:TextBox>
                    </td>
                    <td class="auto-style34">
                        <asp:Label ID="LabelRPS" runat="server" Text="Confirm PassWord : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="Pass2TBox" runat="server" style="margin-left: 0px" Width="90%" TextMode="Password" required Height="25px" placeholder="Re Enter Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabelPN" runat="server" Text="Phone Number : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td class="auto-style35">
                        <asp:TextBox ID="PNTBox" runat="server" style="margin-left: 0px" Width="90%" required Height="23px" placeholder="0500000000" pattern="[0-9]{10}" title="0500000000"></asp:TextBox>
                    </td>
                    <td class="auto-style34">
                        <asp:Label ID="LabelBD" runat="server" Text="Birth Date : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp; </td>
                    <td class="auto-style35">
                        <asp:DropDownList ID="dayDropDownList" runat="server" Font-Names="Century Gothic" ForeColor="#993333" Height="16px">
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
                            <asp:DropDownList ID="monthDropDownList" runat="server" Font-Names="Century Gothic" ForeColor="#993333" Height="18px" Width="77px">
                            <asp:ListItem Value="JAN">January</asp:ListItem>
                            <asp:ListItem Value="FEB">Febraury</asp:ListItem>
                            <asp:ListItem Value="MAR">March</asp:ListItem>
                            <asp:ListItem Value="APR">April</asp:ListItem>
                            <asp:ListItem Value="MAY">May</asp:ListItem>
                            <asp:ListItem Value="JUN">June</asp:ListItem>
                            <asp:ListItem Value="JUL">July</asp:ListItem>
                            <asp:ListItem Value="AUG">August</asp:ListItem>
                            <asp:ListItem Value="SEP">September</asp:ListItem>
                            <asp:ListItem Value="OCT">October</asp:ListItem>
                            <asp:ListItem Value="NOV">November</asp:ListItem>
                            <asp:ListItem Value="DEC">December</asp:ListItem>
                        </asp:DropDownList>
                        <asp:DropDownList ID="yearDropDownList" runat="server" Font-Names="Century Gothic" ForeColor="#993333">
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
                    </td>
                </tr>
                <tr>
                    <td class="auto-style34">
                        <asp:Label ID="LabelJ" runat="server" Text="Job : *"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                    <td >
                        <asp:DropDownList ID="jobDropDownList" runat="server" Height="31px" Width="90%" Font-Names="Century Gothic" ForeColor="#993333">
                            <asp:ListItem>Doctor</asp:ListItem>
                            <asp:ListItem>Nurse</asp:ListItem>
                            <asp:ListItem>Pharmacist</asp:ListItem>
                            <asp:ListItem>Laboratorian</asp:ListItem>
                            <asp:ListItem>Adminstration Staff</asp:ListItem>
                        </asp:DropDownList>
                        </td>
                    <td class="auto-style34">
                        <asp:Label ID="LabelG0" runat="server" Text="Department : *"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        </td>
                    <td class="auto-style35">
                        <asp:DropDownList ID="DepDropDownList" runat="server" Height="31px" Width="90%" Font-Names="Century Gothic" ForeColor="#993333">
                            <asp:ListItem>Technical Affairs</asp:ListItem>
                            <asp:ListItem>Human Resource</asp:ListItem>
                            <asp:ListItem>Patient Affairs</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
<asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem>Pharmacy</asp:ListItem>
                            <asp:ListItem>Clinics</asp:ListItem>
                            <asp:ListItem>Laboratories</asp:ListItem>
                            <asp:ListItem>Emergency</asp:ListItem>
                            <asp:ListItem>Training Center</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr> <td class="auto-style16" colspan="2" style="width: 50%"> 
                    <asp:Label ID="Label3" runat="server" Text="Registered Successfully" Visible="False"></asp:Label>
                    </td>
                    <td class="auto-style14" style="width: 50%" colspan="2"> <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" Font-Names="Century Gothic" ForeColor="#990000" Width="50%" /> 
                        <br />
                        <asp:Label ID="NotMatchLabel" runat="server" Text="PassWord Does NOT Match" Visible="False" Font-Size="X-Large" ForeColor="Red"></asp:Label>
                    </td></tr>
            </table>

    

</asp:Content>



