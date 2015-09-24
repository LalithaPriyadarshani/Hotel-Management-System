<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="lsroriginaltour1_1.aspx.cs" Inherits="lsroriginaltour1_1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <div>
    </div>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%;">
        <tr>
            <td class="style16" colspan="2">
                <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblmainpackage" runat="server" Font-Bold="True" Font-Size="Larger" 
                        Text="Sub tours"></asp:Label>
                    &nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
            </td>
            <td class="style25">
                    &nbsp;</td>
        </tr>
        <tr>
            <td class="style16" colspan="3">
                <asp:GridView ID="gdvsubpac" runat="server" Height="753px" Width="964px" 
                       
                        onselectedindexchanged="gdvsubpac_SelectedIndexChanged" 
                        AutoGenerateColumns="False" onrowcommand="gdvsubpac_RowCommand" 
                        CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="subPacge_Name" HeaderText="Sub Package Name" />
                        <asp:BoundField DataField="noofdays" HeaderText="No of days" 
                                SortExpression="noofdays" />
                        <asp:BoundField DataField="price" HeaderText="Price " SortExpression="price" />
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
            <td class="style16">
                    &nbsp;</td>
            <td class="style21">
                    &nbsp;</td>
            <td class="style25">
                    &nbsp;</td>
        </tr>
    </table>
</asp:Content>


