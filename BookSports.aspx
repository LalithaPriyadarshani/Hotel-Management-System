<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="BookSports.aspx.cs" Inherits="BookSport" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style type="text/css">
        * { padding:0;
            margin-right: 0;
            margin-top: 0;
            margin-bottom: 0;
        }
        .style19
        {
            width: 243px;
        }
        .style37
        {
            width: 660px;
        }
        .style26
        {
            width: 195px;
        }
        .style43
        {
            width: 1146px;
            height: 40px;
        }
        .style45
        {
            height: 40px;
        }
        .style34
        {
            width: 60px;
        }
        .style46
        {
            width: 112px;
        }
        .style47
        {
            width: 711px;
        }
        .style49
        {
            width: 1336px;
        }
        .style50
        {
            height: 40px;
            width: 1336px;
        }
        .style51
        {
            width: 1195px;
            height: 49px;
        }
        .style52
        {
            width: 1195px;
            height: 40px;
        }
        .style53
        {
            height: 49px;
        }
    </style>

<asp:UpdatePanel ID="updatePanel" runat="server">
    <ContentTemplate>
    <table style="width: 100%; height: 590px; background-image: url('Images/Sport_Images/BookSportForm.png');" 
            align="center">
        <tr>
            <td align="center" valign="middle" class="style37">
                <table style="width: 145%; height: 100%; " align="center">
                    <tr>
                        <td align="left" class="style47" style="padding-top: 0px; padding-bottom: 0px" 
                            width="100%">
                            <table style="width: 133%; height: 373px;" align="center">
                                <tr>
                                    <td align="left" class="style51" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style53" colspan="4" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS'; font-size: x-large;" 
                                        valign="top">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style53" colspan="4" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS'; font-size: x-large;" 
                                        valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; BOOK SPORT</td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td align="center" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        Sport&nbsp;&nbsp;Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td align="left" class="style49" style="font-weight: bold" valign="top">
                                        <br />
                                        :</td>
                                    <td align="left" class="style27" colspan="2" valign="middle" width="75%">
                                        <asp:Label ID="lblSportName" runat="server" Font-Bold="True" 
                                            Font-Names="Trebuchet MS" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                    </td>
                                    <td align="left" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rate(Per one Pkg , one Trial)&nbsp;&nbsp;US$&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    </td>
                                    <td align="left" class="style49" style="font-weight: bold" valign="top">
                                        :&nbsp;&nbsp;&nbsp; </td>
                                    <td align="left" class="style27" colspan="2" valign="top" width="75%">
                                        <asp:Label ID="lblRate" runat="server" Font-Bold="True" 
                                            Font-Names="Trebuchet MS" Font-Size="Small"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; No of Members</td>
                                    <td align="left" class="style49" style="font-weight: bold" valign="top">
                                        :</td>
                                    <td align="left" class="style27" colspan="2" valign="top" width="75%">
                                        <asp:DropDownList ID="cmbNumberOfMem" runat="server" Height="20px" 
                                            Width="171px" onselectedindexchanged="cmbNumberOfMem_SelectedIndexChanged" 
                                            Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sport Venue</td>
                                    <td align="left" class="style49" style="font-weight: bold" valign="top">
                                        :</td>
                                    <td align="left" class="style27" colspan="2" valign="top" width="75%">
                                        <asp:DropDownList ID="cmbSportVenue" runat="server" Height="25px" Width="166px" 
                                            Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Start Date</td>
                                    <td align="left" class="style50" style="font-weight: bold" valign="top">
                            :</td>
                                    <td align="left" class="style45" colspan="2" valign="top" width="75%">
                                                <dx:ASPxDateEdit ID="dtpStartDate" runat="server" EditFormat="DateTime" 
                                                    Height="22px" Width="175px">
                                                    <ValidationSettings CausesValidation="True">
                                                        <RequiredField ErrorText="Please select an end date" IsRequired="True" />
                                                    </ValidationSettings>
                                                </dx:ASPxDateEdit>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style52" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style43" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; End Date</td>
                                    <td align="left" class="style50" style="font-weight: bold" valign="top">
                            :</td>
                                    <td align="left" class="style45" colspan="2" valign="top" width="75%">
                                                <dx:ASPxDateEdit ID="dtpEndDate" runat="server" EditFormat="DateTime" 
                                                    Height="20px" Width="175px">
                                                    <ValidationSettings CausesValidation="True">
                                                        <RequiredField ErrorText="Please select an end date" IsRequired="True" />
                                                    </ValidationSettings>
                                                </dx:ASPxDateEdit>
                                    </td>
                                </tr>
                                
                                    <tr>
                                        <td align="center" class="style51" 
                                style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                            &nbsp;</td>
                                        <td align="center" class="style53" 
                                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                            <dx:ASPxButton ID="btnViewAmt" runat="server" Font-Bold="True" 
                                                Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Medium" 
                                                onclick="btnViewAmt_Click" Text="VIEW AMOUNT" Width="153px">
                                            </dx:ASPxButton>
                                        </td>
                                        <td align="left" class="style49" style="font-weight: bold" valign="top">
                                            :</td>
                                        <td align="left" class="style30" colspan="2" valign="top" width="75%">
                                            <dx:ASPxTextBox ID="txtAmount" runat="server" Width="170px" Enabled="False" 
                                                Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                            </dx:ASPxTextBox>
                                        </td>
                                    </tr>
                                <tr>
                                    <td align="center" class="style51" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="center" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        <dx:ASPxButton ID="btnCheckAvail" runat="server" Font-Bold="True" 
                                            Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Medium" 
                                            onclick="btnCheckAvail_Click" Text="CHECK AVAILABILITY" Width="153px">
                                        </dx:ASPxButton>
                                    </td>
                                    <td align="left" class="style49" style="font-weight: bold" valign="top">
                                        :</td>
                                    <td align="left" class="style30" colspan="2" valign="top" width="75%">
                                        <dx:ASPxTextBox ID="txtAvail" runat="server" Width="173px" Height="21px" 
                                            Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                            style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style49" style="font-weight: bold" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style34" valign="middle">
                                        <dx:ASPxButton ID="btnBookNow" runat="server" Font-Bold="True" 
                                Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Medium" 
                                Text="BOOK NOW" Width="115px" onclick="btnBookNow_Click">
                                        </dx:ASPxButton>
                                    </td>
                                    <td align="right" class="style46" width="75%">
                                        <dx:ASPxButton ID="btnCancel" runat="server" Font-Bold="True" 
                                Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Medium" 
                                Text="CANCEL">
                                        </dx:ASPxButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style51" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style53" 
                                        style="font-weight: bold; font-family: 'Trebuchet MS';" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style49" style="font-weight: bold" valign="top">
                                        &nbsp;</td>
                                    <td align="left" class="style34" valign="middle">
                                        &nbsp;</td>
                                    <td align="right" class="style46" width="75%">
                                        &nbsp;</td>
                                </tr>
                                </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

