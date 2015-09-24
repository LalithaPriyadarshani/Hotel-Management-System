<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="Room_reservation2.aspx.cs" Inherits="Room_reservation2" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">






<div id = "upper">

    <table style="width: 100%; height: 38px;">
        <tr>
            <td style="height: 1px; width: 224px">
                <dx:ASPxButton ID="ASPxButton1" runat="server" Font-Size="Medium" 
                    ForeColor="White" Height="44px" Text="Select Dates" Width="226px">
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
                    ForeColor="White" Height="45px" Text="Add Enhancements" Width="238px" 
                    onclick="ASPxButton3_Click">
                    <BackgroundImage ImageUrl="~/Images/Room_img/rect2985.png" Repeat="NoRepeat" />
                </dx:ASPxButton>
            </td>
            <td style="height: 1px; width: 266px">
                <dx:ASPxButton ID="ASPxButton4" runat="server" Font-Size="Medium" 
                    ForeColor="White" Height="43px" style="margin-left: 0px" Text="Payment" 
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
<div id="form2"  style="background-image: url('room_img/1.jpg'); background-repeat: no-repeat">

         <div id="me">
            
             <table style="width: 100%; height: 198px;">
                 <tr>
                     <td class="style4" style="width: 182px">

                <asp:Label ID="Label1" runat="server" Text="Label">Select a Hotel</asp:Label>

                     </td>
                     <td class="style6" style="width: 109px">
                                                <asp:DropDownList ID="dro_hotel" runat="server">
                                                    <asp:ListItem>Hotel Marina</asp:ListItem>
                                                    <asp:ListItem>Hotel Catamaran</asp:ListItem>
                                                    <asp:ListItem>Kuda Oya</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                     <td class="style6" style="width: 49px">
                         &nbsp;</td>
                     <td class="style9" style="width: 149px">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style9" style="width: 182px; height: 9px">
                     </td>
                     <td style="height: 9px; width: 109px">
                     </td>
                     <td style="height: 9px; width: 49px">
                     </td>
                     <td style="height: 9px; width: 149px">
                     </td>
                     <td style="height: 9px">
                     </td>
                 </tr>
                 <tr>
                     <td class="style9" style="width: 182px; height: 47px;">


 
<label for="from">Check In</label></td>
                     <td class="style6" style="width: 109px; height: 47px;">
                                                <dx:ASPxDateEdit ID="date_checkin" runat="server" 
                                                    ondatechanged="date_checkin_DateChanged">
                                                </dx:ASPxDateEdit>
                                            <td class="style6" style="width: 49px; height: 47px;">
                         </td>
                     <td class="style9" style="width: 149px; height: 47px;">
                         Check Out</td>
                     <td style="height: 47px">
                                                    <dx:ASPxDateEdit ID="date_checkout" runat="server">
                                                    </dx:ASPxDateEdit>
                                                </td>
                 </tr>
                 <tr>
                     <td class="style4" style="width: 182px">


 
                    <asp:Label ID="Label2" runat="server" Text="Nights"></asp:Label>
                     </td>
                     <td class="style6" style="width: 109px">
                                                    <asp:TextBox ID="txt_night" runat="server" Height="21px" Width="26px"></asp:TextBox>
                     </td>
                     <td class="style6" style="width: 49px">
                         &nbsp;</td>
                     <td class="style9" style="width: 149px">
                         &nbsp;</td>
                     <td>
                         &nbsp;</td>
                 </tr>
                 <tr>
                     <td class="style4" style="width: 182px">
                                                &nbsp;</td>
                     <td class="style6" style="width: 109px">
                         &nbsp;</td>
                     <td class="style6" style="width: 49px">
                         &nbsp;</td>
                     <td class="style9" style="width: 149px">
                         &nbsp;</td>
                     <td>
                                               <asp:Button ID="btn_check" runat="server"
                                                        Text="CHECK" onclick="btn_check_Click" />
                     </td>
                 </tr>
             </table>
            
         </div>

         <div id ="errorlbl">
         
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <asp:Label ID="LblMsg" runat="server" 
                 Font-Bold="True" ForeColor="Red"></asp:Label>
         
         </div>


         <div id ="roomreseunderreserve">
        <table style="width: 100%; height: 85px;">
            <tr>
                <td class="style9" style="width: 119px; height: 27px">
                    &nbsp;<asp:Label ID="Label11" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Hotel Name"></asp:Label>
                    &nbsp;</td>
                <td class="style9" style="width: 134px; height: 27px">
                    &nbsp; &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" 
                        ForeColor="Blue" Text="Check In"></asp:Label>
                </td>
                <td style="width: 145px; height: 27px">
                    &nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Blue" 
                        Text="Check Out"></asp:Label>
                </td>
                <td style="height: 27px">
                    &nbsp; &nbsp;<asp:Label ID="Label13" runat="server" Font-Bold="True" 
                        ForeColor="Blue" Text="Nights"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style9" colspan="4" style="height: 1px; background-color: #000000;">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 119px">
                    &nbsp;
                    <asp:Label ID="lbl_ho_na" runat="server" Font-Bold="True"></asp:Label>
                </td>
                <td class="style9" style="width: 134px">
                    &nbsp;<asp:Label ID="lblcheckin" runat="server" Font-Bold="True"></asp:Label>
                    &nbsp;</td>
                <td style="width: 145px">
                    &nbsp;<asp:Label ID="lblcheckout" runat="server" Font-Bold="True"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;</td>
                <td>
                    &nbsp;&nbsp;<asp:Label ID="lblnight" runat="server" Font-Bold="True"></asp:Label>
&nbsp;&nbsp;&nbsp;</td>
            </tr>
        </table>
    </div>

    <div id="bunext">
    
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        <asp:Button ID="BtnNext" runat="server" Font-Bold="True" Font-Italic="True" 
            Font-Size="Large" Text="NEXT" onclick="BtnNext_Click" />
    
    
    </div>


             

</div >
             
</asp:Content>

