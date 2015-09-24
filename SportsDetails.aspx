<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="SportsDetails.aspx.cs" Inherits="SportsDetails" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        * { padding:0;
            margin-top: 0;
            width: -85%;
        }
        .style19
        {
            width: 243px;
        }
        .style38
        {
            height: 20px;
        }
        .style41
        {
            width: 130px;
        }
        .style42
        {
            width: 43px;
        }
        </style>

    <table style="width: 100%; height: 460px; background-image: url('Images/Sport_Images/SportDetails.jpg');">
        <tr>
            <td align="center" valign="middle" class="style26">
                <table style="width: 96%; height: 98px; " 
                    align="center">
                    <tr>
                        <td align="center" class="style28" 
                            valign="middle" colspan="3" height="85%" width="85%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style42" 
                            valign="middle" height="85%">
                            </asp:Table>
                        </td>
                        <td align="center" class="style28" 
                            valign="middle" height="85%" width="85%" style="width: 0%">
                            <asp:Label ID="lblSportName" runat="server" Font-Bold="True" 
                                Font-Names="Trebuchet MS" Font-Size="X-Large"></asp:Label>
                        </td>
                        <td align="center" class="style28" 
                            valign="middle" height="85%" width="85%" style="width: 28%">
                            <asp:Image ID="picone" runat="server" height="200px" Width="400px"/>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style22" colspan="3" valign="middle" height="85%" 
                            width="85%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="style22" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;&nbsp;
                            &nbsp;Sport ID:&nbsp;<asp:Label ID="lblSportID" runat="server" Font-Bold="True" 
                                Font-Names="Calibri" Font-Size="15px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style22" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;&nbsp;&nbsp; Sport Category:<asp:Label ID="lblSportCat" runat="server" 
                                Font-Bold="True" Font-Names="Calibri" Font-Size="15px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style22" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;&nbsp;&nbsp; Minimum Members Per Package: 
                            <asp:Label ID="lblMinMem" 
                                runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="15px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style38" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;&nbsp;&nbsp; Booking Rate: US$ <asp:Label ID="lblFee" runat="server" 
                                Font-Bold="True" Font-Names="Calibri" Font-Size="15px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style22" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;&nbsp;&nbsp;&nbsp;Available Venues:<asp:Label ID="lblVenue" 
                                runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="15px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style38" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;&nbsp;&nbsp; Description:&nbsp;<asp:Label ID="lblDescription" 
                                runat="server" Font-Bold="True" Font-Names="Calibri" Font-Size="15px"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style22" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style42" 
                            valign="middle" height="85%">
                            <dx:ASPxButton ID="btnEdit" runat="server" Font-Bold="True" Font-Size="Small" 
                                onclick="btnEdit_Click" Text="EDIT" Width="153px">
                            </dx:ASPxButton>
                        </td>
                        <td align="center" class="style22" 
                            width="85%" valign="middle">
                            <dx:ASPxButton ID="btnRmv" runat="server" Font-Bold="True" Text="REMOVE" 
                                Width="153px" onclick="btnRmv_Click" AutoPostBack="False" 
                                ClientIDMode="AutoID" >
                                <ClientSideEvents Click="function(s, e) {e.processOnServer=confirm('Are you sure you want to delete?');}" />
                            </dx:ASPxButton>
                        </td>
                        <td align="center" class="style41" 
                            valign="middle">
                            <dx:ASPxButton ID="btnBookNow" runat="server" Font-Bold="True" 
                                onclick="btnBookNow_Click" Text="BOOK NOW" Width="153px">
                            </dx:ASPxButton>
                        </td>
                    </tr>
                    <tr>
                        <td align="center" class="style22" colspan="3" 
                            valign="middle" height="85%" width="85%">
                            &nbsp;</td>
                    </tr>
                    </table>
            </td>
        </tr>
        </table>
</asp:Content>

