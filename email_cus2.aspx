<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="email_cus2.aspx.cs" Inherits="email_cus2" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <div style="background-color: #FFFFFF">
        <table style="width: 100%; height: 1219px;">
            <tr>
                <td class="style28" colspan="3">
                    <table style="width: 100%;">
                        <tr>
                            <td class="style29">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style29">
                                &nbsp;</td>
                            <td class="style30">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    Text="Email to your customer"></asp:Label>
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style29">
                                &nbsp;</td>
                            <td class="style30">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Label ID="LblMsg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style34" colspan="3">
                    <table style="width: 100%; height: 343px;">
                        <tr>
                            <td class="style34" colspan="3" style="background-color: #0000FF">
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                            <td>
                                <asp:GridView ID="GridEmail" runat="server" AllowPaging="True" 
                    AllowSorting="True" 
                    Width="956px" onselectedindexchanged="GridView1_SelectedIndexChanged1" 
                                    AutoGenerateColumns="False" 
                                    onpageindexchanging="GridEmail_PageIndexChanging">
                     <RowStyle BackColor="Silver" />
                                    <Columns>
                                        <asp:CommandField ShowSelectButton="True" />
                                        <asp:BoundField DataField="CustomerID" HeaderText="Customer ID" />
                                        <asp:BoundField DataField="fname" HeaderText="First Name" />
                                        <asp:BoundField DataField="lname" HeaderText="Last Name" />
                                        <asp:BoundField DataField="email" HeaderText="E-Mail" />
                                    </Columns>
            <HeaderStyle BackColor="#B8B0D7" BorderColor="#999999" />
            <AlternatingRowStyle BackColor="#A7A098" />
                    
                </asp:GridView>
                            </td>
                            <td>
                            </td>
                        </tr>
                        <tr>
                            <td class="style34" colspan="3" style="background-color: #0000FF">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style35" colspan="3" style="background-repeat: no-repeat">
                    <table style="width: 100%; height: 585px;">
                        <tr>
                            <td class="style36">
                                &nbsp;</td>
                            <td rowspan="3" 
                                style="background-image: url('Images/plan/Untitled-1.jpg'); background-repeat: no-repeat">
                                <table style="width: 100%; height: 519px;">
                                    <tr>
                                        <td class="style63">
                                        </td>
                                        <td class="style64">
                                            &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" Text="To" 
                                                Font-Size="X-Large"></asp:Label>
                                        </td>
                                        <td class="style65">
                    <asp:TextBox ID="TxtTo" runat="server" TextMode="MultiLine" ontextchanged="TxtTo_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="TxtTo" ErrorMessage="Enter receivers" 
                        ValidationGroup="email_cus"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style51">
                                        </td>
                                        <td class="style52">
                <asp:Label ID="Label7" runat="server" Font-Bold="True" 
                    Text="Your Email address" Font-Size="X-Large"></asp:Label>
                                        </td>
                                        <td class="style53">
                                            <asp:TextBox ID="TxtEmail" runat="server" Width="289px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="TxtEmail" ErrorMessage="Enter valid email address" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="email_cus"></asp:RegularExpressionValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style47">
                                        </td>
                                        <td class="style48">
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Text="Your Password" 
                        Font-Size="X-Large"></asp:Label>
                                        </td>
                                        <td class="style28">
                <asp:TextBox ID="TxtPassword" runat="server" Width="292px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="TxtPassword" ErrorMessage="Enter password" 
                        ValidationGroup="email_cus"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style54">
                                        </td>
                                        <td class="style55">
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Subject" 
                        Font-Size="X-Large"></asp:Label>
                                        </td>
                                        <td class="style66">
                <asp:TextBox ID="TxtSub" runat="server" Width="288px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="TxtSub" ErrorMessage="Enter subject"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style67">
                                        </td>
                                        <td class="style68">
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Text="Attachment" 
                        Font-Size="X-Large"></asp:Label>
                                        </td>
                                        <td class="style69">
                <asp:FileUpload ID="FileUpload1" runat="server" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style60">
                                        </td>
                                        <td class="style61">
                <asp:Label ID="Label11" runat="server" Font-Bold="True" Text="Message" 
                        Font-Size="X-Large"></asp:Label>
                                        </td>
                                        <td class="style62">
                <asp:TextBox ID="TxtMsg" runat="server" Height="64px" TextMode="MultiLine" 
                    Width="297px"></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style38">
                                            &nbsp;</td>
                                        <td class="style39">
                                            &nbsp;</td>
                                        <td>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnSend" runat="server" Height="28px" Text="Send" 
                    Width="148px" onclick="Button6_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td class="style36">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style37">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style34" colspan="3" style="background-color: #0000FF">
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
</asp:Content>

