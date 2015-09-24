<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="AddNewSportsForm.aspx.cs" Inherits="SportsManagementForm" %>

<%@ Register assembly="DevExpress.Web.ASPxEditors.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxEditors" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxUploadControl" tagprefix="dx" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style19
        {
            width: 224px;
        }
        .style21
        {
        height: 23px;
        }
        .style22
        {
            height: 28px;
        }
        * { margin:0 0 0 0px; 
padding:0;
            }
        .style23
        {
            width: 365px;
        }
        .style26
        {
            width: 1393px;
        }
    .style28
    {
        height: 23px;
        width: 31px;
    }
    .style29
    {
        height: 23px;
        width: 442px;
    }
    .style30
    {
        height: 23px;
        width: 324px;
    }
        .style31
        {
            height: 73px;
            width: 442px;
        }
        .style32
        {
            height: 73px;
            width: 31px;
        }
        .style33
        {
            height: 73px;
            width: 247px;
        }
        .style34
        {
            height: 40px;
            width: 442px;
        }
        .style35
        {
            height: 40px;
            width: 31px;
        }
        .style36
        {
            height: 40px;
            width: 247px;
        }
        .style37
        {
            height: 40px;
            width: 324px;
        }
        </style>

    <table style="width:100%; background-image: url('Images/Sport_Images/AddNewSportForm.png');">
        <tr>
            <td align="center" class="style26" 
                valign="middle">
                <table style="width: 90%;">
                    <tr>
                        <td height="550px" 
                            style="width: 100%; font-size: medium; font-weight: bold; font-family: 'Trebuchet MS'; margin-bottom: 5px;" 
                            class="style24" width="600px">
                            <table class="style24">
                                <tr>
                                    <td align="center" colspan="5" height="40px" 
                                        style="padding-bottom: 8px; font-size: x-large;">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" colspan="5" height="40px" 
                                        style="padding-bottom: 8px; font-size: x-large;">
                                        ADD NEW SPORT</td>
                                </tr>
                                <tr>
                                    <td align="left" class="style29" height="40px" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sport Name</td>
                                    <td align="left" class="style28" height="40px" 
                                        style="padding-bottom: 8px;">
                                        :</td>
                                    <td align="left" class="style21" colspan="3" height="40px" 
                                        style="padding-bottom: 8px">
                                        <dx:ASPxTextBox ID="txtSportName" runat="server" Height="22px" Width="200px" 
                                            Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                            <ValidationSettings CausesValidation="True" 
                                                ErrorText="Please Enter a Valid Sport Name">
                                                <RequiredField ErrorText="Please Enter A Sport Name" IsRequired="True" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style29" height="40px" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sport Category</td>
                                    <td align="left" class="style28" height="40px" 
                                        style="padding-bottom: 8px;">
                                        :</td>
                                    <td align="left" class="style21" colspan="3" height="40px" 
                                        style="padding-bottom: 8px">
                                        <asp:DropDownList ID="cmbSportsCat" runat="server" Width="200px" 
                                            Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                            <asp:ListItem>Water Sports</asp:ListItem>
                                            <asp:ListItem>Adventure</asp:ListItem>
                                            <asp:ListItem>Cycling</asp:ListItem>
                                            <asp:ListItem>Camping</asp:ListItem>
                                            <asp:ListItem>Other</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style29" height="40px" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Minimum Member Packages</td>
                                    <td align="left" class="style28" height="40px" 
                                        style="padding-bottom: 8px;">
                                        :</td>
                                    <td align="left" class="style21" height="40px" 
                                        style="padding-bottom: 8px" colspan="2">
                                        <asp:RadioButton ID="rdb1" runat="server" GroupName="MinMem" Text="1" />
&nbsp;<asp:RadioButton ID="rdb2" runat="server" GroupName="MinMem" Text="2" />
                                        <asp:RadioButton ID="rdb3" runat="server" GroupName="MinMem" Text="3" />
                                        <asp:RadioButton ID="rdb5" runat="server" GroupName="MinMem" Text="5" />
                                    </td>
                                    <td align="left" class="style21" height="40px" 
                                        style="padding-bottom: 8px">
                                        &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="left" class="style29" height="40px" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Maximum Allowed Amount</td>
                                    <td align="left" class="style28" height="40px" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;</td>
                                    <td align="left" class="style21" height="40px" 
                                        style="padding-bottom: 8px" colspan="3">
                                        <dx:ASPxTextBox ID="txtSportMaximum" runat="server" Height="22px" Width="200px" 
                                            Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                            <ValidationSettings CausesValidation="True" EnableCustomValidation="True">
                                                <RegularExpression ValidationExpression="[0-9]{1,5}" 
                                                    ErrorText="Please Enter a Valid Amount" />
                                                <RequiredField ErrorText="Please Enter a Valid Number" 
                                                    IsRequired="True" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style29" 
                                        style="padding-bottom: 8px;" 
                                        valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Available Venues</td>
                                    <td align="left" class="style28" 
                                        style="padding-bottom: 8px;" 
                                        valign="top">
                                        :</td>
                                    <td align="left" class="style21" 
                                        style="padding-bottom: 8px;" valign="top">
                                        <dx:ASPxCheckBox ID="chkHotel1" runat="server" Text="Catamaran Beach Hotel">
                                            <ValidationSettings CausesValidation="True" ValidationGroup="chkHotel">
                                            </ValidationSettings>
                                        </dx:ASPxCheckBox>
                                        <dx:ASPxCheckBox ID="chkHotel3" runat="server" Text="Marina Beach Hotel">
                                            <ValidationSettings ValidationGroup="chkHotel">
                                            </ValidationSettings>
                                        </dx:ASPxCheckBox>
                                        <dx:ASPxCheckBox ID="chkHotel5" runat="server" Text="Kuda Oya Cottage Site">
                                        </dx:ASPxCheckBox>
                                        <dx:ASPxCheckBox ID="chkHotel7" runat="server" Text="Hotel 7">
                                        </dx:ASPxCheckBox>
                                    </td>
                                    <td align="left" class="style30" 
                                        style="padding-bottom: 8px;" valign="top" colspan="2">
                                        <dx:ASPxCheckBox ID="chkHotel2" runat="server" Text="Marina Beach Pasikudah" >
                                        </dx:ASPxCheckBox>
                                        <dx:ASPxCheckBox ID="chkHotel4" runat="server" Text="Riverside Benthota">
                                        </dx:ASPxCheckBox>
                                        <dx:ASPxCheckBox ID="chkHotel6" runat="server" Text="Water Garden Belihuloya">
                                        </dx:ASPxCheckBox>
                                        <dx:ASPxCheckBox ID="chkOther" runat="server" Text="Other">
                                        </dx:ASPxCheckBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style29" height="40px" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Rate 
                                        Per Member Package US$</td>
                                    <td align="left" class="style28" height="40px" 
                                        style="padding-bottom: 8px;">
                                        :</td>
                                    <td align="left" class="style21" colspan="3" height="40px" 
                                        style="padding-bottom: 8px">
                                        <dx:ASPxTextBox ID="txtRate" runat="server" Height="22px" Width="200px" 
                                            Font-Bold="True" Font-Names="Trebuchet MS" Font-Size="Small">
                                            <ValidationSettings CausesValidation="True" EnableCustomValidation="True">
                                                <RegularExpression ErrorText="Please Enter a Valid Rate" 
                                                    ValidationExpression="^\d+(?:\.\d{0,2})?$" />
                                                <RequiredField IsRequired="True" 
                                                    ErrorText="Please Enter the Rate Per Package" />
                                            </ValidationSettings>
                                        </dx:ASPxTextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style29" height="40px" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Upload Image</td>
                                    <td align="left" class="style28" height="40px" 
                                        style="padding-bottom: 8px;">
                                        :</td>
                                    <td align="left" class="style21" colspan="3" height="40px" 
                                        style="padding-bottom: 8px;">
                                        <asp:FileUpload ID="flImage" runat="server" />
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="flImage" ErrorMessage="Please Upload an Image" 
                                            ForeColor="Red"></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style31" 
                                        style="padding-bottom: 8px;" 
                                        valign="top">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Description</td>
                                    <td align="left" class="style32" 
                                        style="padding-bottom: 8px;" 
                                        valign="top">
                                        :</td>
                                    <td align="left" class="style33" colspan="3" 
                                        style="padding-bottom: 8px">
                                        <asp:TextBox ID="txtDescription" runat="server" Height="64px" Width="328px" 
                                            TextMode="MultiLine" Font-Bold="True" Font-Names="Trebuchet MS" 
                                            Font-Size="Small"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" class="style34" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;</td>
                                    <td align="left" class="style35" 
                                        style="padding-bottom: 8px;">
                                        </td>
                                    <td align="left" class="style36" style="padding-bottom: 8px">
                                        <dx:ASPxButton ID="btnAdd" runat="server" Font-Bold="True" Height="28px" 
                                            Text="ADD" Width="100px" onclick="btnAdd_Click">
                                        </dx:ASPxButton>
                                    </td>
                                    <td align="left" class="style37" style="padding-bottom: 6px" colspan="2">
                                        <dx:ASPxButton ID="btnClear" runat="server" Font-Bold="True" Height="28px" 
                                            Text="CLEAR" Width="100px" AutoPostBack="False"  
                                            ClientIDMode="AutoID" >
                                            <ClientSideEvents Click="function(s, e) {
	document.forms[0].reset()
}" />
                                        </dx:ASPxButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" class="style34" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;</td>
                                    <td align="left" class="style35" 
                                        style="padding-bottom: 8px;">
                                        &nbsp;</td>
                                    <td align="left" class="style36" style="padding-bottom: 8px">
                                        &nbsp;</td>
                                    <td align="left" class="style37" style="padding-bottom: 6px" colspan="2">
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

