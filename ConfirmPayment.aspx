<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="ConfirmPayment.aspx.cs" Inherits="ConfirmPayment" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 100%; height: 294px;">
            <tr>
                <td colspan="3" style="height: 16px">
                    <table style="width: 100%; height: 45px;">
                        <tr>
                            <td style="width: 378px; height: 10px">
                            </td>
                            <td style="height: 10px">
                    <asp:Label ID="Label7" runat="server" BackColor="#00FFCC" Font-Size="X-Large" 
                        ForeColor="White" Text="Confirm Payment"></asp:Label>
                            </td>
                            <td style="height: 10px">
                            </td>
                        </tr>
                        <tr>
                            <td class="style4" style="width: 378px; height: 11px">
                            </td>
                            <td style="height: 11px">
                            </td>
                            <td style="height: 11px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style3" style="height: 8px">
                    <asp:Label ID="lblMessage" runat="server" BackColor="#66CCFF" BorderColor="#FF3300" 
                        ForeColor="White" Text="Payment is Successful " Visible="False"></asp:Label>
                </td>
                <td style="width: 228px; height: 8px">
                </td>
                <td style="height: 8px">
                </td>
            </tr>
            <tr>
                <td class="style3" colspan="3" style="height: 101px">
                    <table style="width: 100%; height: 104px;">
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                <asp:Label ID="Label9" runat="server" Text="Paid Amount : $"></asp:Label>
                            </td>
                            <td style="width: 101px">
                                <asp:Label ID="lblPaidAmt" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                <asp:Label ID="Label11" runat="server" Text="Remain Amount : $"></asp:Label>
                            </td>
                            <td style="width: 101px">
                                <asp:Label ID="lblRemainAmt" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                <asp:Label ID="Label13" runat="server" Text="Name"></asp:Label>
                            </td>
                            <td colspan="2">
                                <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                <asp:Label ID="lblpaidDateName" runat="server" Text="Paid Date"></asp:Label>
                            </td>
                            <td style="width: 101px">
                                <asp:Label ID="lblPaidDate" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                <asp:Label ID="lblRemDateName" runat="server" Text="Remain Payment Before"></asp:Label>
                            </td>
                            <td style="width: 101px">
                                <asp:Label ID="lblRemainDate" runat="server" Text="Label"></asp:Label>
                            </td>
                            <td>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                <asp:Button ID="Button1" runat="server" Height="36px" Text="Confirm" 
                                    Width="75px" onclick="Button1_Click" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 348px">
                                &nbsp;</td>
                            <td class="style9" style="width: 211px">
                                &nbsp;</td>
                            <td style="width: 101px">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

