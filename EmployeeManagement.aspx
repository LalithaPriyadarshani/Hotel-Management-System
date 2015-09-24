<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="EmployeeManagement.aspx.cs" Inherits="EmployeeManagement" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div>
        <table style="width: 100%; height: 309px;">
            <tr>
                <td style="width: 303px; height: 57px">
                </td>
                <td style="width: 391px; height: 57px">
                    <asp:Label ID="Label7" runat="server" BackColor="#BA8134" Font-Size="X-Large" 
                        ForeColor="White" Text="Receptionist Management "></asp:Label>
                </td>
                <td style="height: 57px">
                </td>
            </tr>
            <tr>
                <td style="width: 303px; height: 38px">
                    <asp:Label ID="lblEmpId" runat="server" Text="ID : " Visible="False"></asp:Label>
&nbsp;
                    <asp:Label ID="lblID" runat="server" Text="id" Visible="False"></asp:Label>
                </td>
                <td style="width: 391px; height: 38px">
                </td>
                <td style="height: 38px">
                </td>
            </tr>
            <tr>
                <td colspan="3">
                    <table style="width: 100%; height: 236px;">
                        <tr>
                            <td class="style9" style="width: 152px">
                                <asp:Label ID="Label8" runat="server" Text="First Name"></asp:Label>
                            </td>
                            <td style="width: 231px">
                                <asp:TextBox ID="txtFName" runat="server"  
                                    Width="185px"></asp:TextBox>
                            </td>
                            
                            <td style="width: 31px">
                                &nbsp;</td>
                            <td rowspan="11" style="width: 568px">
                                <asp:Panel ID="Panel1" runat="server" Height="344px" ScrollBars="Auto" 
                                    Width="568px">
                                    <asp:GridView ID="gvReceptionist" 
    runat="server" AutoGenerateColumns="False" 
                                    BackColor="White" BorderColor="#DEDFDE" 
    BorderStyle="None" BorderWidth="1px" 
                                    CellPadding="4" ForeColor="Black" 
    GridLines="Vertical" Height="114px" 
                                     Width="520px" onrowcommand="gvReceptionist_RowCommand">
                                        <AlternatingRowStyle BackColor="White" />
                                        <Columns>
                                            <asp:CommandField HeaderText="Select" ShowHeader="True" 
                                            ShowSelectButton="True" />
                                            <asp:BoundField DataField="EmpID" HeaderText="Employee ID" 
                                            SortExpression="EmpID" />
                                            <asp:BoundField DataField="FName" HeaderText="First Name" 
                                            SortExpression="FName" />
                                            <asp:BoundField DataField="LName" HeaderText="Last Name" 
                                            SortExpression="LName" />
                                            <asp:BoundField DataField="Address" HeaderText="Address" 
                                            SortExpression="Address" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                            <asp:ImageField DataImageUrlField="Picture" HeaderText="Image">
                                                <ControlStyle Height="100px" Width="100px" />
                                            </asp:ImageField>
                                        </Columns>
                                        <EditRowStyle Height="20px" />
                                        <FooterStyle BackColor="#CCCC99" />
                                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                                        <RowStyle BackColor="#F7F7DE" />
                                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                                        <SortedAscendingHeaderStyle BackColor="#848384" />
                                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                                        <SortedDescendingHeaderStyle BackColor="#575357" />
                                    </asp:GridView>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                <asp:Label ID="Label9" runat="server" Text="Last Name"></asp:Label>
                            </td>
                            <td style="width: 231px">
                                <asp:TextBox ID="txtLName" runat="server" Width="185px"></asp:TextBox>
                            </td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                <asp:Label ID="Label10" runat="server" Text="Address"></asp:Label>
                            </td>
                            <td style="width: 231px">
                                <asp:TextBox ID="txtAddress" runat="server" Width="185px"></asp:TextBox>
                            </td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                <asp:Label ID="Label11" runat="server" Text="E-Mail"></asp:Label>
                            </td>
                            <td style="width: 231px">
                                <asp:TextBox ID="txtEMail" runat="server" Width="185px"></asp:TextBox>
                            </td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                <asp:Label ID="Label13" runat="server" Text="Image"></asp:Label>
                            </td>
                            <td style="width: 231px">
                                <asp:FileUpload ID="fuEmp" runat="server" Width="210px" />
                            </td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                &nbsp;</td>
                            <td style="width: 231px">
                                <asp:CheckBox ID="chkUpdateImage" runat="server" Text="Update Image" 
                                    Visible="False" />
                            </td>
                            <td style="width: 31px">
                                <asp:Panel ID="Panel2" runat="server">
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                &nbsp;</td>
                            <td style="width: 231px">
                                &nbsp;</td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                &nbsp;</td>
                            <td style="width: 231px">
                                <asp:Button ID="btnAdd" runat="server" Height="28px" 
                                    Text="Add" Width="53px" onclick="btnAdd_Click" />
                                <asp:Button ID="btnEdit" runat="server" Height="28px" 
                                    Text="Edit" Width="53px" onclick="btnEdit_Click" Enabled="False" />
                                <asp:Button ID="btnDelete" runat="server" Height="28px" 
                                    Text="Delete" Width="53px" Enabled="False" onclick="btnClear0_Click" />
                                <asp:Button ID="btnClear" runat="server" Height="28px" 
                                    Text="Clear" Width="53px" onclick="btnClear_Click" />
                            </td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                <asp:Label ID="lblError" runat="server" Text="Error" Visible="False" 
                                    Font-Bold="True" ForeColor="Red"></asp:Label>
                            </td>
                            <td style="width: 231px">
                                &nbsp;</td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                &nbsp;</td>
                            <td style="width: 231px">
                                &nbsp;</td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style9" style="width: 152px">
                                &nbsp;</td>
                            <td style="width: 231px">
                                
                                
                            </td>
                            <td style="width: 31px">
                                &nbsp;</td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>

