<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="Add New Hotel1.aspx.cs" Inherits="Add_New_Hotel1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="border-style: double; background-image: url('Images/Hotel_img/hotel pic.jpg'); background-repeat: no-repeat;" 
            class="style133">
        <tr>
            <td class="style132" colspan="3" 
                    
                    
                
                style="background-color: #FFFFFF; background-image: url('Images/Hotel_img/q.jpg'); background-repeat: no-repeat; height: 78px;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Text="...Add New Hotel..." Font-Italic="False" Font-Names="Trebuchet MS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style129" 
                    
                
                style="background-image: url('Images/Hotel_img/dd2.jpg'); background-repeat: no-repeat; width: 290px;">
            </td>
            <td class="style134" style="width: 831px">
                <table style="width: 100%; height: 477px;">
                    <tr>
                        <td style="height: 78px; width: 279px">
                        </td>
                        <td style="height: 78px; width: 272px">
                        </td>
                        <td style="height: 78px">
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 46px; width: 279px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label ID="Label10" runat="server" Font-Italic="False" Font-Size="Large" 
                        ForeColor="Black" Text="Hotel Name " Font-Names="Trebuchet MS"></asp:Label>
                        </td>
                        <td style="height: 46px; width: 272px">
                            &nbsp;<asp:TextBox ID="txtHotelName" runat="server" Width="250px" Height="30px"></asp:TextBox>
                            &nbsp;</td>
                        <td style="height: 46px">
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 27px; width: 279px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label ID="Label3" runat="server" Font-Italic="False" Font-Size="Large" 
                        ForeColor="Black" Text="Address" Font-Names="Trebuchet MS"></asp:Label>
                        </td>
                        <td style="height: 27px; width: 272px">
&nbsp;<asp:TextBox ID="txtAddress" runat="server" 
                         Width="252px" Height="28px"></asp:TextBox>
                            &nbsp;</td>
                        <td style="height: 27px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 37px;">
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label 
                                ID="Label4" runat="server" Font-Italic="False" Font-Size="Large" 
                        ForeColor="Black" Text="Location" Font-Names="Trebuchet MS"></asp:Label>
                &nbsp;&nbsp;</td>
                        <td style="width: 272px; height: 37px;">
                            &nbsp;<asp:TextBox ID="txtLocation" runat="server" Width="249px" Height="29px" 
                        ></asp:TextBox>
                            &nbsp;</td>
                        <td style="height: 37px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 121px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" ForeColor="Black" Text="Description" 
                        Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                            &nbsp;</td>
                        <td style="width: 272px; height: 121px;">
                            &nbsp;<asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" 
                        Height="103px" Width="249px"></asp:TextBox>
                            &nbsp;</td>
                        <td style="height: 121px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 55px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            <asp:Label ID="LblMsg" runat="server" Font-Names="Trebuchet MS" 
                                Font-Bold="True" ForeColor="Red"></asp:Label>
                &nbsp;&nbsp; &nbsp;</td>
                        <td style="width: 272px; height: 55px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                            &nbsp;</td>
                        <td style="height: 55px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 54px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button9" runat="server"  
                        Text="Save Hotel" Font-Names="Trebuchet MS" Font-Size="Large" Height="35px" 
                                onclick="Button9_Click" Width="121px" />
                            &nbsp;</td>
                        <td style="width: 272px; height: 54px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button10" runat="server" Text="Demo" Font-Names="Trebuchet MS" 
                                Font-Size="Large" Height="31px" onclick="Button10_Click" Width="78px" />
                            &nbsp;</td>
                        <td style="height: 54px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 36px;">
                            </td>
                        <td style="width: 272px; height: 36px;">
                            </td>
                        <td style="height: 36px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 55px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Font-Bold="True" 
                                Font-Names="Trebuchet MS" Font-Size="X-Large" Text="FLOOR"></asp:Label>
&nbsp;&nbsp;</td>
                        <td style="width: 272px; height: 55px;">
                            </td>
                        <td style="height: 55px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 43px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="Floor Number" 
                        Font-Names="Trebuchet MS" ForeColor="Black"></asp:Label>
                            &nbsp;</td>
                        <td style="width: 272px; height: 43px;">
                            &nbsp;&nbsp;
                    <asp:DropDownList ID="ddlFloorNum" runat="server" Height="28px" Width="218px">
                        <asp:ListItem>1</asp:ListItem>
                        <asp:ListItem>2</asp:ListItem>
                        <asp:ListItem>3</asp:ListItem>
                        <asp:ListItem>4</asp:ListItem>
                        <asp:ListItem>5</asp:ListItem>
                        <asp:ListItem>6</asp:ListItem>
                        <asp:ListItem>7</asp:ListItem>
                        <asp:ListItem>8</asp:ListItem>
                        <asp:ListItem>9</asp:ListItem>
                        <asp:ListItem>10</asp:ListItem>
                        <asp:ListItem></asp:ListItem>
                    </asp:DropDownList>
                            &nbsp;</td>
                        <td style="height: 43px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 42px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" ForeColor="Black" Text="Floor Image" 
                        Font-Names="Trebuchet MS"></asp:Label>
                            &nbsp;</td>
                        <td style="width: 272px; height: 42px;">
                            &nbsp;&nbsp;
                    <asp:FileUpload ID="fuFloorImage" runat="server" />
                        </td>
                        <td style="height: 42px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            &nbsp;</td>
                        <td style="width: 272px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server"  
                        Text="Add Image" Font-Names="Trebuchet MS" Font-Size="Large" Height="35px" 
                                onclick="Button8_Click" Width="116px" />
                            &nbsp;&nbsp;&nbsp;
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 279px; height: 35px;">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Black"></asp:Label>
                    &nbsp; &nbsp;</td>
                        <td style="width: 272px; height: 35px;">
                            </td>
                        <td style="height: 35px">
                            </td>
                    </tr>
                    <tr>
                        <td style="width: 279px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td style="width: 272px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 279px">
                            &nbsp;</td>
                        <td style="width: 272px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td style="width: 279px">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td style="width: 272px">
                            &nbsp;&nbsp;
                            <asp:Button ID="Button6" runat="server" Font-Italic="False" 
                        ForeColor="Black" onclick="Button6_Click" Text="Next" Width="198px" 
                        Font-Bold="True" Font-Size="Large" Height="34px" 
                        Font-Names="Trebuchet MS" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                    <asp:Button ID="Button7" runat="server" Font-Italic="False" ForeColor="Black" 
                        Text="Clear" Font-Bold="True" Font-Size="Large" onclick="Button7_Click" 
                        Height="30px" Width="110px" style="margin-top: 0px" 
                        Font-Names="Trebuchet MS" />
                        </td>
                    </tr>
                </table>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style130" 
                    
                style="background-image: url('Images/Hotel_img/dd.png'); background-repeat: no-repeat; width: 342px;">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

