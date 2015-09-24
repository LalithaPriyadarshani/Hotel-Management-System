<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="sub_package_create.aspx.cs" Inherits="sub_package_create" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style16
        {
            height: 426px;
        }
        .style17
        {
            height: 25px;
        }
        .style18
        {
            height: 25px;
        }
        .style19
        {
            width: 89px;
        }
        .style20
        {
            height: 25px;
            width: 669px;
        }
        .style21
        {
            width: 669px;
        }
        .style22
        {
            height: 25px;
            width: 123px;
        }
        .style23
        {
            width: 123px;
        }
        .style24
        {
            height: 25px;
            width: 89px;
        }
        .style25
        {
            width: 249px;
        }
        .style26
        {
            width: 249px;
        }
    </style>

    <div style="height: 1055px; background-color: #92926A;">
        <table style="width: 100%; height: 595px;">
            <tr>
                <td class="style16" colspan="5">
                    <asp:Image ID="Image1" runat="server" Height="427px" 
                        ImageUrl="~/Images/Tour_img/sub_package_create.jpg" Width="962px" />
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;<asp:Label ID="Label13" runat="server" Text="Main Package Name : "></asp:Label>
                </td>
                <td class="style18" colspan="4">
                    <asp:DropDownList ID="DDmainpac_name" runat="server" Width="285px">
                    </asp:DropDownList>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMessage" runat="server" Text="Label" Font-Bold="True" 
                        ForeColor="Red"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style18" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label5" runat="server" Text="Sub Package Name : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style18" colspan="4">
                    <asp:TextBox ID="txtsubpackname" runat="server" Height="33px" Width="516px" 
                        ontextchanged="txtsubpackname_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style18" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label6" runat="server" Text="No of Days : "></asp:Label>
                </td>
                <td class="style18" colspan="4">
                    <asp:TextBox ID="txtnoofdays" runat="server" Width="64px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label15" runat="server" Text="Price:"></asp:Label>
                </td>
                <td class="style18" colspan="4">
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style18" colspan="4">
                    <asp:Button ID="btnsave" runat="server" onclick="btnsave_Click" Text="Save " 
                        Width="121px" Height="48px" Font-Size="Larger" />
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style18" colspan="4">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                    <asp:Label ID="Label14" runat="server" Text="Subpackage name :"></asp:Label>
                </td>
                <td class="style18" colspan="4">
                    <asp:DropDownList ID="ddlSubP" runat="server" Height="27px" Width="175px" 
                        onselectedindexchanged="ddlSubP_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style20">
&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style25">
                    &nbsp;<br />
                    <asp:Label ID="Label11" runat="server" Text="Description :"></asp:Label>
                    &nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                </td>
                <td class="style17">
                    <asp:Label ID="Label12" runat="server" Text="Acommadation : "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style25" rowspan="3">
                    <asp:TextBox ID="txtdescription" runat="server" TextMode="MultiLine" 
                        Width="285px" Height="63px" ontextchanged="txtdescription_TextChanged"></asp:TextBox>
                </td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                </td>
                <td class="style22">
                    <asp:Label ID="Label9" runat="server" Text="Day  :  "></asp:Label>
                </td>
                <td class="style24">
                    <asp:DropDownList ID="DDday" runat="server" Height="25px" Width="139px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem>11</asp:ListItem>
                        <asp:ListItem>12</asp:ListItem>
                        <asp:ListItem>13</asp:ListItem>
                        <asp:ListItem>14</asp:ListItem>
                        <asp:ListItem>15</asp:ListItem>
                        <asp:ListItem>16</asp:ListItem>
                        <asp:ListItem>17</asp:ListItem>
                        <asp:ListItem>18</asp:ListItem>
                        <asp:ListItem>19</asp:ListItem>
                        <asp:ListItem>20</asp:ListItem>
                        <asp:ListItem>21</asp:ListItem>
                        <asp:ListItem>22</asp:ListItem>
                        <asp:ListItem>23</asp:ListItem>
                        <asp:ListItem>24</asp:ListItem>
                        <asp:ListItem>25</asp:ListItem>
                        <asp:ListItem>26</asp:ListItem>
                        <asp:ListItem>27</asp:ListItem>
                        <asp:ListItem>28</asp:ListItem>
                        <asp:ListItem>29</asp:ListItem>
                        <asp:ListItem>30</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtacommadation" runat="server" Width="168px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style20">
                    &nbsp;</td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style20">
                </td>
                <td class="style22">
                    <asp:Label ID="Label10" runat="server" Text="Image : "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style24">
                    <asp:FileUpload ID="ImageUpload2" runat="server" Height="23px" />
                </td>
                <td class="style25">
                    &nbsp;</td>
                <td class="style17">
                </td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style26">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style19">
                    <asp:Button ID="btnsave_sub_pack" runat="server" onclick="save_sub_pack_Click" 
                        Text="SAVE" Font-Size="Larger" Height="46px" Width="108px" />
                    <asp:Label ID="lblcon" runat="server" Text="Label" Font-Bold="True" 
                        ForeColor="Red"></asp:Label>
                </td>
                <td class="style26">
                    <asp:Button ID="refresh" runat="server" Font-Size="Larger" Height="45px" 
                        onclick="refresh_Click" Text="Refresh" Width="108px" />
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style26">
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style19">
                    &nbsp;</td>
                <td class="style26">
                    `</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

