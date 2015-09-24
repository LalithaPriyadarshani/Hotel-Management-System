<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="Search_Customer2.aspx.cs" Inherits="Search_Customer2" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style18
        {
        }
        .style26
        {
            width: 191px;
        }
        .style30
        {
            width: 191px;
        }
        .style31
        {
            width: 205px;
            height: 57px;
            margin-bottom: 0px;
        }
        .style33
        {
            height: 57px;
            width: 191px;
        }
        .style34
        {
            height: 57px;
        }
        .style35
        {
            height: 57px;
            margin-bottom: 0px;
        }
        .style36
        {
            width: 269px;
        }
        .style37
        {
            width: 141px;
        }
        .style38
        {
            height: 373px;
        }
        </style>

    <div style="height: 1027px; background-image: url('Images/SearchCustomer03.jpg'); background-repeat: no-repeat;">
        <table style="width: 100%; height: 393px;">
            <tr>
                <td class="style31">
                    &nbsp;</td>
                <td class="style35" colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Text="Search Customer "></asp:Label>
                    </td>
                <td class="style33">
                    </td>
                <td class="style34">
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td class="style36">
                    </td>
                <td class="style37">
                    </td>
                <td class="style30">
                    </td>
                <td>
                    </td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Label ID="Label6" runat="server" Font-Bold="True" 
                        Text="Search By Customer ID"></asp:Label>
                </td>
                <td class="style36">
                    &nbsp;&nbsp;<asp:DropDownList ID="ddCustomerID" runat="server" 
                        onselectedindexchanged="ddCustomerID_SelectedIndexChanged" 
                        AutoPostBack="True">
                    </asp:DropDownList>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style37">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Text="Search By Name"></asp:Label>
                </td>
                <td class="style26">
                    <asp:TextBox ID="TxtName" runat="server" Width="290px"></asp:TextBox>
                </td>
                <td>
                    <asp:Button ID="Button3" runat="server" Text="Search" onclick="Button3_Click" />
                </td>
            </tr>
            <tr>
                <td class="style38" colspan="5">
                    <asp:GridView ID="gvCustomerDetails" runat="server" AllowPaging="True" CellPadding="4" 
                        ForeColor="#333333" GridLines="None" Height="309px" Width="955px" 
                        onrowcommand="gvCustomerDetails_RowCommand" 
                        onselectedindexchanged="gvCustomerDetails_SelectedIndexChanged" 
                        onpageindexchanging="gvCustomerDetails_PageIndexChanging">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style18" colspan="5">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="BtnEdit" runat="server" onclick="BtnEdit_Click" Text="Edit" 
                        Width="131px" />
                    </td>
            </tr>
            </table>
        <table style="width:100%;">
            <tr>
                <td bgcolor="#CCCCCC">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width:100%; height: 485px;">
            <tr>
                <td bgcolor="White">
                        &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

