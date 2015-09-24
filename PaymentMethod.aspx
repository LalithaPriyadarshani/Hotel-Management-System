<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="PaymentMethod.aspx.cs" Inherits="PaymentMethod" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div style="background-position: center; background-image: url('Images/Payment_img/pay8.jpg'); background-repeat: no-repeat;">
        <table style="width: 100%; height: 246px;">
            <tr>
                <td class="style9" style="height: 57px; width: 309px">
                </td>
                <td class="style3" style="width: 373px; height: 57px">
                    <asp:Label ID="Label24" runat="server" BackColor="Blue" Font-Size="XX-Large" 
                        ForeColor="White" Text="TOTAL AMOUNT "></asp:Label>
                    <asp:Label ID="Label22" runat="server" BackColor="Blue" Font-Size="XX-Large" 
                        ForeColor="White" Text="$ "></asp:Label>
                    <asp:Label ID="lblTotalAmount" runat="server" BackColor="Blue" Font-Size="XX-Large" 
                        ForeColor="White" Text="0.00"></asp:Label>
                </td>
                <td style="height: 57px">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px; height: 30px">
                    <asp:Image ID="Image1" runat="server" Height="21px" 
                        ImageUrl="~/Images/Payment_img/cards.jpg" Width="207px" />
                </td>
                <td class="style3" style="width: 373px; height: 30px">
                </td>
                <td style="height: 30px">
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="Payment Method"></asp:Label>
                </td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    <asp:Label ID="Label6" runat="server" Text="Method"></asp:Label>
                </td>
                <td class="style3" style="width: 373px">
                    <asp:RadioButton ID="rbtnCreditCard" runat="server" Text="Credit Card" 
                        GroupName="MethodGroup" Checked="True" />
                </td>
                <td>
                    <asp:RadioButton ID="rbtnDirect" runat="server" Text="Direct" 
                        GroupName="MethodGroup" Visible="False" />
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    <asp:Label ID="Label19" runat="server" Text="Pay by"></asp:Label>
                </td>
                <td class="style3" style="width: 373px">
                    <asp:RadioButton ID="RadioButton4" runat="server" Text="Customer" 
                        GroupName="PayByGroup" Checked="True" />
                </td>
                <td>
                    <asp:RadioButton ID="rbtnAgent" runat="server" Text="Agent" 
                        GroupName="PayByGroup" oncheckedchanged="rbtnAgent_CheckedChanged" 
                        Visible="False" AutoPostBack="True" />
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    <asp:RadioButton ID="RadioButton6" runat="server" Text="Full Payment" 
                        GroupName="FullHalfGroup" Checked="True" />
                </td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    <asp:DropDownList ID="ddlAgent" runat="server" Height="16px" Width="157px" 
                        Visible="False">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    <asp:RadioButton ID="rbtnHalfPay" runat="server" Text="Half Payment" 
                        GroupName="FullHalfGroup" oncheckedchanged="rbtnHalfPay_CheckedChanged" 
                        AutoPostBack="True" />
                </td>
                <td class="style3" style="width: 373px">
                    <asp:Label ID="lblHalfPay" runat="server" Text="amount" Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    <asp:Label ID="lblPaymentMessage" runat="server" 
                        Text="please pay full amount before below day" Visible="False"></asp:Label>
                </td>
                <td class="style3" style="width: 373px">
                    <asp:Label ID="lblRemainingDate" runat="server" Text="Remaining Date" 
                        Visible="False"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    <asp:Button ID="Button6" runat="server" Font-Bold="True" Font-Italic="True" 
                        Font-Size="Large" Height="35px" 
                        Text="ProcessTransaction &gt;&gt;" Width="237px" onclick="Button6_Click" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style9" style="width: 309px">
                    &nbsp;</td>
                <td class="style3" style="width: 373px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

