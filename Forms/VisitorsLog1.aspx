<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="VisitorsLog1.aspx.cs" Inherits="RCMC.Forms.VisitorsLog1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="background-color: #993333; font-family: 'Century Gothic'; color: #FFCC99; opacity: 0.8; filter: alpha(opacity=50);" align="center" class="auto-style13">
        <tr>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style19">
                <asp:Label ID="Label9" runat="server" Text="Today is: " Font-Size="X-Large"></asp:Label>
                </td>
            <td class="auto-style19">
                <asp:Label ID="DateLabel" runat="server" Text=" " Font-Size="X-Large"></asp:Label>
            </td>
            <td class="auto-style18">
                <asp:Button ID="Button1" runat="server" Font-Names="Century Gothic" ForeColor="#993333" OnClick="Button1_Click1" Text="View All" Width="35%" />
            </td>
        </tr>
        <tr>
            <td class="auto-style20" rowspan="2" style="border-style: double none double double; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label2" runat="server" Text="Visitor "></asp:Label>
                <asp:Label ID="VLabel1" runat="server" Text="6"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp; <asp:Label ID="Label11" runat="server" Text="Visitor ID: "></asp:Label>
                <asp:TextBox ID="V1IdTBox" runat="server"></asp:TextBox>
            &nbsp;<asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click" ForeColor=#FFCC99>✓</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp;<asp:Label ID="Label12" runat="server" Text="Visitor Job: "></asp:Label>
                <asp:TextBox ID="V1JTBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18" style="border-style: double double none none; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label13" runat="server" Text="Department: "></asp:Label>
                <asp:DropDownList ID="DepDropDownList" runat="server" Height="31px" Width="45%" Font-Names="Century Gothic" ForeColor="#993333">
                            <asp:ListItem>Technical Affairs</asp:ListItem>
                            <asp:ListItem>Human Resource</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
                            <asp:ListItem>Patient Affairs</asp:ListItem>
<asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem>Pharmacy</asp:ListItem>
                            <asp:ListItem>Clinics</asp:ListItem>
                            <asp:ListItem>Laboratories</asp:ListItem>
                            <asp:ListItem>Emergency</asp:ListItem>
                            <asp:ListItem>Training Center</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList> </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Text="Time In: "></asp:Label>
                &nbsp;<asp:TextBox ID="V1TITBox" runat="server"></asp:TextBox>
                &nbsp; <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click" ForeColor=#FFCC99>&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;
                <asp:Label ID="Label15" runat="server" Text="Time Out: "></asp:Label>
                &nbsp;<asp:TextBox ID="V1TOTBox" runat="server"></asp:TextBox>
                &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" ForeColor=#FFCC99 OnClick="LinkButton3_Click" >&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style22" style="border-width: medium; border-color: #FF9966; border-style: none double double none;">
                <asp:Button ID="V1Button" runat="server" Text="Add" Width="35%" BackColor="#FFCC99" ForeColor="#993333" OnClick="Button1_Click" CssClass="auto-style23" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp; </td>
        </tr>
        <tr><td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td></tr>
          <tr>
            <td class="auto-style20" rowspan="2" style="border-style: double none double double; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label1" runat="server" Text="Visitor "></asp:Label>
                <asp:Label ID="Label5" runat="server" Text="7"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp; <asp:Label ID="Label6" runat="server" Text="Visitor ID: "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            &nbsp;<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton122_Click" ForeColor=#FFCC99>✓</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp;<asp:Label ID="Label7" runat="server" Text="Visitor Job: "></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18" style="border-style: double double none none; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label17" runat="server" Text="Department: "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="31px" Width="45%" Font-Names="Century Gothic" ForeColor="#993333">
                            <asp:ListItem>Technical Affairs</asp:ListItem>
                            <asp:ListItem>Human Resource</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
<asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem>Patient Affairs</asp:ListItem>
                            <asp:ListItem>Pharmacy</asp:ListItem>
                            <asp:ListItem>Clinics</asp:ListItem>
                            <asp:ListItem>Laboratories</asp:ListItem>
                            <asp:ListItem>Emergency</asp:ListItem>
                            <asp:ListItem>Training Center</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList> </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Text="Time In: "></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                &nbsp; <asp:LinkButton ID="LinkButton4" runat="server" OnClick="LinkButton4_Click" ForeColor=#FFCC99>&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;
                <asp:Label ID="Label35" runat="server" Text="Time Out: "></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp;<asp:LinkButton ID="LinkButton5" runat="server" ForeColor=#FFCC99 OnClick="LinkButton5_Click" >&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style22" style="border-width: medium; border-color: #FF9966; border-style: none double double none;">
                <asp:Button ID="Button2" runat="server" Text="Add" Width="35%" BackColor="#FFCC99" ForeColor="#993333" OnClick="V2Button_Click" CssClass="auto-style23" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp; </td>
        </tr>
      <tr><td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td></tr>
         <tr>
            <td class="auto-style20" rowspan="2" style="border-style: double none double double; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label3" runat="server" Text="Visitor "></asp:Label>
                <asp:Label ID="Label4" runat="server" Text="8"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp; <asp:Label ID="Label8" runat="server" Text="Visitor ID: "></asp:Label>
                <asp:TextBox ID="V3IdTBox" runat="server"></asp:TextBox>
            &nbsp;<asp:LinkButton ID="LinkButton66" runat="server" OnClick="LinkButton66_Click" ForeColor=#FFCC99>✓</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp;<asp:Label ID="Label10" runat="server" Text="Visitor Job: "></asp:Label>
                <asp:TextBox ID="V3JTBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18" style="border-style: double double none none; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label16" runat="server" Text="Department: "></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" Height="31px" Width="45%" Font-Names="Century Gothic" ForeColor="#993333">
                            <asp:ListItem>Technical Affairs</asp:ListItem>
                            <asp:ListItem>Human Resource</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
<asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem>Patient Affairs</asp:ListItem>
                            <asp:ListItem>Pharmacy</asp:ListItem>
                            <asp:ListItem>Clinics</asp:ListItem>
                            <asp:ListItem>Laboratories</asp:ListItem>
                            <asp:ListItem>Emergency</asp:ListItem>
                            <asp:ListItem>Training Center</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList> </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label19" runat="server" Text="Time In: "></asp:Label>
                &nbsp;<asp:TextBox ID="V3TITBox" runat="server"></asp:TextBox>
                &nbsp; <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton6_Click" ForeColor=#FFCC99>&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;
                <asp:Label ID="Label20" runat="server" Text="Time Out: "></asp:Label>
                &nbsp;<asp:TextBox ID="V3TOTBox" runat="server"></asp:TextBox>
                &nbsp;<asp:LinkButton ID="LinkButton13" runat="server" ForeColor=#FFCC99 OnClick="LinkButton7_Click" >&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style22" style="border-width: medium; border-color: #FF9966; border-style: none double double none;">
                <asp:Button ID="V3Button" runat="server" Text="Add" Width="35%" BackColor="#FFCC99" ForeColor="#993333" OnClick="V3Button_Click" CssClass="auto-style23" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp; </td>
        </tr>
        <tr><td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td></tr>
         <tr>
            <td class="auto-style20" rowspan="2" style="border-style: double none double double; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label21" runat="server" Text="Visitor "></asp:Label>
                <asp:Label ID="Label22" runat="server" Text="9"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp; <asp:Label ID="Label23" runat="server" Text="Visitor ID: "></asp:Label>
                <asp:TextBox ID="V4IdTBox" runat="server"></asp:TextBox>
            &nbsp;<asp:LinkButton ID="LinkButton44" runat="server" OnClick="LinkButton44_Click" ForeColor=#FFCC99>✓</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp;<asp:Label ID="Label24" runat="server" Text="Visitor Job: "></asp:Label>
                <asp:TextBox ID="V4JTBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18" style="border-style: double double none none; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label25" runat="server" Text="Department: "></asp:Label>
                <asp:DropDownList ID="DropDownList3" runat="server" Height="31px" Width="45%" Font-Names="Century Gothic" ForeColor="#993333">
                            <asp:ListItem>Technical Affairs</asp:ListItem>
                            <asp:ListItem>Human Resource</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
<asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Clinics</asp:ListItem>
                            <asp:ListItem>Laboratories</asp:ListItem>
                            <asp:ListItem>Patient AffairsPharmacy</asp:ListItem>
                            <asp:ListItem>Emergency</asp:ListItem>
                            <asp:ListItem>Training Center</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList> </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label26" runat="server" Text="Time In: "></asp:Label>
                &nbsp;<asp:TextBox ID="V4TITBox" runat="server"></asp:TextBox>
                &nbsp; <asp:LinkButton ID="LinkButton8" runat="server" OnClick="LinkButton8_Click" ForeColor=#FFCC99>&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;
                <asp:Label ID="Label27" runat="server" Text="Time Out: "></asp:Label>
                &nbsp;<asp:TextBox ID="V4TOTBox" runat="server"></asp:TextBox>
                &nbsp;<asp:LinkButton ID="LinkButton9" runat="server" ForeColor=#FFCC99 OnClick="LinkButton9_Click" >&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style22" style="border-width: medium; border-color: #FF9966; border-style: none double double none;">
                <asp:Button ID="V4Button" runat="server" Text="Add" Width="35%" BackColor="#FFCC99" ForeColor="#993333" OnClick="V4Button_Click" CssClass="auto-style23" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp; </td>
        </tr>
        <tr><td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td></tr>
         <tr>
            <td class="auto-style20" rowspan="2" style="border-style: double none double double; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label28" runat="server" Text="Visitor "></asp:Label>
                <asp:Label ID="Label29" runat="server" Text="10"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp; <asp:Label ID="Label30" runat="server" Text="Visitor ID: "></asp:Label>
                <asp:TextBox ID="V5IdTBox" runat="server"></asp:TextBox>
            &nbsp;<asp:LinkButton ID="LinkButton55" runat="server" OnClick="LinkButton55_Click" ForeColor=#FFCC99>✓</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: double none none none; border-width: medium; border-color: #FF9966;">
                &nbsp;<asp:Label ID="Label31" runat="server" Text="Visitor Job: "></asp:Label>
                <asp:TextBox ID="V5JTBox" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style18" style="border-style: double double none none; border-width: medium; border-color: #FF9966;">
                <asp:Label ID="Label32" runat="server" Text="Department: "></asp:Label>
                <asp:DropDownList ID="DropDownList4" runat="server" Height="31px" Width="45%" Font-Names="Century Gothic" ForeColor="#993333">
                            <asp:ListItem>Technical Affairs</asp:ListItem>
                            <asp:ListItem>Human Resource</asp:ListItem>
                            <asp:ListItem>Finance</asp:ListItem>
<asp:ListItem>Reception</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                            <asp:ListItem>Clinics</asp:ListItem>
                            <asp:ListItem>Laboratories</asp:ListItem>
                            <asp:ListItem>Patient AffairsPharmacy</asp:ListItem>
                            <asp:ListItem>Emergency</asp:ListItem>
                            <asp:ListItem>Training Center</asp:ListItem>
                            <asp:ListItem>Others</asp:ListItem>
                        </asp:DropDownList> </td>
        </tr>
        <tr>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label33" runat="server" Text="Time In: "></asp:Label>
                &nbsp;<asp:TextBox ID="V5TITBox" runat="server"></asp:TextBox>
                &nbsp; <asp:LinkButton ID="LinkButton10" runat="server" OnClick="LinkButton10_Click" ForeColor=#FFCC99>&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style21" style="border-style: none none double none; border-width: medium; border-color: #FF9966;">
                &nbsp;
                <asp:Label ID="Label34" runat="server" Text="Time Out: "></asp:Label>
                &nbsp;<asp:TextBox ID="V5TOTBox" runat="server"></asp:TextBox>
                &nbsp;<asp:LinkButton ID="LinkButton11" runat="server" ForeColor=#FFCC99 OnClick="LinkButton11_Click" >&#x231A;</asp:LinkButton>
            </td>
            <td class="auto-style22" style="border-width: medium; border-color: #FF9966; border-style: none double double none;">
                <asp:Button ID="V5Button" runat="server" Text="Add" Width="35%" BackColor="#FFCC99" ForeColor="#993333" OnClick="V5Button_Click" CssClass="auto-style23" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp; </td>
        </tr>
        <tr><td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19"></td> <td class="auto-style19" style="color: #FFCC99">
            <asp:LinkButton ID="LinkButton67" runat="server" ForeColor="#FFCC99" OnClick="LinkButton67_Click">1</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="LinkButton6" runat="server" ForeColor="#FFCC99" OnClick="LinkButton6_Click1">2</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="LinkButton14" runat="server" ForeColor="#FFCC99" OnClick="LinkButton14_Click">3</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="LinkButton15" runat="server" ForeColor="#FFCC99" OnClick="LinkButton15_Click">4</asp:LinkButton>
            &nbsp;
            <asp:LinkButton ID="LinkButton16" runat="server" ForeColor="#FFCC99" OnClick="LinkButton16_Click">5</asp:LinkButton>
            </td></tr>
         
      </table>
</asp:Content>
