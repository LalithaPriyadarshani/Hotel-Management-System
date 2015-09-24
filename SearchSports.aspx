<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="SearchSports.aspx.cs" Inherits="ViewDetails" %><%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style19
        {
            width: 240px;
        }
    * { margin:0 0 0 0px; 
padding:0;
}
        .style40
    {
        width: 48%;
    }
        </style>

<asp:UpdatePanel ID="updatePanel" runat="server">
                    <ContentTemplate>
    <table style="width: 100%; height: 371px; background-image: url('Images/Sport_Images/SreachSport1.png');">
        <caption>
        </caption>
        <tr>
            <td align="center" class="style12" colspan="2" 
                style="font-weight: bold; font-size: x-large; font-family: 'Trebuchet MS';" 
                valign="middle" width="85%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" class="style12" colspan="2" 
                style="font-weight: bold; font-size: x-large; font-family: 'Trebuchet MS';" 
                valign="middle" width="85%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;SEARCH SPORT</td>
        </tr>
        <tr>
            <td align="center" class="style40" 
                style="font-weight: bold; font-size: medium; font-family: 'Trebuchet MS'" 
                valign="middle">
                <asp:DropDownList ID="cmbSportsCat" runat="server" AutoPostBack="true" 
                    onselectedindexchanged="cmbSportsCat_SelectedIndexChanged" 
                    Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                    <asp:ListItem>Water Sports</asp:ListItem>
                    <asp:ListItem>Adventure</asp:ListItem>
                    <asp:ListItem>Cycling</asp:ListItem>
                    <asp:ListItem>Camping</asp:ListItem>
                    <asp:ListItem>Other</asp:ListItem>
                </asp:DropDownList>
                Select Sport Category<br />
            </td>
            <td align="center" class="style49" 
                style="font-weight: bold; font-size: medium; font-family: 'Trebuchet MS'" 
                valign="middle" width="85%">
                <asp:DropDownList ID="cmbSportName" runat="server" AutoPostBack="true" 
                    Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                </asp:DropDownList>
                Select Sport Name</td>
        </tr>
        <tr>
            <td align="center" class="style12" colspan="2" valign="middle" width="85%">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <dx:ASPxButton ID="btnSearchSelectedSport" runat="server" Font-Bold="True" 
                    Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Medium" 
                    onclick="btnSearchSelectedSport_Click" Text="SEARCH" Width="153px">
                </dx:ASPxButton>
                &nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        </table>
                        </td>
                        </tr>
                        </table>
              </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

