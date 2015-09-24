<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="viewdetails(Agent)1.aspx.cs" Inherits="viewdetails_Agent_1" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <style type="text/css">

        .style36
        {
            height: 23px;
        }
        .style37
        {
            width: 241px;
        }
        .style40
        {
            width: 259px;
        }
        .style41
        {
            width: 213px;
        }
        .style42
        {
            text-align: center;
        }
        .style58
        {
            height: 85px;
        }
        .style59
        {
            width: 106px;
        }
        .style60
        {
            height: 27px;
        }
        .style61
        {
            width: 213px;
            height: 27px;
        }
        .style62
        {
            height: 30px;
        }
    </style>


    <table style="width: 100%; background-image: url('Images/Agent_img/ViewAgent.jpg'); background-repeat: no-repeat; height: 949px;" 
        bgcolor="#999999">
        <tr>
            <td bgcolor="#999999" class="style42" colspan="6" 
                style="font-size: x-large; color: #FFFFFF">
                View Agent Details</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
            <td class="style59">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
            <td class="style59">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style42">
                &nbsp;</td>
            <td class="style37">
                <asp:RadioButton ID="rb_french" runat="server" Text="French Marcket" 
                    GroupName="agent" Font-Bold="True" />
            </td>
            <td class="style40">
                <asp:RadioButton ID="rb_chinese" runat="server" Text="Chinese Marcket" 
                    GroupName="agent" Font-Bold="True" />
            </td>
            <td class="style41">
                <asp:RadioButton ID="rb_japanese" runat="server" Text="Japanese Marcket" 
                    GroupName="agent" Font-Bold="True" />
            </td>
            <td class="style59">
                <asp:Button ID="btn_ok" runat="server" Font-Bold="True" Text="OK" Height="31px" 
                    Width="57px" onclick="btn_ok_Click" Font-Size="Large" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style42">
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
            <td class="style59">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style25" colspan="4" rowspan="13">
                <asp:GridView ID="GridMarcket" runat="server" Height="296px" Width="791px" 
                    AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" 
                    onselectedindexchanged="GridMarcket_SelectedIndexChanged" 
                    style="margin-left: 0px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <Columns>
                        <asp:BoundField DataField="AgentID" HeaderText="Agent ID" />
                        <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                        <asp:BoundField DataField="Lastname" HeaderText="Last Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" />
                        <asp:BoundField DataField="Gender" HeaderText="Gender" />
                        <asp:BoundField DataField="TelNumber" HeaderText="Telephone Number" />
                        <asp:BoundField DataField="Fax" HeaderText="Fax" />
                        <asp:BoundField DataField="PassPortNumber" HeaderText="Passport Number" />
                        <asp:BoundField DataField="Country" HeaderText="Country" />
                        <asp:BoundField DataField="Email" HeaderText="E-Mail" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
                </asp:GridView>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style58">
                </td>
            <td class="style58">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
            <td class="style59">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style37">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
            <td class="style59">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style36">
            </td>
            <td class="style32" colspan="4" rowspan="9">
                &nbsp;</td>
            <td class="style36">
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                </td>
            <td>
                </td>
        </tr>
        <tr>
            <td class="style60" colspan="6" style="border-style: hidden">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style60" colspan="3" style="border-style: hidden">
                </td>
            <td class="style61" style="border-style: hidden">
                <asp:LinkButton ID="lbaddnewagent" runat="server" onclick="lbaddnewagent_Click" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#666666">Add New Agent</asp:LinkButton>
            </td>
            <td class="style60" colspan="2" style="border-style: hidden">
                <asp:LinkButton ID="lbeditrmv" runat="server" onclick="lbeditrmv_Click1" 
                    Font-Bold="True" Font-Size="Large" ForeColor="#666666">Edit &amp; Remove</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style62" colspan="6" style="border-style: hidden">
            </td>
        </tr>
    </table>
</asp:Content>

