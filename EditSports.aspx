<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="EditSports.aspx.cs" Inherits="EditSport" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style19
        {
                width: 243px;
        }
        .style22
        {
        }
        .style26
        {
            width: 195px;
        }
        .style27
        {}
        .style29
        {
            width: 16px;
        }
* { margin:0 22 0 0px; 
padding:0;
}
        .style35
        {
            width: 72px;
        }
        .style38
        {
            width: 50%;
            height: 85px;
        }
        .style39
        {
            width: 16px;
            height: 85px;
        }
        .style43
        {
            width: 50%;
            height: 40px;
        }
        .style44
        {
            width: 16px;
            height: 40px;
        }
        .style46
        {
            width: 50%;
            height: 39px;
        }
        .style47
        {
            width: 16px;
            height: 39px;
        }
        .style54
        {
            height: 30px;
            width: 128px;
        }
        .style55
        {
            width: 38%;
        }
        .style56
        {
            width: 50%;
            height: 49px;
        }
        .style57
        {
            width: 2%;
            height: 49px;
        }
        .style58
        {
            height: 49px;
        }
        .style59
        {
            width: 50%;
        }
        .style60
        {
            width: 32%;
        }
        </style>



    <table style="background-position: center center; width: 100%; height: 573px; background-repeat: no-repeat; background-image: url('Images/Sport_Images/EditSportForm.png');">
        <tr>
            <td align="center" valign="middle" 
                class="style23">
                <table style="width: 93%; " 
                    align="center">
                    <tr>
                        <td align="center" class="style54" 
                            style="width: 80%; font-size: x-large; font-weight: bold; font-family: 'Trebuchet MS';" 
                            valign="middle" width="85%">&nbsp;</td>
                    </tr>
                    <tr>
                        <td align="center" class="style54" 
                            style="width: 80%; font-size: x-large; font-weight: bold; font-family: 'Trebuchet MS';" 
                            valign="middle" width="85%">
                            <br />
                            &nbsp;EDITSPORT</td>
                    </tr>
                    <tr>
                        <td align="center" class="style54" valign="middle" style="width: 80%" 
                            width="85%">
                <table style="width: 100%; height: 100%; padding-bottom: 0px; padding-top: opx;" 
                                align="center" class="style20">
                    <tr>
                        <td align="left" class="style56" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Sport Name</td>
                        <td align="left" class="style29" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            :</td>
                        <td align="left" colspan="3" valign="top" width="85%" 
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;">
                            <dx:ASPxTextBox ID="txtSportName" runat="server" Width="187px" Font-Bold="True" 
                                Font-Names="Trebuchet MS" Font-Size="Small">
                                <ValidationSettings CausesValidation="True" EnableCustomValidation="True" 
                                    ErrorText="Please Enter a Sport Name">
                                    <RegularExpression ErrorText="Please Enter a Valid Sport Name" />
                                    <RequiredField ErrorText="Please Enter A Sport Name" IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style56" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Sport Category</td>
                        <td align="left" class="style57" style="font-weight: bold; " 
                            valign="top">
                            :</td>
                        <td align="left" colspan="3" valign="top" width="85%" 
                            
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;" 
                            class="style58">
                            <asp:DropDownList ID="cmbSportscat" runat="server" Height="17px" Width="192px" 
                                Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                <asp:ListItem>Water Sports</asp:ListItem>
                                <asp:ListItem>Adventure</asp:ListItem>
                                <asp:ListItem>Biking</asp:ListItem>
                                <asp:ListItem>Camping</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style59" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Minimum Member Packages</td>
                        <td align="left" class="style29" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            :</td>
                                    <td align="left" class="style60" height="40px" 
                                        
                            style="font-weight: bold; font-family: 'Trebuchet MS';">
                                        <asp:RadioButton ID="rdb1" runat="server" GroupName="MinMem" Text="1" />
                                        <asp:RadioButton ID="rdb2" runat="server" GroupName="MinMem" Text="2" />
                                        <asp:RadioButton ID="rdb3" runat="server" GroupName="MinMem" Text="3" />
                                        <asp:RadioButton ID="rdb5" runat="server" GroupName="MinMem" Text="5" />
                                    </td>
                                    <td align="left" class="style21" height="40px" 
                                        style="padding-bottom: 8px">
                                        &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="style43" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Maximum Allowed Amount</td>
                        <td align="left" class="style44" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            :</td>
                        <td align="left" colspan="3" valign="top" width="85%" 
                            
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;">
                            <dx:ASPxTextBox ID="txtSportMaximum" runat="server" Width="206px" 
                                Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                <ValidationSettings CausesValidation="True" EnableCustomValidation="True">
                                    <RegularExpression ErrorText="Please Enter a Valid Amount" 
                                        ValidationExpression="[0-9]{1,5}" />
                                    <RequiredField ErrorText="Please Enter Maximum Allowed Amount" 
                                        IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style38" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Available Venues</td>
                        <td align="left" class="style39" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            :</td>
                        <td align="left" class="style60" 
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;" 
                            valign="top">
                            <dx:ASPxCheckBox ID="chkHotel1" runat="server" Font-Bold="True" 
                                Text="Catamaran Beach Hotel">
                            </dx:ASPxCheckBox>
                            <dx:ASPxCheckBox ID="chkHotel2" runat="server" Font-Bold="True" 
                                Text="Marina Beach Hotel">
                            </dx:ASPxCheckBox>
                            <dx:ASPxCheckBox ID="chkHotel3" runat="server" Font-Bold="True" 
                                Text="Kuda Oya Cottage Site">
                            </dx:ASPxCheckBox>
                            <dx:ASPxCheckBox ID="chkHotel4" runat="server" Font-Bold="True" 
                                Text="Hotel 4">
                            </dx:ASPxCheckBox>
                        </td>
                        <td align="left" class="style55" 
                            
                            style="padding-bottom: 0px; padding-top: 0px; margin-top: 0px; margin-bottom: 0px;" 
                            valign="top">
                            <dx:ASPxCheckBox ID="chkHotel5" runat="server" Font-Bold="True" 
                                Text="Marina Beach Pasikudah">
                            </dx:ASPxCheckBox>
                            <dx:ASPxCheckBox ID="chkHotel6" runat="server" Font-Bold="True" 
                                Text="Riverside Benthota">
                            </dx:ASPxCheckBox>
                            <dx:ASPxCheckBox ID="chkHotel7" runat="server" Font-Bold="True" 
                                Text="Water Garden Belihuloya">
                            </dx:ASPxCheckBox>
                            <dx:ASPxCheckBox ID="chkOther" runat="server" Font-Bold="True" 
                                Text="Other">
                            </dx:ASPxCheckBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style43" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Rate per Member Package US$</td>
                        <td align="left" class="style44" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            :</td>
                        <td align="left" colspan="3" valign="top" width="85%" 
                            
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;">
                            <dx:ASPxTextBox ID="txtRate" runat="server" Width="206px" Font-Bold="True" 
                                Font-Names="Trebuchet MS" Font-Size="Small">
                                <ValidationSettings CausesValidation="True" EnableCustomValidation="True">
                                    <RegularExpression ErrorText="Please Enter a Valid Rate" 
                                        ValidationExpression="^\d+(?:\.\d{0,2})?$" />
                                    <RequiredField ErrorText="Please Enter the Rate Per Package" 
                                        IsRequired="True" />
                                </ValidationSettings>
                            </dx:ASPxTextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style46" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Upload Image</td>
                        <td align="left" class="style47" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            :</td>
                        <td align="left" colspan="3" valign="top" width="85%" 
                            
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;">
                            <asp:Image ID="picone" runat="server" height="60px"/>
                            <dx:ASPxButton ID="btnChnImg" runat="server" Font-Bold="True" 
                                Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Small" 
                                Text="CHANGE" onclick="btnChnImg_Click" ClientIDMode="AutoID" 
                                Height="18px" Width="82px">
                            </dx:ASPxButton>
                            <asp:FileUpload ID="flImage" runat="server" />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                ControlToValidate="flImage" ErrorMessage="Please Upload an Image" 
                                ForeColor="Red"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style56" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            Description</td>
                        <td align="left" class="style29" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            :</td>
                        <td align="left" colspan="3" valign="top" width="85%" 
                            
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;">
                            <asp:TextBox ID="txtDescription" runat="server" Height="65px" 
                                TextMode="MultiLine" Width="357px" Font-Bold="True" 
                                Font-Names="Trebuchet MS" Font-Size="Small"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style56" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            &nbsp;</td>
                        <td align="left" class="style29" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            &nbsp;</td>
                        <td align="left" class="style60" valign="top" 
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;">
                            <dx:ASPxButton ID="btnUpdate" runat="server" Font-Bold="True" 
                                Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Medium" 
                                Text="UPDATE" onclick="btnUpdate_Click" AutoPostBack="false" ClientIDMode="AutoID">
                                <ClientSideEvents Click="function(s, e) {
var r=confirm(&quot;Are You Sure You Want to Update Data?&quot;);
if (r==true)
  {
  e.processOnServer = true;
  }
}" />
                            </dx:ASPxButton>
                        </td>
                        <td align="left" class="style55" valign="top" 
                            
                            style="padding-bottom: 0px; padding-top: 0px; margin-top: 0px; margin-bottom: 0px;">
                            <dx:ASPxButton ID="btnClear" runat="server" Font-Bold="True" 
                                Font-Names="Trebuchet MS,Arial,Helvetica,sans-serif" Font-Size="Medium" 
                                Text="CLEAR" onclick="btnClear_Click" AutoPostBack="False" ClientIDMode="AutoID">
                                <ClientSideEvents Click="function(s, e) {
	document.forms[0].reset()
}" />
                            </dx:ASPxButton>
                        </td>
                        <td align="center" class="style35" valign="top" 
                            style="width: 50px">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="style56" 
                            style="font-weight: bold; font-family: 'Trebuchet MS'; " 
                            valign="top">
                            </td>
                        <td align="left" class="style29" style="font-weight: bold; width: 2%;" 
                            valign="top">
                            </td>
                        <td align="left" class="style60" valign="top" 
                            
                            style="font-family: 'Trebuchet MS'; font-weight: bold;">
                            &nbsp;</td>
                        <td align="left" class="style55" valign="top" 
                            
                            style="padding-bottom: 0px; padding-top: 0px; margin-top: 0px; margin-bottom: 0px;">
                        </td>
                        <td align="center" class="style35" valign="top" 
                            style="width: 50px">
                            &nbsp;</td>
                    </tr>
                    </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</asp:Content>

