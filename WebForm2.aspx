<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="RCMC.WebForm2" %>

<%@ Register assembly="DevExpress.Web.v16.1, Version=16.1.8.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
</body>
    <p>
        <dx:ASPxTabControl ID="ASPxTabControl1" runat="server" ActiveTabIndex="7" EnableTheming="True" TabPosition="Left" Theme="Mulberry">
            <Tabs>
                <dx:Tab Name="Medicine &amp; health" Text="Medicine &amp; health" NavigateUrl="~/Forms/DeleteBook.aspx">
                </dx:Tab>
                <dx:Tab Name="Human Anatomy, Cytology, Histology" Text="Human Anatomy, Cytology, Histology" NavigateUrl="~/Forms/LogIn2.aspx">
                </dx:Tab>
                <dx:Tab Name="Human physiology" Text="Human physiology" NavigateUrl="~/images/books.png">
                </dx:Tab>
                <dx:Tab Name="Personal health &amp; Safety" Text="Personal health &amp; Safety">
                </dx:Tab>
                <dx:Tab Name="Forensic medicine; Incidence of injuries, Wounds, Disease, Public preventive medicine" Text="Forensic medicine; Incidence of injuries, Wounds, Disease, Public preventive medicine">
                </dx:Tab>
                <dx:Tab Name="Pharmacology and Therapeutics" Text="Pharmacology and Therapeutics">
                </dx:Tab>
                <dx:Tab Name="Diseases" Text="Diseases">
                </dx:Tab>
                <dx:Tab Name="Surgery, Regional medicine, Dentistry, Ophthalmology, Otology, Audiology" Text="Surgery, Regional medicine, Dentistry, Ophthalmology, Otology, Audiology">
                </dx:Tab>
                <dx:Tab Name="Gynecology, Obstetrics, Pediatrics, Geriatrics" Text="Gynecology, Obstetrics, Pediatrics, Geriatrics">
                </dx:Tab>
            </Tabs>
            
        </dx:ASPxTabControl>
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <dx:ASPxMenu ID="ASPxMenu1" runat="server">
            <Items>
                <dx:MenuItem Name="mnb" Text="mnb">
                    
                </dx:MenuItem>
                <dx:MenuItem Name="ahr" Text="asp">
                </dx:MenuItem>
                <dx:MenuItem Name="wes" Text="wes">
                </dx:MenuItem>
            </Items>
        </dx:ASPxMenu>
    </p>

    </form>
    

</html>
