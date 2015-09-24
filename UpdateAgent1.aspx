<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="UpdateAgent1.aspx.cs" Inherits="UpdateAgent1" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

    .style20
    {
        height: 36px;
    }
    .style43
    {
        }
    .style28
    {
        width: 283px;
    }
    .style30
    {
            width: 186px;
        }
    .style34
    {
        text-align: center;
    }
    .style23
    {
        height: 23px;
        width: 300px;
    }
    .style29
    {
        height: 23px;
        width: 283px;
    }
    .style31
    {
        height: 23px;
        width: 186px;
    }
    .style21
    {
        height: 23px;
    }
    .style35
    {
        height: 22px;
        width: 300px;
    }
    .style42
    {
        height: 22px;
        }
    .style39
    {
        height: 22px;
        width: 186px;
    }
    .style40
    {
        height: 22px;
    }
        .style44
        {
            width: 302px;
        }
        .style45
        {
            height: 23px;
            width: 302px;
        }
        .style46
        {
            height: 22px;
            width: 302px;
        }
        .style47
        {
            width: 303px;
        }
        .style48
        {
            height: 23px;
            width: 303px;
        }
        .style49
        {
            height: 22px;
            width: 303px;
        }
        .style54
        {
            height: 19px;
        }
        .style55
        {
            width: 302px;
            height: 19px;
        }
        .style56
        {
            height: 19px;
        }
        .style57
        {
            height: 2px;
        }
        .style58
        {
            height: 2px;
            width: 303px;
        }
        .style59
        {
            height: 2px;
            width: 283px;
        }
        .style60
        {
            height: 2px;
            width: 302px;
        }
        .style61
        {
            height: 2px;
            width: 186px;
        }
        .style62
        {
            height: 15px;
        }
        .style63
        {
            width: 302px;
            height: 15px;
        }
        .style64
        {
            height: 12px;
        }
        .style65
        {
            height: 12px;
            width: 303px;
        }
        .style66
        {
            height: 12px;
            width: 283px;
        }
        .style67
        {
            height: 12px;
            width: 302px;
        }
        .style68
        {
            height: 12px;
            width: 186px;
        }
    </style>

    <table style="width: 100%; background-image: url('Images/Agent_img/1045.jpg'); background-repeat: no-repeat; height: 782px;" 
        bgcolor="#999999">
        <tr>
            <td bgcolor="#999999" class="style20" colspan="6" 
            style="font-size: x-large; color: #FFFFFF; text-align: center">
            &nbsp;<asp:Label ID="Label3" runat="server" Text="UpdateAgent"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                <asp:Label ID="lbl_errormsg" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Red"></asp:Label>
            </td>
            <td class="style34" colspan="2">
                <asp:DropDownList ID="ddSearch" runat="server" AutoPostBack="True" 
                    onselectedindexchanged="ddSearch_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
            <td>
                <asp:Button ID="btn_search" runat="server" Text="Search" 
                    onclick="_search_Click1" Font-Bold="True" Font-Size="Medium" Height="34px" 
                    Width="68px" />
            </td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style23">
                &nbsp;</td>
            <td class="style48">
                <asp:Label ID="lbl_name" runat="server" Text="First Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="style29">
                <asp:TextBox ID="txt_name" runat="server" Width="216px"></asp:TextBox>
            </td>
            <td class="style45">
            </td>
            <td class="style31">
                &nbsp;</td>
            <td class="style21">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="lbl_lastname" runat="server" Text="Last Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="style28">
                <asp:TextBox ID="txt_lastname" runat="server" Width="158px"></asp:TextBox>
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="lbl_add" runat="server" Text="Address" Font-Bold="True"></asp:Label>
            </td>
            <td class="style28">
                <asp:TextBox ID="txt_add" runat="server" TextMode="MultiLine" Width="286px"></asp:TextBox>
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="lbl_country" runat="server" Text="Country" Font-Bold="True"></asp:Label>
            </td>
            <td class="style28">
                <asp:TextBox ID="txt_country" runat="server"></asp:TextBox>
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="lbl_ppnum" runat="server" Text="PassPort Number" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style28">
                <asp:TextBox ID="txt_ppnum" runat="server"></asp:TextBox>
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="lbl_telenumber" runat="server" Text="Tele: Number" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style28">
                <asp:TextBox ID="txt_telenum" runat="server"></asp:TextBox>
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="lbl_market" runat="server" Text="Market" Font-Bold="True"></asp:Label>
            </td>
            <td class="style28">
                <asp:TextBox ID="txt_market" runat="server"></asp:TextBox>
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                <asp:Label ID="lbl_faxnum" runat="server" Text="Fax Number" Font-Bold="True"></asp:Label>
            </td>
            <td class="style28">
                <asp:TextBox ID="txt_faxnum" runat="server"></asp:TextBox>
            </td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                &nbsp;</td>
            <td class="style44">
                &nbsp;</td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style43">
                &nbsp;</td>
            <td class="style47">
                &nbsp;</td>
            <td class="style28">
                <asp:Button ID="btn_edit" runat="server" Text="Edit" Width="91px" 
                    Font-Bold="True" onclick="btn_edit_Click" Font-Size="Medium" 
                    Height="30px" />
            </td>
            <td class="style44">
                <asp:Button ID="btn_remove" runat="server" style="margin-left: 0px" 
                Text="Remove" Font-Bold="True" onclick="btn_remove_Click" Font-Size="Medium" 
                    Height="31px" Width="92px" />
            </td>
            <td class="style30">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style64">
                </td>
            <td class="style65">
                </td>
            <td class="style66">
                </td>
            <td class="style67">
                </td>
            <td class="style68">
                </td>
            <td class="style64">
                </td>
        </tr>
        <tr>
            <td class="style57">
                </td>
            <td class="style58">
                </td>
            <td class="style59">
                &nbsp;</td>
            <td class="style60">
                &nbsp;</td>
            <td class="style61">
                </td>
            <td class="style57">
                </td>
        </tr>
        <tr>
            <td class="style57">
                &nbsp;</td>
            <td class="style58">
                &nbsp;</td>
            <td class="style59">
                &nbsp;</td>
            <td class="style60">
                &nbsp;</td>
            <td class="style61">
                &nbsp;</td>
            <td class="style57">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style35" bgcolor="#999999">
            </td>
            <td class="style49" bgcolor="#999999">
                &nbsp;</td>
            <td class="style42" bgcolor="#999999">
                &nbsp;</td>
            <td class="style46" bgcolor="#999999">
                &nbsp;</td>
            <td class="style39" bgcolor="#999999">
                &nbsp;</td>
            <td class="style40" bgcolor="#999999">
                &nbsp;</td>
        </tr>
        <tr>
            <td bgcolor="#999999" colspan="3" class="style62">
            </td>
            <td class="style63" bgcolor="#999999">
                <asp:LinkButton ID="lbadnwag" runat="server" onclick="lbadnwag_Click" 
                    Font-Size="Large" ForeColor="White">Add New Agent</asp:LinkButton>
            </td>
            <td class="style62" bgcolor="#999999" colspan="2">
                <asp:LinkButton ID="lbView" runat="server" onclick="lbView_Click" 
                    Font-Size="Large" ForeColor="White">View </asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td bgcolor="#999999" colspan="3" class="style54">
                &nbsp;</td>
            <td class="style55" bgcolor="#999999">
                &nbsp;</td>
            <td class="style56" bgcolor="#999999" colspan="2">
                &nbsp;</td>
        </tr>
        </table>
</asp:Content>

