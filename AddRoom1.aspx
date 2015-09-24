<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="AddRoom1.aspx.cs" Inherits="AddRoom1" %>

<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSplitter" tagprefix="dx" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-image: url('Images/Hotel_img/hotel pic.jpg'); background-repeat: repeat">
        <dx:ASPxSplitter ID="ASPxSplitter2" runat="server" Height="686px" 
            ClientIDMode="AutoID" CssFilePath="~/App_Themes/RedWine/{0}/styles.css" 
            CssPostfix="RedWine">
            <Panes>
                <dx:SplitterPane>
                    <ContentCollection>
                        <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                            <table style="width: 100%; height: 631px; background-image: url('Images/Hotel_img/hotel pic.jpg');">
                                <tr>
                                    <td class="style8" 
                                        style="height: 82px; background-image: url('Images/Hotel_img/q.jpg');" 
                                        colspan="3">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label27" runat="server" 
                                            Text="........ADD" Font-Names="Trebuchet MS" Font-Size="X-Large"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style16" style="width: 267px; height: 76px;">
                &nbsp; &nbsp;<asp:Label ID="Label9" runat="server" Font-Italic="False" 
                    Font-Names="Trebuchet MS" ForeColor="Black" Text="Hotel Name" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="style37" style="height: 76px">
                                        <asp:TextBox ID="txtHotelName" runat="server" Height="32px" Width="201px"></asp:TextBox>
                                    </td>
                                    <td class="style17" style="height: 76px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style18" style="width: 267px; height: 81px;">
                &nbsp;&nbsp;
                                        <asp:Label ID="Label15" runat="server" Font-Italic="False" ForeColor="Black" 
                    Text="Room No" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                &nbsp;</td>
                                    <td class="style38" style="height: 81px">
                                        <asp:TextBox ID="txtRoomNo" runat="server" Height="32px" Width="201px"></asp:TextBox>
                                    </td>
                                    <td class="style19" style="height: 81px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style20" style="width: 267px; height: 80px;">
                &nbsp;&nbsp;
                                        <asp:Label ID="Label20" runat="server" Font-Italic="False" ForeColor="Black" 
                    Text="Roomtype" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="style39" style="height: 80px">
                                        <asp:TextBox ID="txtType" runat="server" Height="27px" Width="203px"></asp:TextBox>
                                    </td>
                                    <td class="style21" style="height: 80px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style22" style="width: 267px; height: 96px;">
                &nbsp; &nbsp;<asp:Label ID="Label26" runat="server" Font-Italic="False" ForeColor="Black" 
                                            Text="Floor No" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="style40" style="height: 96px">
                                        <asp:TextBox ID="txtfloorNo" runat="server" Height="29px" Width="202px"></asp:TextBox>
                                    </td>
                                    <td class="style23" style="height: 96px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style22" colspan="3">
                                        <table style="width: 100%;">
                                            <tr>
                                                <td colspan="3">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                                                    &nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 136px">
                                                    &nbsp; &nbsp;</td>
                                                <td style="width: 148px">
                                                    &nbsp; &nbsp;</td>
                                                <td>
                                                    &nbsp; &nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 136px">
                                                    &nbsp;</td>
                                                <td style="width: 148px">
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width: 136px">
                                                    &nbsp;&nbsp; &nbsp;<asp:Button ID="Button2" runat="server" Font-Names="Trebuchet MS" 
                                                        Font-Size="Large" OnClick="Button2_Click" Text="Save Room" Width="99px" />
                                                </td>
                                                <td style="width: 148px">
                                                    &nbsp; &nbsp;
                                                    <asp:Button ID="Button3" runat="server" Font-Names="Trebuchet MS" 
                                                        Font-Size="Large" Text="Clear" />
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button6" runat="server" OnClick="Button6_Click" 
                                                        Text="Demo" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </dx:SplitterContentControl>
                    </ContentCollection>
                </dx:SplitterPane>
                <dx:SplitterPane>
                    <ContentCollection>
                        <dx:SplitterContentControl runat="server" SupportsDisabledAttribute="True">
                            <table style="width: 100%; height: 649px; background-image: url('Images/Hotel_img/hotel pic.jpg');">
                                <tr>
                                    <td class="style47" 
                                        style="height: 78px; background-repeat: no-repeat; background-image: url('Images/Hotel_img/q.jpg');" 
                                        colspan="3">
                                        &nbsp;&nbsp;&nbsp;
                                        <asp:Label ID="Label28" runat="server" Text="ROOMS....." 
                                            Font-Names="Trebuchet MS" Font-Size="X-Large"></asp:Label>
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td class="style55" style="height: 83px">
                &nbsp;
                                        <asp:Label ID="Label21" runat="server" Font-Italic="False" ForeColor="Black" 
                    Text="Bedtype" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                &nbsp;</td>
                                    <td class="style56" style="height: 83px">
                                        <asp:DropDownList ID="ddBedType" runat="server" AutoPostBack="True" 
                                            Height="24px" OnSelectedIndexChanged="ddBedType_SelectedIndexChanged" 
                                            Width="188px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style57" style="height: 83px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style55" style="height: 78px">
                &nbsp;
                                        <asp:Label ID="Label23" runat="server" Font-Italic="False" ForeColor="Black" 
                    Text="Bed Price" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                &nbsp;</td>
                                    <td class="style56" style="height: 78px">
                                        <asp:TextBox ID="TxtBedPrice" runat="server" Height="30px" Width="200px"></asp:TextBox>
                                    </td>
                                    <td class="style57" style="height: 78px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style51" style="height: 77px">
                                        &nbsp;
                                        <asp:Label ID="Label24" runat="server" Text="Meal type" 
                                            Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                                    </td>
                                    <td class="style52" style="height: 77px">
                                        <asp:DropDownList ID="ddMealType" runat="server" AutoPostBack="True" 
                                            Height="16px" OnSelectedIndexChanged="ddMealType_SelectedIndexChanged" 
                                            Width="202px">
                                        </asp:DropDownList>
                                    </td>
                                    <td class="style53" style="height: 77px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style58" style="height: 94px">
                                        &nbsp;
                                        <asp:Label ID="Label25" runat="server" Text="Meal Price" 
                                            Font-Names="Trebuchet MS" Font-Size="Large" ForeColor="Black"></asp:Label>
                                    </td>
                                    <td class="style59" style="height: 94px">
                                        <asp:TextBox ID="txtMealPrice" runat="server" Width="194px"></asp:TextBox>
                                    </td>
                                    <td class="style60" style="height: 94px">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style43" colspan="3">
                                        <table style="width: 100%; height: 88px;">
                                            <tr>
                                                <td class="style63">
                                                    <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
                                                </td>
                                                <td class="style65" style="width: 134px">
                                                </td>
                                                <td class="style62">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style64" style="height: 32px">
                                                    &nbsp;&nbsp; &nbsp;</td>
                                                <td class="style66" style="height: 32px; width: 134px;">
                                                    &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;</td>
                                                <td style="height: 32px">
                                                    &nbsp; &nbsp;&nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    </td>
                                                <td style="width: 134px">
                                                    </td>
                                                <td>
                                                    </td>
                                            </tr>
                                            <tr>
                                                <td class="style64">
                                                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Button ID="Button5" runat="server" Font-Names="Trebuchet MS" 
                                                        Font-Size="Large" OnClick="Button5_Click" Text="Save" />
                                                </td>
                                                <td class="style66" style="width: 134px">
                                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                                <td>
                                                    &nbsp;&nbsp;
                                                    <asp:Button ID="Button4" runat="server" Font-Names="Trebuchet MS" 
                                                        Font-Size="Large" OnClick="Button4_Click" Text="Next" Width="68px" />
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </dx:SplitterContentControl>
                    </ContentCollection>
                </dx:SplitterPane>
            </Panes>
            <Styles CssFilePath="~/App_Themes/RedWine/{0}/styles.css" CssPostfix="RedWine">
            </Styles>
            <Images SpriteCssFilePath="~/App_Themes/RedWine/{0}/sprite.css">
            </Images>
            <BackgroundImage ImageUrl="~/Images/Hotel_img/hotel pic.jpg" />
        </dx:ASPxSplitter>

        </div>
   
</asp:Content>

