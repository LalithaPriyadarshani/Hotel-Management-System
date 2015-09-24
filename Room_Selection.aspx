<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="Room_Selection.aspx.cs" Inherits="Room_Selection" %>


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
                   Text="Select Room" Width="245px" onclick="ASPxButton2_Click" >
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
                    ForeColor="White" Height="44px" style="margin-left: 0px" Text="Payment" 
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
<div id ="roomse">
    <div id ="bedandroom">
    
        <table style="width: 100%; height: 210px;">
            <tr>
                <td class="style4" style="width: 29px">
                    &nbsp;</td>
                <td class="style9" style="width: 100px">
                    &nbsp;
                <asp:Label runat="server" Text=" Bed Type" ID="Label18"></asp:Label>

                    &nbsp;</td>
                <td style="width: 1px">
                    &nbsp;</td>
                <td class="style9" style="width: 121px">
                    &nbsp;</td>
                <td class="style22" style="width: 1px">
                    &nbsp;</td>
                <td class="style9" style="width: 161px">
                    &nbsp;</td>
                <td rowspan="5" style="width: 3px; background-color: #000000;">
                    &nbsp;</td>
                <td style="width: 25px">
                    &nbsp;</td>
                <td style="width: 105px">
                    <asp:Label ID="Label25" runat="server" Text="Meal Type"></asp:Label>
                </td>
                <td style="width: 1px">
                    &nbsp;</td>
                <td style="width: 108px">
                    &nbsp;</td>
                <td style="width: 1px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style4" colspan="6" style="height: 1px; background-color: #000000;">
                </td>
                <td colspan="6" style="height: 1px; background-color: #000000;">
                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 29px; height: 51px">
                </td>
                <td class="style9" style="height: 51px; width: 100px">
                    &nbsp;
                <asp:Label runat="server" ID="Label22">Single</asp:Label>

                    &nbsp;</td>
                <td class="style9" rowspan="3" style="width: 1px; background-color: #000000;">
                    &nbsp;</td>
                <td class="style9" style="width: 121px; height: 51px">
                    &nbsp;
                <asp:Label runat="server" ID="LblSingle"></asp:Label>

                </td>
                <td class="style9" style="width: 1px; background-color: #000000;" rowspan="3">
                    &nbsp;</td>
                <td class="style9" style="height: 51px; width: 161px">
                <asp:RadioButton runat="server" GroupName="rbBed" ID="RadioButton1"></asp:RadioButton>

                </td>
                <td style="height: 51px; width: 25px">
                </td>
                <td style="height: 51px; width: 105px">
                    <asp:Label ID="Label26" runat="server" Text="Bed &amp; Breakfast"></asp:Label>
                </td>
                <td rowspan="3" style="width: 1px; background-color: #000000;">
                    &nbsp;</td>
                <td style="height: 51px; width: 108px">
                <asp:Label runat="server" ID="LblBB"></asp:Label>

                </td>
                <td style="width: 1px; background-color: #000000;" rowspan="3">
                    &nbsp;</td>
                <td style="height: 51px">
                <asp:CheckBox runat="server" ID="CheckBox1"></asp:CheckBox>

                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 29px">
                    &nbsp;</td>
                <td class="style9" style="width: 100px">
                    &nbsp;
                <asp:Label runat="server" ID="Label23">Double</asp:Label>

                    &nbsp;</td>
                <td class="style9" style="width: 121px">
                    &nbsp;<asp:Label runat="server" ID="LblDouble"></asp:Label>

            &nbsp; &nbsp;</td>
                <td class="style9" style="width: 161px">
                <asp:RadioButton runat="server" GroupName="rbBed" ID="RadioButton2"></asp:RadioButton>

                </td>
                <td style="width: 25px">
                    &nbsp;</td>
                <td style="width: 105px">
                    <asp:Label ID="Label27" runat="server" Text="Half Board"></asp:Label>
                </td>
                <td style="width: 108px">
                <asp:Label runat="server" ID="LblHB"></asp:Label>

                </td>
                <td>
                <asp:CheckBox runat="server" ID="CheckBox2"></asp:CheckBox>

                </td>
            </tr>
            <tr>
                <td class="style4" style="width: 29px">
                    &nbsp;</td>
                <td class="style9" style="width: 100px">
                    &nbsp;
                <asp:Label runat="server" ID="Label24">Tripple</asp:Label>

                    &nbsp;</td>
                <td class="style9" style="width: 121px">
                    &nbsp;
                <asp:Label runat="server" ID="LblTripple"></asp:Label>

                    &nbsp;</td>
                <td class="style9" style="width: 161px">
                <asp:RadioButton runat="server" GroupName="rbBed" ID="RadioButton3"></asp:RadioButton>

                </td>
                <td style="width: 25px">
                    &nbsp;</td>
                <td style="width: 105px">
                    <asp:Label ID="Label28" runat="server" Text="Full Board"></asp:Label>
                </td>
                <td style="width: 108px">
                <asp:Label runat="server" ID="LblFB"></asp:Label>

                </td>
                <td>
                <asp:CheckBox runat="server" ID="CheckBox3"></asp:CheckBox>

                </td>
            </tr>
        </table>
    
    </div>

    <div id="afterthetable">
    
        <table style="width: 100%; height: 199px;">
            <tr>
                <td class="style9" style="width: 266px; height: 1px">
                </td>
                <td class="style9" style="width: 254px; height: 1px">
                </td>
                <td class="style4" style="width: 261px; height: 1px">
                </td>
                <td style="height: 1px">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 28px">
                </td>
                <td class="style9" style="width: 254px; height: 28px">
                </td>
                <td class="style4" style="width: 261px; height: 28px">
                </td>
                <td style="height: 28px">
                    <asp:Button ID="Button1" runat="server" Height="35px" Text="ADD" 
                        onclick="Button1_Click" Width="83px" />
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 26px">
                </td>
                <td class="style9" style="width: 254px; height: 26px">
                </td>
                <td class="style4" style="width: 261px; height: 26px">
                </td>
                <td style="height: 26px">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 26px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label41" runat="server" Text="Room NO:"></asp:Label>
&nbsp; &nbsp;</td>
                <td class="style9" style="width: 254px; height: 26px">
                    <asp:Label ID="Label42" runat="server"></asp:Label>
                </td>
                <td class="style4" style="width: 261px; height: 26px">
                    &nbsp;</td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 26px">
                    &nbsp;</td>
                <td class="style9" style="width: 254px; height: 26px">
                    &nbsp;</td>
                <td class="style4" style="width: 261px; height: 26px">
                    &nbsp;</td>
                <td style="height: 26px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 29px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label34" runat="server" Text="Bed Price"></asp:Label>
                                &nbsp;</td>
                <td class="style9" style="width: 254px; height: 29px">
                    &nbsp;<asp:Label ID="LblBedPrice" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="Label38" runat="server" Text="$"></asp:Label>
                                </td>
                <td class="style4" style="width: 261px; height: 29px">
                </td>
                <td style="height: 29px">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 32px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label35" runat="server" Text="Meal Price"></asp:Label>
                                &nbsp;</td>
                <td class="style9" style="width: 254px; height: 32px;">
                    &nbsp;<asp:Label ID="LblMealPrice" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="Label39" runat="server" Text="$"></asp:Label>
                                </td>
                <td class="style4" style="width: 261px; height: 32px;">
                    </td>
                <td style="height: 32px">
                    </td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 40px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label36" runat="server" Text="Total Price "></asp:Label>
                                &nbsp;</td>
                <td class="style9" style="width: 254px; height: 40px;">
                    &nbsp;<asp:Label ID="LblTotalPrice" runat="server"></asp:Label>
                    &nbsp;<asp:Label ID="Label40" runat="server" Text="$"></asp:Label>
                                </td>
                <td class="style4" style="width: 261px; height: 40px;">
                    </td>
                <td style="height: 40px">
                    </td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 36px;">
                    </td>
                <td class="style9" style="width: 254px; height: 36px;">
                                </td>
                <td class="style4" style="width: 261px; height: 36px;">
                    </td>
                <td style="height: 36px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 266px; height: 16px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                <td class="style9" style="width: 254px; height: 16px;">
                                </td>
                <td class="style4" style="width: 261px; height: 16px;">
                    </td>
                <td style="height: 16px">
                    &nbsp;
                    <asp:Button ID="Button2" runat="server" Height="32px" Text="NEXT" 
                        Width="82px" onclick="Button2_Click" />
&nbsp;&nbsp;</td>
            </tr>
        </table>
    
    </div>


</div>

</asp:Content>

