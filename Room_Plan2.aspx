<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="Room_Plan2.aspx.cs" Inherits="Room_Plan2" %>


<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id = "upper">

    <table style="width: 100%; height: 38px;">
        <tr>
            <td style="height: 1px; width: 224px">
                <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Size="Medium" 
                    ForeColor="White" Height="44px" Text="Select Dates" Width="226px" 
                    onclick="ASPxButton1_Click">
                    <BackgroundImage ImageUrl="~/Images/Room_img/rect2985.png" Repeat="NoRepeat" />
                </dx:ASPxButton>
            </td>
            <td style="width: 210px; height: 1px">
                <dx:ASPxButton ID="ASPxButton2" runat="server" Font-Size="Medium" 
                    Font-Underline="False" ForeColor="White" Height="46px" 
                   Text="Select Room" Width="245px" >
                    <BackgroundImage ImageUrl="~/Images/Room_img/rect2985.png" Repeat="NoRepeat" />
                </dx:ASPxButton>
            </td>
            <td style="height: 1px; width: 238px">
                <dx:ASPxButton ID="ASPxButton3" runat="server" Font-Size="Medium" 
                    ForeColor="White" Height="43px" Text="Add Enhancements" Width="238px" 
                    onclick="ASPxButton3_Click">
                    <BackgroundImage ImageUrl="~/Images/Room_img/rect2985.png" Repeat="NoRepeat" />
                </dx:ASPxButton>
            </td>
            <td style="height: 1px; width: 266px">
                <dx:ASPxButton ID="ASPxButton4" runat="server" Font-Size="Medium" 
                    ForeColor="White" Height="45px" style="margin-left: 0px" Text="Payment" 
                    Width="247px">
                    <BackgroundImage ImageUrl="~/Images/Room_img/rect2985.png" Repeat="NoRepeat" />
                </dx:ASPxButton>
            </td>
            <td style="height: 1px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 224px">
                &nbsp;</td>
            <td style="width: 210px">
                &nbsp;</td>
            <td style="width: 238px">
                &nbsp;</td>
            <td style="width: 266px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 224px">
                &nbsp;</td>
            <td style="width: 210px">
                &nbsp;</td>
            <td style="width: 238px">
                &nbsp;</td>
            <td style="width: 266px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>

</div>


<div id ="planform">

    <div id ="planbefor">
        <table style="width: 100%; height: 75px;">
            <tr>
                <td class="style9" style="width: 119px; height: 17px">
                    &nbsp;<asp:Label ID="Label1" runat="server" Text="Hotel Name"></asp:Label>
                    &nbsp;</td>
                <td class="style9" style="width: 134px; height: 17px">
                    &nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Text="Check In"></asp:Label>
                </td>
                <td style="width: 145px; height: 17px">
                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label3" runat="server" Text="Check Out"></asp:Label>
                </td>
                <td style="height: 17px">
                    &nbsp; &nbsp;<asp:Label ID="Label4" runat="server" Text="Nights"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="4" style="height: 2px; background-color: #000000;">
                    </td>
            </tr>
            <tr>
                <td class="style9" style="width: 119px">
                    &nbsp; &nbsp;<asp:Label ID="lblHname" runat="server"></asp:Label>
                </td>
                <td class="style9" style="width: 134px">
                    &nbsp;&nbsp; &nbsp;<asp:Label ID="lblCheckin" runat="server"></asp:Label>
                </td>
                <td style="width: 145px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="lblCheckout" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;</td>
                <td>
                    &nbsp;&nbsp; <asp:Label ID="lblnights" runat="server"></asp:Label>
                &nbsp;&nbsp;</td>
            </tr>
        </table>
    </div>

    <div id = "floorselect">
    
        <table style="width:100%;">
            <tr>
                <td class="style4" style="width: 77px; height: 44px">
                </td>
                <td class="style9" style="width: 157px; height: 44px">
                </td>
                <td style="height: 44px">
                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 77px">
                    &nbsp;</td>
                <td class="style9" style="width: 157px">
                    &nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Select a Floor"></asp:Label>
&nbsp; &nbsp;</td>
                <td>
                                                                <asp:DropDownList ID="ddFloors" runat="server" 
                                                                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                                                                    AutoPostBack="True">
                                                                </asp:DropDownList>
                                                            </td>
            </tr>
            <tr>
                <td class="style4" style="width: 77px">
                    &nbsp;</td>
                <td class="style9" style="width: 157px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
        <table style="width: 100%;">
            <tr>
                <td class="style9" style="width: 108px">
                    &nbsp;</td>
                <td style="width: 802px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 108px; height: 315px">
                </td>
                <td style="width: 802px; height: 315px">
                    <div style="height: 305px">
                        <asp:Image ID="Floor_img" runat="server" Height="301px" Width="798px" />
                    </div>
                </td>
                <td style="height: 315px">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 108px">
                    &nbsp;</td>
                <td style="width: 802px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table style="width: 100%; height: 366px;">
            <tr>
                <td class="style9" style="width: 65px">
                    &nbsp;</td>
                <td style="width: 808px">
                    &nbsp;Select A room.........&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 65px; height: 22px">
                </td>
                <td style="width: 808px; height: 22px">
                    <div style="height: 302px">
                        <asp:GridView ID="gAvailableRooms" runat="server" 
                            onrowcommand="gAvailableRooms_RowCommand" 
                            onselectedindexchanged="gAvailableRooms_SelectedIndexChanged">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                            </Columns>
                        </asp:GridView>
                    &nbsp;<table style="width:100%;">
                            <tr>
                                <td style="width: 186px">
                                    &nbsp;</td>
                                <td style="width: 157px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 186px">
                                    <asp:Label ID="Label11" runat="server" Text="Selected Room is"></asp:Label>
                                </td>
                                <td style="width: 157px">
                                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                </td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="width: 186px">
                                    &nbsp;</td>
                                <td style="width: 157px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                        <table style="width:100%;">
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 391px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 391px">
                                    &nbsp;</td>
                                <td>
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="NEXT" Height="31px" 
                                        style="margin-left: 217px" Width="70px" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;</td>
                                <td style="width: 391px">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td style="height: 22px">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 65px">
                    &nbsp;</td>
                <td style="width: 808px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
    </div>




</div>
</asp:Content>

