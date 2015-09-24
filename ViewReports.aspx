<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="ViewReports.aspx.cs" Inherits="ViewReports" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style26
        {
            height: 535px;
        }
        .style22
        {
            width: 222px;
        }
        .style28
        {
            width: 222px;
            height: 124px;
        }
        .style29
        {
            height: 124px;
        }
        .style30
        {
            width: 128px;
            height: 141px;
        }
        .style31
        {
            width: 222px;
            height: 141px;
        }
        .style32
        {
            height: 141px;
        }
    * { margin:0 0 0 0px; 
padding:0;
}
        .style33
        {
            width: 128px;
            height: 30px;
        }
        .style34
        {
            width: 128px;
            height: 14px;
        }
        .style36
        {
            width: 128px;
            height: 12px;
        }
        .style37
        {
            width: 197px;
            height: 12px;
        }
        .style38
        {
            height: 12px;
        }
        </style>

    <table style="width: 100%; height: 564px; background-image: url('Images/Sport_Images/ViewReports.jpg');">
        <tr>
            <td align="center" valign="middle" class="style26">
                <table style="width: 93%; height: 488px; " 
                    align="center" width="85%">
                    <tr>
                        <td align="center" class="style33" 
                            style="font-size: x-large; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="middle">
                            &nbsp;</td>
                        <td align="left" class="style21" colspan="4" 
                            style="font-size: x-large; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="middle">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; View Reports</td>
                    </tr>
                    <tr>
                        <td class="style33">
                        </td>
                        <td class="style21" colspan="4">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style30" valign="top">
                        </td>
                        <td align="left" class="style31" valign="top">
                            <dx:ASPxButton ID="ASPxButton2" runat="server" Height="150px" Width="150px" 
                                onclick="ASPxButton2_Click">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/Report1.jpg" 
                                    VerticalPosition="top" />
                                <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                        <td align="left" class="style31" valign="top">
                            &nbsp;</td>
                        <td align="left" valign="top" width="30px" class="style32">
                        </td>
                        <td align="left" valign="top" class="style32">
                            <dx:ASPxButton ID="ASPxButton3" runat="server" Height="150px" Width="150px">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/Report2.jpg" 
                                    VerticalPosition="top" />
                                <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style33" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                        </td>
                        <td align="left" class="style22" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;&nbsp; Sport Details</td>
                        <td align="left" class="style22" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;</td>
                        <td align="left" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                        </td>
                        <td align="left" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;Sports-Locations</td>
                    </tr>
                    <tr>
                        <td class="style33">
                        </td>
                        <td class="style22">
                        </td>
                        <td class="style22">
                            &nbsp;</td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style34" valign="top">
                        </td>
                        <td align="left" class="style28" valign="top">
                            <dx:ASPxButton ID="ASPxButton4" runat="server" Height="150px" Width="150px">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/Report3.jpg" 
                                    VerticalPosition="center" />
                                <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                        <td align="left" class="style28" valign="top">
                            &nbsp;</td>
                        <td align="left" class="style29" valign="top">
                        </td>
                        <td align="left" class="style29" valign="top">
                            <dx:ASPxButton ID="ASPxButton5" runat="server" Height="150px" Width="150px">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/Report4.jpg" 
                                    VerticalPosition="center" />
                                <Border BorderColor="Black" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style33" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                        </td>
                        <td align="left" class="style22" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Progresses</td>
                        <td align="left" class="style22" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;</td>
                        <td align="left" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                        </td>
                        <td align="left" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Income&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style36">
                        </td>
                        <td class="style37">
                        </td>
                        <td class="style37">
                            &nbsp;</td>
                        <td class="style38">
                        </td>
                        <td class="style38">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        </table>
</asp:Content>

