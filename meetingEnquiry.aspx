<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="meetingEnquiry.aspx.cs" Inherits="Default3" %><%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style27
        {
        }
        .style30
        {
            width: 421px;
            height: 39px;
        }
        .style31
        {
            width: 200px;
            height: 39px;
        }
        .style32
        {
            width: 468px;
            height: 39px;
        }
        .style44
        {
        }
        .style45
        {
            width: 421px;
            height: 38px;
        }
        .style46
        {
            width: 200px;
            height: 38px;
        }
        .style47
        {
            width: 468px;
            height: 38px;
        }
        .style48
        {
        }
        .style53
        {
            width: 200px;
        }
        .style55
        {
            width: 200px;
            height: 32px;
        }
        .style57
        {
            width: 468px;
            height: 32px;
        }
        .style59
        {
            width: 200px;
            height: 31px;
        }
        .style60
        {
            width: 468px;
            height: 31px;
        }
        .style61
        {
            width: 421px;
            height: 7px;
        }
        .style62
        {
            width: 200px;
            height: 7px;
        }
        .style64
        {
            height: 34px;
        }
        .style67
        {
            width: 421px;
            height: 40px;
        }
        .style68
        {
            width: 200px;
            height: 40px;
        }
        .style69
        {
            width: 468px;
            height: 40px;
        }
        .style79
        {
            width: 421px;
            height: 2px;
        }
        .style80
        {
            width: 200px;
            height: 2px;
        }
        .style81
        {
            height: 2px;
        }
        .style82
        {
            width: 421px;
            height: 8px;
        }
        .style83
        {
            width: 200px;
            height: 8px;
        }
        .style84
        {
            height: 8px;
        }
        .style88
        {
            width: 421px;
        }
        .style89
        {
            width: 421px;
            height: 32px;
        }
        .style90
        {
            width: 421px;
            height: 31px;
        }
        .style91
        {
            width: 421px;
            height: 56px;
        }
        .style92
        {
            width: 200px;
            height: 56px;
        }
        .style93
        {
            width: 468px;
            height: 56px;
        }
        .style94
        {
            width: 468px;
            height: 7px;
        }
    </style>

    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/Event_img/event6.png" 
        Height="712px" Width="971px">
        <table style="width:100%; height: 394px;">
            <tr>
                <td class="style67">
                </td>
                <td class="style68">
                </td>
                <td class="style69">
                </td>
                <td class="style69">
                    &nbsp;</td>
                <td class="style69">
                    &nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style48" colspan="5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="lbl_meetingRequestForm" runat="server" Font-Bold="True" Font-Names="Cambria" 
                        Font-Size="Larger" Text="Meeting Request Form"></asp:Label>
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td class="style88">
                    &nbsp;</td>
                <td class="style53">
                    &nbsp;</td>
                <td class="style27">
                    &nbsp;</td>
                <td class="style27" rowspan="8">
                    <br />
                    <br />
                </td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style45">
                </td>
                <td class="style46">
                    <asp:Label ID="lbHotel" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Hotel"></asp:Label>
                    <br />
                </td>
                <td class="style47">
                    <asp:DropDownList ID="ddlHotel" runat="server" Height="16px" Width="136px">
                    </asp:DropDownList>
                </td>
                <td class="style47">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style30">
                </td>
                <td class="style31">
                    <asp:Label runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Meeting Venue" 
                        ID="lblLocation"></asp:Label>
                </td>
                <td class="style32">
                    <asp:DropDownList ID="ddlLocation" runat="server" Width="136px">
                        <asp:ListItem>Indoor</asp:ListItem>
                        <asp:ListItem>Outdoor</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style32">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style89">
                </td>
                <td class="style55">
                    <asp:Label ID="lblDay" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Date "></asp:Label>
                    <br />
                </td>
                <td class="style57">
                    <dx:ASPxDateEdit ID="deDay" runat="server" Width="185px">
                    </dx:ASPxDateEdit>
                </td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style89">
                    &nbsp;</td>
                <td class="style55">
                    <asp:Label ID="lblTime" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Time"></asp:Label>
                </td>
                <td class="style57">
                    <asp:DropDownList ID="ddlTime" runat="server" Width="185px" AutoPostBack="True" 
                        onselectedindexchanged="ddlTime_SelectedIndexChanged">
                        <asp:ListItem>Morning(7.00am - 12.00pm)</asp:ListItem>
                        <asp:ListItem>Afternoon(12.30pm - 5.00pm)</asp:ListItem>
                        <asp:ListItem>Evening(6.00pm - 10.00pm)</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style57">
                    <br />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style89">
                    &nbsp;</td>
                <td class="style55">
                    <asp:Label ID="ddlVenue" runat="server" Font-Bold="True" 
                        Font-Italic="False" Font-Names="Cambria" Font-Size="Large" 
                        Text="Hall Name"></asp:Label>
                </td>
                <td class="style57">
                    <asp:DropDownList ID="ddl_Venue" runat="server" Height="18px"  Width="136px">
                        
                    </asp:DropDownList>
                    &nbsp;&nbsp;
                    <asp:Label ID="lblAvailabilty" runat="server" ForeColor="Red" 
                        Text="Bookings Full" Visible="False"></asp:Label>
                </td>
                <td class="style57">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style90">
                </td>
                <td class="style59">
                    <asp:Label ID="lblNoOfSeats" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="No.Of. Seats"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtboxNoOfSeats" ErrorMessage=",No.Of.Seats" Font-Names="Cambria" 
                        Font-Size="Large" ForeColor="Red">*</asp:RequiredFieldValidator>
                </td>
                <td class="style60">
                    <asp:TextBox ID="txtboxNoOfSeats" runat="server" Width="136px"></asp:TextBox>
                </td>
                <td class="style60">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style91">
                    </td>
                <td class="style92">
                    <asp:Label ID="lblTableArrangement" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Table Arrangement"></asp:Label>
                </td>
                <td class="style93">
                    <asp:DropDownList ID="ddlTableArrange" runat="server" Height="18px"  Width="136px">
                        
                        <asp:ListItem>Class Room</asp:ListItem>
                        <asp:ListItem>Cocktail</asp:ListItem>
                        <asp:ListItem>Theatre</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style93">
                    </td>
            </tr>
            <tr>
                <td class="style67">
                </td>
                <td class="style68">
                </td>
                <td class="style69">
                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style69" valign="middle">
                </td>
                <td class="style69">
                </td>
            </tr>
            <tr>
                <td class="style61">
                </td>
                <td class="style62">
                    </td>
                <td class="style94">
                    &nbsp;</td>
                <td class="style94" valign="top">
                    
                    <asp:ValidationSummary ID="vsMeeting" runat="server" BackColor="#66CCFF" 
                        DisplayMode="SingleParagraph" Font-Size="Medium" ForeColor="Red" 
                        HeaderText="You must enter a value in the following fields" 
                        Width="273px" />
                </td>
                <td class="style94">
                    </td>
            </tr>
            <tr>
                <td class="style64" colspan="5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lbl_remarks" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Remarks"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style88">
                    &nbsp;</td>
                <td class="style44" colspan="4" rowspan="3" valign="top">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtboxRemarks" runat="server" Height="84px" Width="716px" 
                        TextMode="MultiLine" Font-Italic="True" ForeColor="Gray" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style88">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style88">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style82">
                    </td>
                <td class="style83" width="5px">
                    </td>
                <td class="style84" width="5px">
                    </td>
                <td class="style84" width="5px">
                    </td>
                <td class="style84" width="5px">
                    </td>
            </tr>
            <tr>
                <td class="style79">
                    </td>
                <td class="style80">
                    </td>
                <td class="style81">
                    </td>
                <td class="style81">
                    </td>
                <td class="style81">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="Next &gt;&gt;" Width="100px" BackColor="#6699FF" BorderStyle="None" 
                        Font-Names="Book Antiqua" Font-Size="Large" />
                </td>
            </tr>
            <tr>
                <td class="style88">
                    &nbsp;</td>
                <td class="style53">
                    &nbsp;</td>
                <td class="style27">
                    &nbsp;</td>
                <td class="style27">
                    &nbsp;</td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style88">
                    &nbsp;</td>
                <td class="style53">
                    &nbsp;</td>
                <td class="style27" colspan="2">
                    &nbsp;</td>
                <td class="style27">
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

