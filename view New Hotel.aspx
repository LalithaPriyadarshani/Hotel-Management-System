<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="view New Hotel.aspx.cs" Inherits="view_New_Hotel" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style20
        {
            height: 98px;
        }
        .style21
        {
            height: 84px;
        }
        .style22
        {
            width: 334px;
            height: 84px;
        }
        .style28
        {
        }
        .style29
        {
            width: 99px;
            height: 68px;
        }
        .style30
        {
            width: 334px;
            height: 68px;
        }
        .style32
        {
            height: 167px;
        }
        .style36
        {
            height: 208px;
        }
        .style40
        {
            width: 239px;
            height: 158px;
        }
        .style41
        {
            width: 99px;
            height: 158px;
        }
        .style48
        {
            height: 41px;
        }
        .style59
        {
            width: 239px;
            height: 90px;
        }
        .style61
        {
            height: 90px;
        }
        .style64
        {
            height: 158px;
            width: 334px;
        }
        .style66
        {
            height: 90px;
            width: 328px;
        }
        .style67
        {
            height: 158px;
            width: 328px;
        }
    </style>

    <div>
        <table style="border-style: double; width: 99%; height: 1245px; background-image: url('Images/Hotel_img/hotel pic.jpg'); background-repeat: no-repeat;">
            <tr>
                <td class="style20" 
                    
                    style="background-image: url('Images/Hotel_img/q.jpg'); background-repeat: no-repeat;" 
                    colspan="4">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                        ID="Label10" runat="server" Font-Size="XX-Large" 
                        Text="...View Hotel Details..." Font-Bold="True" Font-Names="Algerian"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style28" colspan="2" rowspan="4" 
                    style="background-image: url('Images/Hotel_img/hotel-marina2.jpg'); background-repeat: no-repeat">
                    &nbsp;</td>
                <td class="style29">
                    <asp:Label ID="Label1" runat="server" Font-Italic="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Hotel Name"></asp:Label>
                </td>
                <td class="style30">
                    <asp:DropDownList ID="ddlHotelName" runat="server" AutoPostBack="True" 
                        Height="103px" onselectedindexchanged="ddlHotelName_SelectedIndexChanged" 
                        Width="236px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Address"></asp:Label>
                </td>
                <td class="style22">
                    <asp:TextBox ID="txtAddress" runat="server" Width="236px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label9" runat="server" Font-Italic="True" ForeColor="Blue" 
                        Text="Location"></asp:Label>
                </td>
                <td class="style22">
                    <asp:TextBox ID="txtLocation" runat="server" Width="239px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style21">
                    <asp:Label ID="Label8" runat="server" Font-Italic="True" ForeColor="Blue" 
                        Text="Description"></asp:Label>
                </td>
                <td class="style22">
                    <br />
                    <br />
                    <br />
                    <asp:TextBox ID="txtDescription" runat="server" Height="117px" 
                        style="margin-top: 0px" Width="246px"></asp:TextBox>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button12" runat="server" onclick="Button12_Click" Text="Edit" 
                        Font-Bold="True" Font-Names="Lucida Handwriting" ForeColor="Blue" 
                        Width="74px" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style32">
                    <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Rooms"></asp:Label>
                    &nbsp;</td>
                <td class="style32" colspan="3">
                    <asp:GridView ID="gvRoom" runat="server" Width="316px" 
                        onselectedindexchanged="GridView1_SelectedIndexChanged" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" onrowcommand="gvRoom_RowCommand">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    </td>
            </tr>
            <tr>
                <td class="style48">
                    &nbsp;</td>
                <td class="style48" colspan="3">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
            </tr>
            <tr>
                <td class="style36">
                    <asp:Label ID="Label6" runat="server" Font-Italic="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Halls"></asp:Label>
                    </td>
                <td class="style36" colspan="3">
                    <asp:GridView ID="gvHalls" runat="server" Width="310px" 
                        onselectedindexchanged="GridView3_SelectedIndexChanged" 
                        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="3" CellSpacing="2" onrowcommand="gvHalls_RowCommand">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    </td>
            </tr>
            <tr>
                <td class="style59">
                    </td>
                <td class="style66">
                    </td>
                <td class="style61" colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            </tr>
            <tr>
                <td class="style40">
                    &nbsp;</td>
                <td class="style67">
                    </td>
                <td class="style41">
                    &nbsp;</td>
                <td class="style64">
                    &nbsp;</td>
            </tr>
            </table>
        <br />
    </div>
</asp:Content>

