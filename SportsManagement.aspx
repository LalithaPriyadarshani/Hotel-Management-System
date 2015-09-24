<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="SportsManagement.aspx.cs" Inherits="SportManagement" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style20
    {}
    .style22
    {
        width: 234px;
    }
        .style31
        {
        }
        .style32
        {
            width: 170px;
        }
    </style>

    <table align="center" style="width: 100%; background-color: #FFFFFF;">
        <tr>
            <td align="center" 
                
                
                style="font-size: x-large; font-weight: bold; font-family: 'Trebuchet MS'; text-decoration: blink; background-color: #FFFFFF;" 
                valign="middle">
                &nbsp;&nbsp;&nbsp; 
                <br />
                WELCOME TO LSR SPORT WORLD !!&nbsp;<br />
            </td>
        </tr>
        <tr>
            <td style="background-color: #FFFFFF">
                <table align="center" style="width: 89%; height: 410px;">
                    <tr>
                        <td class="style20" align="center" valign="top">
                            <table align="center"                              
                                                            
                                
                                style="width: 100%; height: 278px; background-image: url('Images/Sport_Images/SportM1.png');">
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style22">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style22">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        &nbsp;</td>
                                    <td class="style22">
                                        &nbsp;</td>
                                </tr>
                            </table>
                            <table style="width: 100%; height: 96px;">
                                <caption align="top" 
                                    style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif; font-weight: bold">
                                    What LSR offers you. . .&nbsp;</caption>
                                <tr>
                                    <td align="left" 
                                        style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif" 
                                        valign="bottom" class="style32">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                                    <td align="left" 
                                        style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif" valign="top">
                                        <ul>
                                            <li>Scuba Diving and Water Sports</li>
                                            <li>Biking</li>
                                            <li>Adventure Sports</li>
                                            <li>Sport Studing</li>
                                            <li>Camping</li>
                                        </ul>
                                    </td>
                                    <td style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" 
                                        style="font-family: 'Trebuchet MS', Arial, Helvetica, sans-serif" 
                                        valign="bottom" class="style31" colspan="3">
                                        <asp:HyperLink ID="HL_AddSp" runat="server" Font-Size="Small" 
                                            Font-Underline="True" ForeColor="#0033CC" NavigateUrl="~/AddNewSportsForm.aspx">Add Sport</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="HP_SearchSp" runat="server" Font-Size="Small" 
                                            Font-Underline="True" ForeColor="Blue" NavigateUrl="~/SearchSports.aspx">Search Sport</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="Small" 
                                            Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ViewSportsCategory.aspx">View/Book Sport</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="Small" 
                                            Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ViewSportsCategory.aspx">Edit/ Remove Sport</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="Small" 
                                            Font-Underline="True" ForeColor="Blue" NavigateUrl="~/ViewReports.aspx">View Reports</asp:HyperLink>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        </table>
</asp:Content>

