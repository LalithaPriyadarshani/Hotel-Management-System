<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="eventHome.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style62
        {
            height: 80px;
        }
        .style63
        {
        }
        .style68
        {
            height: 80px;
            width: 327px;
        }
        .style72
        {
            height: 80px;
            width: 56px;
        }
        .style73
        {
            width: 56px;
        }
        .style74
        {
            height: 80px;
            width: 173px;
        }
        .style76
        {
            height: 80px;
            width: 271px;
        }
        .style77
        {
            width: 271px;
        }
        .style78
        {
            width: 173px;
        }
        .style81
        {
            width: 327px;
        }
        .style82
        {
            width: 327px;
            height: 23px;
        }
        .style83
        {
            width: 327px;
            height: 24px;
        }
    </style>

    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/Event_img/bg_images3.jpg" 
    Height="799px" Width="1048px">
    <table style="width:100%; height: 433px; margin-bottom: 0px;">
        <tr>
            <td class="style72">
                </td>
            <td class="style74">
            </td>
            <td class="style68">
                <br />
                <br />
            </td>
            <td class="style76">
            </td>
            <td class="style62">
            </td>
        </tr>
        <tr>
            <td class="style73" rowspan="20">
                &nbsp;</td>
            <td class="style78" valign="top" rowspan="20">
                &nbsp;</td>
            <td class="style81" valign="top">
                <br />
                <br />
                <asp:Label ID="Label5" runat="server" Font-Bold="True" ForeColor="Black" 
                    Text="Meetings and Events"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style77" valign="top" rowspan="20">
                <asp:Image ID="Image2" runat="server" Height="420px" 
                    ImageUrl="~/Images/Event_img/event1.jpg" Width="269px" />
            </td>
            <td class="style63" rowspan="20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style83" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_mMakeAnEnquiry" runat="server" 
                    NavigateUrl="~/meetingEnquiry.aspx">Make an Enquiry</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style82" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_mCustomerList" runat="server" 
                    NavigateUrl="~/meetingCustomerList.aspx">Customer List</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_mEventList" runat="server" 
                    NavigateUrl="~/meetingList.aspx">View Event List</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style82" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_mSchedule" runat="server" 
                    NavigateUrl="~/meetingSchedule.aspx">Schedule</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style83" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="Black" 
                    Text="Weddings "></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_wMakeAnEnquiry" runat="server" 
                    NavigateUrl="~/weddingEnquiry.aspx">Make an Enquiry</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_wCustomerList" runat="server" 
                    NavigateUrl="~/weddingCustomer.aspx">Customer List</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_viewEventList0" runat="server" 
                    NavigateUrl="~/weddingList.aspx">Event List</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="hl_wSchedule" runat="server" 
                    NavigateUrl="~/weddingSchedule.aspx">Schedule</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style82" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style82" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style81" valign="top">
                &nbsp;</td>
        </tr>
    </table>
</asp:Panel>
</asp:Content>

