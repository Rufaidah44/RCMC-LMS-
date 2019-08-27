<%@ Page Title="" Language="C#" MasterPageFile="~/Master Pages/Lbary.Master" AutoEventWireup="true" CodeBehind="ListOfBooks.aspx.cs" Inherits="RCMC.Forms.ListOfBooks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
.Initial
{
  display: block;
  padding: 4px 18px 4px 18px;
  float: left;
  background-color :bisque;
  border:dotted ;
  border-bottom-color : crimson;
  color:brown ;
  font-size:medium; 
  font-family:'Gill Sans Ultra Bold Condensed';
}
.Initial:hover
{
  color: White;
  background: url("../Images/SelectedButton.png") no-repeat right top;
}
.Clicked
{
  float: left;
  display: block;
  background: url("../Images/SelectedButton.png") no-repeat right top;
  padding: 4px 18px 4px 18px;
  color: brown;
  font-size:medium; 
  font-family:'Gill Sans Ultra Bold Condensed';
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table width="80%" align="center">
      <tr>
        <td>
          <asp:Button Text="Human Anatomy & Cytology & Histology " BorderStyle="Solid" ID="Tab1" CssClass="Initial" runat="server"
              OnClick="Tab1_Click" />
          <asp:Button Text=" Medicine & Health " BorderStyle="Solid" ID="Tab2" CssClass="Initial" runat="server"
              OnClick="Tab2_Click" />
          <asp:Button Text=" Human physiology" BorderStyle="Solid" ID="Tab3" CssClass="Initial" runat="server"
              OnClick="Tab3_Click" />
             <asp:Button Text="Personal health & safety" BorderStyle="Solid" ID="Tab4" CssClass="Initial" runat="server"
              OnClick="Tab4_Click" />
             <asp:Button Text="Forensic medicine" BorderStyle="Solid" ID="Tab5" CssClass="Initial" runat="server"
              OnClick="Tab5_Click" />
             <asp:Button Text="Pharmacology & Therapeutics" BorderStyle="Solid" ID="Tab6" CssClass="Initial" runat="server"
              OnClick="Tab6_Click" />
             <asp:Button Text="Diseases" BorderStyle="Solid" ID="Tab7" CssClass="Initial" runat="server"
              OnClick="Tab7_Click" />
             <asp:Button Text="Surgery, Regional medicine, Dentistry, Ophthalmology, Otology, Audiology" BorderStyle="Solid" ID="Tab8" CssClass="Initial" runat="server"
              OnClick="Tab8_Click" />
            <asp:Button Text="Gynecology, Obstetrics, Pediatrics, Geriatrics" BorderStyle="Solid" ID="Tab9" CssClass="Initial" runat="server"
              OnClick="Tab9_Click" />

          <asp:MultiView ID="MainView" runat="server">
            <asp:View ID="View1" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" Font-Names="Century Gothic" ForeColor="#993333" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                          <AlternatingRowStyle BackColor="White" />
                          <FooterStyle BackColor="#CCCC99" />
                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="#F7F7DE" />
                          <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                          <SortedAscendingHeaderStyle BackColor="#848384" />
                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                          <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View2" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView2" runat="server" BackColor="White" BorderColor="#CC9966" BorderWidth="1px" CellPadding="4" Font-Names="Century Gothic" BorderStyle="None">
                          <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                          <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                          <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                          <RowStyle BackColor="White" ForeColor="#330099" />
                          <SelectedRowStyle BackColor="#FFCC66" ForeColor="#663399" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FEFCEB" />
                          <SortedAscendingHeaderStyle BackColor="#AF0101" />
                          <SortedDescendingCellStyle BackColor="#F6F0C0" />
                          <SortedDescendingHeaderStyle BackColor="#7E0000" />
                      </asp:GridView>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
            <asp:View ID="View3" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView3" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" Font-Names="Century Gothic" ForeColor="Black" GridLines="Vertical" BorderStyle="None">
                          <AlternatingRowStyle BackColor="White" />
                          <FooterStyle BackColor="#CCCC99" />
                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="#F7F7DE" />
                          <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                          <SortedAscendingHeaderStyle BackColor="#848384" />
                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                          <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View4" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView4" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" Font-Names="Century Gothic" BorderStyle="None" CellSpacing="2">
                          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                          <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                          <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                          <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FFF1D4" />
                          <SortedAscendingHeaderStyle BackColor="#B95C30" />
                          <SortedDescendingCellStyle BackColor="#F1E5CE" />
                          <SortedDescendingHeaderStyle BackColor="#93451F" />
                      </asp:GridView>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View5" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView5" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" Font-Names="Century Gothic" ForeColor="Black" GridLines="Vertical" BorderStyle="None">
                          <AlternatingRowStyle BackColor="White" />
                          <FooterStyle BackColor="#CCCC99" />
                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="#F7F7DE" />
                          <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                          <SortedAscendingHeaderStyle BackColor="#848384" />
                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                          <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View6" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView6" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" Font-Names="Century Gothic" BorderStyle="None" CellSpacing="2">
                          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                          <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                          <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                          <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FFF1D4" />
                          <SortedAscendingHeaderStyle BackColor="#B95C30" />
                          <SortedDescendingCellStyle BackColor="#F1E5CE" />
                          <SortedDescendingHeaderStyle BackColor="#93451F" />
                      </asp:GridView>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View7" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView7" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" Font-Names="Century Gothic" ForeColor="Black" GridLines="Vertical" BorderStyle="None">
                          <AlternatingRowStyle BackColor="White" />
                          <FooterStyle BackColor="#CCCC99" />
                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="#F7F7DE" />
                          <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                          <SortedAscendingHeaderStyle BackColor="#848384" />
                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                          <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                    
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View8" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView8" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderWidth="1px" CellPadding="3" Font-Names="Century Gothic" BorderStyle="None" CellSpacing="2">
                          <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                          <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                          <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                          <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                          <SelectedRowStyle BackColor="#738A9C" ForeColor="White" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FFF1D4" />
                          <SortedAscendingHeaderStyle BackColor="#B95C30" />
                          <SortedDescendingCellStyle BackColor="#F1E5CE" />
                          <SortedDescendingHeaderStyle BackColor="#93451F" />
                      </asp:GridView>
                                          
                  </td>
                </tr>
              </table>
            </asp:View>
              <asp:View ID="View9" runat="server">
              <table style="width: 100%; border-width: 1px; border-color: #666; border-style: solid">
                <tr>
                  <td>
                    
                      <asp:GridView ID="GridView9" runat="server" BackColor="White" BorderColor="#DEDFDE" BorderWidth="1px" CellPadding="4" Font-Names="Century Gothic" ForeColor="Black" GridLines="Vertical" BorderStyle="None">
                          <AlternatingRowStyle BackColor="White" />
                          <FooterStyle BackColor="#CCCC99" />
                          <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                          <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                          <RowStyle BackColor="#F7F7DE" />
                          <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                          <SortedAscendingCellStyle BackColor="#FBFBF2" />
                          <SortedAscendingHeaderStyle BackColor="#848384" />
                          <SortedDescendingCellStyle BackColor="#EAEAD3" />
                          <SortedDescendingHeaderStyle BackColor="#575357" />
                      </asp:GridView>
                                          
                  </td>
                </tr>
              </table>
            </asp:View>
          </asp:MultiView>
        </td>
      </tr>
    </table>
    </asp:Content>
