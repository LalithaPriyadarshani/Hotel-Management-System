<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="ViewSportsCategory.aspx.cs" Inherits="ViewSportCategory" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style19
        {
            width: 259px;
        }
        .style20
        {
            width: 22px;
        }
        .style21
        {
        }
        .style22
        {
            width: 222px;
        }
        .style23
        {
            width: 110px;
        }
        .style24
        {
            width: 259px;
            height: 702px;
        }
        .style25
        {
            width: 22px;
            height: 702px;
        }
        .style26
        {
            height: 702px;
        }
        .style27
        {
            width: 110px;
            height: 124px;
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
            width: 85px;
            height: 12px;
        }
        .style31
        {
            width: 222px;
            height: 12px;
        }
        .style32
        {
            height: 12px;
        }
        .style33
        {
            width: 85px;
            height: 6px;
        }
        .style34
        {
            width: 222px;
            height: 6px;
        }
        .style35
        {
            height: 6px;
        }
        .style36
        {
            width: 85px;
            height: 122px;
        }
        .style37
        {
            width: 222px;
            height: 122px;
        }
        .style38
        {
            height: 122px;
        }
        .style39
        {
            width: 85px;
            height: 97px;
        }
        .style40
        {
            width: 222px;
            height: 97px;
        }
        .style41
        {
            height: 97px;
        }
    * { padding:0;
            margin-left: 0px;
            margin-right: 0;
            margin-top: 0;
        }
        .style42
        {
            height: 30px;
        }
        .style43
        {
            width: 85px;
            height: 14px;
        }
        .style44
        {
            width: 234px;
            height: 30px;
        }
        </style>

    <table style="width: 100%; height: 719px; background-image: url('Images/Sport_Images/ViewCategory.jpg');">
        <tr>
            <td align="center" valign="middle" class="style26">
                <table style="width: 93%; height: 665px; " 
                    width="85%">
                    <tr>
                        <td align="center" class="style42" 
                            style="font-size: x-large; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="middle" colspan="5">
                            What LSR Offers You. . .</td>
                    </tr>
                    <tr>
                        <td class="style42">
                            </td>
                        <td class="style21" colspan="4">
                            </td>
                    </tr>
                    <tr>
                        <td align="left" class="style39" valign="top">
                            </td>
                        <td align="left" class="style40" valign="top">
                            <dx:ASPxButton ID="btnWaterSports" runat="server" Height="150px" Width="150px" 
                                onclick="btnWaterSports_Click">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/WaterSportMain.png" 
                                    VerticalPosition="top" />
                                <Border BorderColor="White" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                        <td align="left" class="style40" valign="top">
                            &nbsp;</td>
                        <td align="left" valign="top" width="30px" class="style41">
                            </td>
                        <td align="left" valign="top" class="style41">
                            <dx:ASPxButton ID="btnCycling" runat="server" Height="150px" Width="150px" 
                                onclick="btnCycling_Click">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/Cycling.png" 
                                    VerticalPosition="top" />
                                <Border BorderColor="White" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style42" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            </td>
                        <td align="left" class="style22" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Water Sports</td>
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Cycling</td>
                    </tr>
                    <tr>
                        <td align="left" class="style36" valign="top">
                            </td>
                        <td align="left" class="style37" valign="top">
                            <dx:ASPxButton ID="btnAdventure" runat="server" Height="150px" Width="150px" 
                                onclick="btnAdventure_Click">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/Adventure.jpg" 
                                    VerticalPosition="center" />
                                <Border BorderColor="White" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                        <td align="left" class="style37" valign="top">
                            &nbsp;</td>
                        <td align="left" class="style38" valign="top">
                            </td>
                        <td align="left" class="style38" valign="top">
                            <dx:ASPxButton ID="btnCamping" runat="server" Height="150px" Width="150px" 
                                onclick="btnCamping_Click">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/Camping.png" 
                                    VerticalPosition="center" />
                                <Border BorderColor="White" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style33" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            </td>
                        <td align="left" class="style34" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Adventure</td>
                        <td align="left" class="style34" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;</td>
                        <td align="left" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            class="style35" valign="top">
                            </td>
                        <td align="left" 
                            style="font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'" 
                            class="style35" valign="top">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Camping</td>
                    </tr>
                    <tr>
                        <td align="left" class="style43" valign="top">
                            </td>
                        <td align="left" class="style28" valign="top">
                            <dx:ASPxButton ID="ASPxButton6" runat="server" Height="150px" Width="150px" 
                                onclick="ASPxButton6_Click">
                                <BackgroundImage ImageUrl="~/Images/Sport_Images/OtherSportCategory.jpg" />
                                <Border BorderColor="White" BorderStyle="Solid" BorderWidth="3px" />
                            </dx:ASPxButton>
                        </td>
                        <td align="left" class="style28" valign="top">
                            &nbsp;</td>
                        <td align="left" class="style29" valign="top">
                            </td>
                        <td align="left" class="style29" valign="top">
                            </td>
                    </tr>
                    <tr>
                        <td align="left" class="style30" 
                            style="font-weight: bold; font-size: medium; font-family: 'Trebuchet MS'" 
                            valign="top">
                            </td>
                        <td align="left" class="style31" 
                            style="font-weight: bold; font-size: medium; font-family: 'Trebuchet MS'" 
                            valign="top">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other</td>
                        <td align="left" class="style31" 
                            style="font-weight: bold; font-size: medium; font-family: 'Trebuchet MS'" 
                            valign="top">
                            &nbsp;</td>
                        <td align="left" 
                            style="font-weight: bold; font-size: medium; font-family: 'Trebuchet MS'" 
                            class="style32" valign="top">
                            </td>
                        <td align="left" 
                            style="font-weight: bold; font-size: medium; font-family: 'Trebuchet MS'" 
                            class="style32" valign="top">
                            </td>
                    </tr>
                    </table>
            </td>
        </tr>
        </table>
</asp:Content>

