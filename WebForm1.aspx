<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RCMC.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
    <title>Registration Form</title>
    
</head>
<body  bgcolor="#9ffeee">
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AutoGenerateColumns="False" DataKeyNames="BOOK_ID">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="BOOK_ID" HeaderText="BOOK_ID" ReadOnly="True" SortExpression="BOOK_ID" />
                <asp:BoundField DataField="BOOK_NAME" HeaderText="BOOK_NAME" SortExpression="BOOK_NAME" />
                <asp:BoundField DataField="SEC_ID" HeaderText="SEC_ID" SortExpression="SEC_ID" />
                <asp:BoundField DataField="BOOK_CLASSIFICATION_NUM" HeaderText="BOOK_CLASSIFICATION_NUM" SortExpression="BOOK_CLASSIFICATION_NUM" />
                <asp:BoundField DataField="BOOK_ISBN_NUM" HeaderText="BOOK_ISBN_NUM" SortExpression="BOOK_ISBN_NUM" />
                <asp:BoundField DataField="BOOK_AUTHER" HeaderText="BOOK_AUTHER" SortExpression="BOOK_AUTHER" />
                <asp:BoundField DataField="BOOK_EDITION_NUM" HeaderText="BOOK_EDITION_NUM" SortExpression="BOOK_EDITION_NUM" />
                <asp:BoundField DataField="BOOK_PUBLISHER" HeaderText="BOOK_PUBLISHER" SortExpression="BOOK_PUBLISHER" />
                <asp:BoundField DataField="BOOK_DATE_OF_PUBLISH" HeaderText="BOOK_DATE_OF_PUBLISH" SortExpression="BOOK_DATE_OF_PUBLISH" />
                <asp:BoundField DataField="BOOK_NUM_OF_COPPIES" HeaderText="BOOK_NUM_OF_COPPIES" SortExpression="BOOK_NUM_OF_COPPIES" />
                <asp:BoundField DataField="BOOK_DATE_OF_ENTER" HeaderText="BOOK_DATE_OF_ENTER" SortExpression="BOOK_DATE_OF_ENTER" />
                <asp:BoundField DataField="BORROWED" HeaderText="BORROWED" SortExpression="BORROWED" />
                <asp:BoundField DataField="BOOK_STATUSE" HeaderText="BOOK_STATUSE" SortExpression="BOOK_STATUSE" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;BOOKS&quot;"></asp:SqlDataSource>
    </div>
        <asp:Label ID="Label1" runat="server" BackColor="#CC6699" BorderColor="#99FFCC" Text="Welcome New Member"></asp:Label>
        <p >
            <asp:Label ID="Label2" runat="server" Text="First Name:            "></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="223px"></asp:TextBox>
        </p>
        <p >
            <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Button" />
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Middle Name:            "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" Width="223px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Last Name:            "></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" Width="223px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Position"></asp:Label>
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Member" />
        </p>
        <p style="height: 0px">
            <asp:Label ID="Label6" runat="server" Text="Email:           "></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" Width="223px"></asp:TextBox>
        </p>
        <p style="height: 0px">
            &nbsp;</p>
        <p style="height: 0px">
            <asp:Label ID="Label7" runat="server" Text="Phone Number"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" Width="223px">+996</asp:TextBox>
        </p>
        <p style="height: 0px">
            &nbsp;</p>
        <p style="height: 0px">
            <asp:Label ID="Label8" runat="server" Text="Date of Birth"></asp:Label>
&nbsp;<asp:ListBox ID="ListBox1" runat="server" Height="24px">
                <asp:ListItem>2000</asp:ListItem>
                <asp:ListItem>1999</asp:ListItem>
                <asp:ListItem>1998</asp:ListItem>
                <asp:ListItem>1997</asp:ListItem>
                <asp:ListItem></asp:ListItem>
            </asp:ListBox>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Gender"></asp:Label>
&nbsp;<asp:RadioButton ID="RadioButton2" runat="server" Text="Male" />
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Female" />
        </p>
        <p>
            <asp:Label ID="Label13" runat="server" Text="Job : "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                <asp:ListItem>Doctor</asp:ListItem>
                <asp:ListItem>Nurse</asp:ListItem>
                <asp:ListItem>Pharmacist</asp:ListItem>
                <asp:ListItem>Laboratorian</asp:ListItem>
                <asp:ListItem>Adminstration Staff</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            <asp:Label ID="Label10" runat="server" Text="Address :"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" Width="467px" Height="22px"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label11" runat="server" Text="Address 2 :"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" Width="467px" Height="22px" style="margin-top: 0px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Label ID="Label12" runat="server" Text="Postal Code :"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" Width="81px" Height="20px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Clear Date" />
        <asp:Button ID="Button3" runat="server" Text="Close" />
        <p>
            <input id="Submit1" type="submit" value="submit" /></p>
        <p>
            &nbsp;</p>
        <table style="width:100%;">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
