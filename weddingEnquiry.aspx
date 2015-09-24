<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="weddingEnquiry.aspx.cs" Inherits="meetingEnqiruy2" %><%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">

        .style68
        {
            width: 197px;
            height: 40px;
        }
        .style69
        {
            width: 233px;
            height: 40px;
        }
        .style46
        {
            width: 197px;
            height: 38px;
        }
        .style47
        {
            width: 233px;
            height: 38px;
        }
        .style31
        {
            width: 197px;
            height: 39px;
        }
        .style32
        {
            width: 233px;
            height: 39px;
        }
        .style114
        {
            width: 152px;
            height: 40px;
        }
        .style116
        {
            width: 152px;
            height: 38px;
        }
        .style117
        {
            width: 152px;
            height: 39px;
        }
        .style169
        {
            width: 197px;
            height: 45px;
        }
        .style171
        {
            width: 152px;
            height: 45px;
        }
        .style172
        {
            width: 233px;
            height: 45px;
        }
        .style188
        {
            width: 197px;
            height: 32px;
        }
        .style189
        {
            height: 31px;
        }
        .style220
    {
        width: 76px;
        height: 40px;
    }
    .style223
    {
        width: 76px;
        height: 39px;
    }
    .style227
    {
        width: 76px;
        height: 45px;
    }
    .style241
    {
        height: 30px;
    }
    .style247
    {
        width: 233px;
        height: 14px;
    }
    .style248
    {
        width: 233px;
        height: 32px;
    }
    .style249
    {
        width: 233px;
        height: 31px;
    }
    .style257
    {
        width: 152px;
        height: 14px;
    }
    .style258
    {
        width: 152px;
        height: 32px;
    }
    .style259
    {
        width: 152px;
        height: 31px;
    }
    .style267
    {
        width: 76px;
        height: 9px;
    }
    .style268
    {
        width: 197px;
        height: 9px;
    }
    .style270
    {
        width: 152px;
        height: 9px;
    }
    .style271
    {
        width: 233px;
        height: 9px;
    }
    .style272
    {
        width: 188px;
        height: 30px;
    }
    .style277
    {
        height: 14px;
    }
    .style286
    {
        height: 38px;
    }
    .style292
    {
        width: 76px;
        height: 34px;
    }
    .style293
    {
        width: 197px;
        height: 34px;
    }
    .style295
    {
        width: 152px;
        height: 34px;
    }
    .style296
    {
        width: 233px;
        height: 34px;
    }
        .style297
        {
            width: 76px;
        }
        .style298
        {
            width: 76px;
            height: 32px;
        }
        .style299
        {
            width: 76px;
            height: 31px;
        }
        .style300
        {
            height: 14px;
            width: 76px;
        }
        .style301
        {
            width: 76px;
            height: 38px;
        }
        .style302
        {
            width: 136px;
            height: 14px;
        }
        .style305
        {
            width: 136px;
            height: 31px;
        }
        .style306
        {
            width: 136px;
            height: 40px;
        }
        .style307
        {
            width: 136px;
            height: 38px;
        }
        .style308
        {
            width: 136px;
            height: 39px;
        }
        .style309
        {
            width: 136px;
            height: 32px;
        }
        .style310
        {
            width: 136px;
            height: 34px;
        }
        .style311
        {
            width: 136px;
            height: 9px;
        }
        .style312
        {
            width: 136px;
            height: 45px;
        }
    </style>

    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/Event_img/edited3.png" 
        Height="757px" Width="1007px">
    <table style="width:99%; height: 394px;">
        <tr>
            <td class="style220">
            </td>
            <td class="style68">
            </td>
            <td class="style306" colspan="2">
            </td>
            <td class="style114">
                    &nbsp;</td>
            <td class="style69">
                    &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style48" colspan="6">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMeetingRequestForm" runat="server" Font-Bold="True" Font-Names="Cambria" 
                        Font-Size="Larger" Text="Wedding Request Form"></asp:Label>
                    &nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style297">
                    &nbsp;</td>
            <td class="style22">
                    &nbsp;</td>
            <td class="style302" colspan="2">
                    &nbsp;</td>
            <td class="style257">
                    &nbsp;</td>
            <td class="style247">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style301">
            </td>
            <td class="style46">
                <asp:Label ID="lblHotel" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Hotel"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="ddlHotel" ErrorMessage="Hotel Name" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="style307" colspan="2">
                <asp:DropDownList ID="ddlHotel" runat="server" Height="22px" Width="128px" 
                    AutoPostBack="True">
                    <asp:ListItem>Please Select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style116" valign="top">
                <asp:Label ID="lblSalutation" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Salutation"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="ddlSalutation" ErrorMessage=",Salutation" 
                    Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style47">
                <asp:DropDownList ID="ddlSalutation" runat="server">
                    <asp:ListItem>Mr</asp:ListItem>
                    <asp:ListItem>Mrs</asp:ListItem>
                    <asp:ListItem>Miss</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style223">
            </td>
            <td class="style31">
                <asp:Label runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Location " 
                        ID="lblLocation"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="ddlLocation" ErrorMessage="Location" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style308" colspan="2">
                <asp:DropDownList ID="ddlLocation" runat="server" Height="22px" 
                    Width="129px" AutoPostBack="True" 
                    onselectedindexchanged="ddl_InOutVenue_SelectedIndexChanged">
                    <asp:ListItem>indoor</asp:ListItem>
                    <asp:ListItem>outDoor</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style117" valign="top">
                <asp:Label ID="lblFirstName" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="First Name"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="txtboxFirstName" ErrorMessage=",First Name" 
                    Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style32">
                <asp:TextBox ID="txtboxFirstName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style298">
            </td>
            <td class="style188">
                <asp:Label ID="lblDay" runat="server" Font-Bold="True" 
                    Font-Italic="False" Font-Names="Cambria" Font-Size="Large" Text="Day"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="deDay" ErrorMessage="Day" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="style309" colspan="2">
                <dx:ASPxDateEdit ID="deDay" runat="server" Date="2013-09-21" Height="22px">
                </dx:ASPxDateEdit>
            </td>
            <td class="style258" valign="top">
                <asp:Label ID="lblLastName" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Last Name"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                    ControlToValidate="txtboxLastName" ErrorMessage=",Last Name" 
                    Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style248">
                <asp:TextBox ID="txtboxLastName" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style298">
                    &nbsp;</td>
            <td class="style188">
                <asp:Label ID="lblTime" runat="server" Font-Bold="True" 
                    Font-Italic="False" Font-Names="Cambria" Font-Size="Large" Text="Time "></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="ddlTime" ErrorMessage="Time" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style309" colspan="2">
                    <asp:DropDownList ID="ddlTime" runat="server" AutoPostBack="True" 
                        Height="22px" onselectedindexchanged="ddl_InOutVenue_SelectedIndexChanged" 
                        Width="170px">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Morning(8.00 am - 4.00 pm)</asp:ListItem>
                        <asp:ListItem>Evening(4.30 pm - 11.00 pm)</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td class="style258" valign="top">
                <asp:Label ID="lblNationality" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Nationality"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                    ControlToValidate="txtboxNationality" ErrorMessage=",Nationality" 
                    Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style248">
                <asp:TextBox ID="txtboxNationality" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style299">
            </td>
            <td class="style189">
                <asp:Label ID="lblVenue" runat="server" Font-Bold="True" Font-Italic="False" 
                    Font-Names="Cambria" Font-Size="Large">Venue</asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="ddlVenue" ErrorMessage="Venue" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style305" colspan="2">
                <asp:DropDownList ID="ddlVenue" runat="server" Height="22px" Width="126px">
                </asp:DropDownList>
                &nbsp;<asp:Label ID="lblAvailabilty" runat="server" ForeColor="Red" Visible="False">Bookings Full.</asp:Label>
            </td>
            <td class="style259" valign="top">
                <asp:Label ID="lblAddress" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Address"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                    ControlToValidate="txtboxAddress" ErrorMessage=",Address" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style249">
                <asp:TextBox ID="txtboxAddress" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style299">
                    &nbsp;</td>
            <td class="style189">
                <asp:Label ID="lblNoOfSeats" runat="server" Font-Bold="True" 
                    Font-Italic="False" Font-Names="Cambria" Font-Size="Large" 
                    Text="No.Of.Seats"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="txtboxNoOfSeats" ErrorMessage="No Of Seats" 
                    Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style305" colspan="2">
                <asp:TextBox ID="txtboxNoOfSeats" runat="server"></asp:TextBox>
            </td>
            <td class="style259" valign="middle">
                <asp:Label ID="lblCountry" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Country"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" 
                    ControlToValidate="txtboxCountry" ErrorMessage=",Country" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style249">
                <asp:TextBox ID="txtboxCountry" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style301">
            </td>
            <td class="style286">
                    <asp:Label ID="lblThemeColor" runat="server" Font-Bold="True" 
                        Font-Italic="False" Font-Names="Cambria" Font-Size="Large" 
                        Text="Theme Colour"></asp:Label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="ddlThemeColour" ErrorMessage="Theme Colour" 
                        Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style307" colspan="2">
                    <asp:DropDownList ID="ddlThemeColour" runat="server" Height="22px" 
                        Width="126px">
                        <asp:ListItem>Please Select</asp:ListItem>
                        <asp:ListItem>Red</asp:ListItem>
                        <asp:ListItem>Gold</asp:ListItem>
                        <asp:ListItem>Purple</asp:ListItem>
                        <asp:ListItem>Sky Blue</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                    </asp:DropDownList>
            </td>
            <td class="style116" valign="top">
                <asp:Label ID="lblTelephone" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Telephone"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" 
                    ControlToValidate="txtboxTelephone" ErrorMessage=",Telephone" 
                    Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style47">
                <asp:TextBox ID="txtboxTelephone" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style292">
            </td>
            <td class="style293" valign="top">
                <asp:Label ID="lblDecoration" runat="server" Font-Bold="True" 
                    Font-Italic="False" Font-Names="Cambria" Font-Size="Large" Text="Decoration"></asp:Label>
                <br />
            </td>
            <td class="style310" valign="top" colspan="2">
                    &nbsp;&nbsp;<asp:RadioButton ID="rbDecoYes" runat="server" GroupName="rbDeco" 
                        Text="Yes" />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:RadioButton ID="rbDecoNo" runat="server" GroupName="rbDeco" Text="No" />
            </td>
            <td class="style295" valign="top">
                <asp:Label ID="lblEmail" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Email"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" 
                    ControlToValidate="txtboxEmail" ErrorMessage=",Email" Font-Names="Cambria" 
                    Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
                <br />
            </td>
            <td class="style296">
                <asp:TextBox ID="txtboxEmail" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style300">
            </td>
            <td class="style277">
            </td>
            <td class="style302" colspan="2">
                </td>
            <td class="style257">
                <asp:Label ID="lblPassortNIC" runat="server" Font-Bold="True" 
                        Font-Italic="False" Font-Names="Cambria" Font-Size="Large" 
                    Text="Passort/NIC"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" 
                    ControlToValidate="txtboxPassortNIC" ErrorMessage=",Passort/NIC" 
                    Font-Names="Cambria" Font-Size="Larger" ForeColor="Red">*</asp:RequiredFieldValidator>
            </td>
            <td class="style247">
                <asp:TextBox ID="txtboxPassortNIC" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style272" colspan="3">
                &nbsp;</td>
            <td class="style241" colspan="3">
                <asp:ValidationSummary ID="vsWedding" runat="server" BackColor="#FFFFCC" 
                    DisplayMode="SingleParagraph" Font-Size="Medium" ForeColor="Red" 
                    HeaderText="You must enter a value in the following fields" 
                    style="margin-left: 0px" Width="324px" />
            </td>
        </tr>
        <tr>
            <td class="style297">
                    &nbsp;</td>
            <td class="style22">
                    &nbsp;<asp:Label ID="lblRemarks" runat="server" Font-Bold="True" Font-Italic="False" 
                        Font-Names="Cambria" Font-Size="Large" Text="Remarks"></asp:Label>
            </td>
            <td class="style302" colspan="2">
                    &nbsp;</td>
            <td class="style257">
                    &nbsp;</td>
            <td class="style247">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style297">
                    &nbsp;</td>
            <td class="style44" colspan="5" rowspan="3" valign="top">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtboxRemarks" runat="server" Height="84px" Width="716px" 
                        TextMode="MultiLine" Font-Italic="True" ForeColor="#666666" >Mention your  any additional here...</asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style297">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style297">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style267">
                    </td>
            <td class="style268">
                    </td>
            <td class="style311" colspan="2">
                    </td>
            <td class="style270">
                    </td>
            <td class="style271">
                    </td>
        </tr>
        <tr>
            <td class="style227">
                    </td>
            <td class="style169">
                    </td>
            <td class="style312" colspan="2">
                    </td>
            <td class="style171">
                    </td>
            <td class="style172">
                <asp:Button ID="btnSubmit" runat="server"  
                        Text="Submit &gt;&gt;" Width="110px" BackColor="#FFFF66" 
                    onclick="btn_submit_Click" BorderColor="#FFFF66" Font-Bold="True" 
                    Font-Names="Book Antiqua" Font-Size="Large" style="margin-left: 0px" 
                    Height="36px" />
            </td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

