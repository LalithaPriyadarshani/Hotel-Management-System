<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="PaymentSelection.aspx.cs" Inherits="PaymentSelection" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 100%; height: 315px;">
            <tr>
                <td style="height: 58px; width: 301px">
                </td>
                <td style="height: 58px; width: 396px">
                    <asp:Label ID="Label22" runat="server" BackColor="Blue" Font-Size="X-Large" 
                        ForeColor="White" Text="PAYING AMOUNT : "></asp:Label>
                    <asp:Label ID="Label23" runat="server" BackColor="Blue" Font-Size="X-Large" 
                        ForeColor="White" Text="$ "></asp:Label>
                    <asp:Label ID="lblPayingAmount" runat="server" BackColor="Blue" Font-Size="X-Large" 
                        ForeColor="White" Text="0.00"></asp:Label>
                </td>
                <td style="height: 58px">
                </td>
            </tr>
            <tr>
                <td style="width: 301px">
                    &nbsp;</td>
                <td class="style3" style="width: 396px">
                    <asp:Label ID="Label27" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="Remain Amount :"></asp:Label>
                    <asp:Label ID="Label29" runat="server" BackColor="White" Font-Size="X-Large" 
                        ForeColor="Blue" Text="$ "></asp:Label>
                    <asp:Label ID="lblRemainAmt" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="0.00"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="Billing Address"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    &nbsp;</td>
                <td class="style3" style="width: 396px">
                    <asp:Label ID="Label26" runat="server" Font-Size="Large" 
                        Text="you are a regular customer" Visible="False" Width="274px"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:DropDownList ID="ddlSalute" runat="server">
                        <asp:ListItem>Mrs</asp:ListItem>
                        <asp:ListItem>Ms</asp:ListItem>
                        <asp:ListItem>Mr</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="style3" style="width: 396px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label21" runat="server" Text="Passport / NIC"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtPassport" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                        ControlToValidate="txtPassport" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label12" runat="server" Text="First Name"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtFName" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                        ControlToValidate="txtFName" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label20" runat="server" Text="Last Name"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtLName" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                        ControlToValidate="txtLName" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label11" runat="server" Text="Country"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtCountry" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                        ControlToValidate="txtCountry" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label13" runat="server" Text="Street Address"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtStreetAddress" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                        ControlToValidate="txtStreetAddress" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label14" runat="server" Text="City/Town"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtCity" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtCity" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label16" runat="server" Text="ZIP/Postel Code"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtPostelCode" runat="server" Width="237px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtPostelCode" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label17" runat="server" Text="Phone"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtPhone" runat="server" Width="236px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtPhone" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="Label18" runat="server" Text="E-mail"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    <asp:TextBox ID="txtEmail" runat="server" Width="237px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="please enter valid email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtEmail" ErrorMessage="Enter Details"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 301px">
                    &nbsp;</td>
                <td class="style3" style="width: 396px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:CheckBox ID="chkTerms" runat="server" 
                        Text="I have read and accept conditions" />
                </td>
                <td class="style3" style="width: 396px">
                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Terms and Conditions</asp:LinkButton>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    &nbsp;</td>
                <td class="style3" style="width: 396px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    <asp:Label ID="lblError" runat="server" ForeColor="Red" 
                        Text="Please accespt terms and conditions" Visible="False"></asp:Label>
                </td>
                <td class="style3" style="width: 396px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    &nbsp;</td>
                <td class="style3" style="width: 396px">
                    <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Height="35px" Text="ProcessTransaction &gt;&gt;" 
                        Width="237px" onclick="Button6_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 301px">
                    &nbsp;</td>
                <td class="style3" style="width: 396px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

