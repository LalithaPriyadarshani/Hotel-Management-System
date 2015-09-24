<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="ApplicationForm.aspx.cs" Inherits="ApplicationForm" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style type="text/css">
        .style16
        {
            width: 307px;
        }
        .style17
        {
            width: 422px;
        }
        #Select1
        {
            width: 158px;
        }
        .style18
        {
            width: 307px;
            height: 36px;
        }
        .style19
        {
            width: 422px;
            height: 36px;
        }
        .style20
        {
            height: 36px;
        }
        .style21
        {
            width: 307px;
            height: 34px;
        }
        .style22
        {
            width: 422px;
            height: 34px;
        }
        .style23
        {
            height: 34px;
        }
        .style24
        {
            width: 307px;
            height: 70px;
        }
        .style25
        {
            width: 422px;
            height: 70px;
        }
        .style26
        {
            height: 70px;
        }
    </style>

    <p>
        <table style="background-position: right top; width:100%; background-color: #FFFFFF; height: 1054px; background-image: url('Images/Tour_img/130509034.jpg'); background-repeat: no-repeat; right: -16px;" 
            bgcolor="White">
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    <asp:Label ID="Label5" runat="server" Text="Fill this form and send it to us"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Selected Tour : "></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtselectedtour" runat="server" Width="306px"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Period of travel : "></asp:Label>
                </td>
                <td class="style17">
                    <asp:Label ID="Label8" runat="server" Text="From : "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="To : "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;</td>
                <td class="style17">
                    <asp:Label ID="Label10" runat="server" Text="DD "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label11" runat="server" Text="MM "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label12" runat="server" Text="YY "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="DD"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:Label ID="Label14" runat="server" Text="MM"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label15" runat="server" Text="YY"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style24">
                    </td>
                <td class="style25">
                    <asp:TextBox ID="txtfromDD" runat="server" Height="19px" Width="41px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtfromMM" runat="server" Width="38px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtfromYY" runat="server" Width="39px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtfromMM" ErrorMessage="enter values" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                </td>
                <td class="style26">
                    <asp:TextBox ID="txttoDD" runat="server" Width="37px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="txttoMM" runat="server" Width="37px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txttoYY" runat="server" Width="37px"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txttoDD" ErrorMessage="enter values" Font-Bold="True"></asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17">
                    <asp:Label ID="Label19" runat="server" Text="Adults : "></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label20" runat="server" 
                        Text="Children ( under  12 years old ) : "></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label18" runat="server" Text="No of travellers : "></asp:Label>
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtadults" runat="server" Width="58px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtadults" ErrorMessage="enter values" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
                <td>
                    <asp:TextBox ID="txtchildren" runat="server" Width="61px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtchildren" ErrorMessage="enter values" Font-Bold="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label21" runat="server" 
                        Text="Price :"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td class="style17">
                    <asp:TextBox ID="txtprice" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17">
                    <asp:Button ID="process" runat="server" Font-Bold="True" Font-Size="Medium" 
                        onclick="Button6_Click" Text="Process" Width="122px" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style22">
                    <br />
                </td>
                <td class="style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style22">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17">
                    &nbsp;</td>
                <td>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17" bgcolor="#FCE5BA">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style17" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td class="style17" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td class="style17" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td class="style17" bgcolor="#FCE5BA">
                    &nbsp;</td>
                <td bgcolor="#FCE5BA">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18" bgcolor="#FCE5BA">
                </td>
                <td class="style19" bgcolor="#FCE5BA">
                </td>
                <td class="style20" bgcolor="#FCE5BA">
                </td>
            </tr>
        </table>
    </p>
</asp:Content>

