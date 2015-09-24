<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="lsroriginaltour2.aspx.cs" Inherits="lsroriginaltour2" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<asp:Image id="picone" runat="server" />
    <style type="text/css">
        .style16
        {
        }
        .style18
        {
            width: 634px;
        }
    </style>

    <p>
        <br />
        <table style="width:100%;">
            <tr>
                <td class="style18">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" 
                        Text="Main    Tours "></asp:Label>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" colspan="2">
                    <asp:GridView ID="gdvmain_pac" runat="server" Height="565px" Width="957px" 
                        AutoGenerateColumns="False" AllowPaging="True" AllowSorting="True" 
                        onpageindexchanging="gdvmain_pac_PageIndexChanging" 
                        onselectedindexchanged="gdvmain_pac_SelectedIndexChanged" 
                        onrowcommand="gdvmain_pac_RowCommand" CellPadding="4" ForeColor="#333333" 
                        GridLines="None" 
                        onselectedindexchanging="gdvmain_pac_SelectedIndexChanging" PageSize="5">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="name" HeaderText="Main package name " 
                                SortExpression="name" />
                            <asp:BoundField DataField="description" HeaderText="Description " 
                                SortExpression="description" />
                            <asp:ImageField DataImageUrlField="image_main" HeaderText="Image" 
                                SortExpression="image_main">
                                <ControlStyle Height ="200px" Width="200px" />
                            </asp:ImageField>
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle ForeColor="#333333" BackColor="#F7F6F3" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            </table>
    </p>
</asp:Content>

