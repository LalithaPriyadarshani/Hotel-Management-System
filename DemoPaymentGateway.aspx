<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DemoPaymentGateway.aspx.cs" Inherits="DemoPaymentGateway" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            height: 63px;
        }
        .style5
        {
            width: 237px;
        }
        .style8
        {
            height: 63px;
        }
        .style9
        {
            width: 70px;
        }
        .style10
        {
            height: 63px;
            width: 502px;
        }
        .style11
        {
            width: 502px;
        }
        .style12
        {
            height: 53px;
            width: 502px;
        }
        .style13
        {
            height: 53px;
            width: 70px;
        }
        .style15
        {
            height: 53px;
            width: 25px;
        }
        .style16
        {
            height: 53px;
            width: 237px;
        }
        .style17
        {
            height: 60px;
            width: 502px;
        }
        .style18
        {
            height: 60px;
            width: 70px;
        }
        .style20
        {
            height: 60px;
            width: 237px;
        }
        .style21
        {
            height: 60px;
        }
        .style22
        {
            height: 56px;
            width: 502px;
        }
        .style23
        {
            height: 56px;
            width: 70px;
        }
        .style25
        {
            height: 56px;
            width: 237px;
        }
        .style26
        {
            height: 56px;
        }
        .style27
        {
            height: 52px;
            width: 502px;
        }
        .style28
        {
            height: 52px;
            width: 70px;
        }
        .style30
        {
            height: 52px;
            width: 237px;
        }
        .style31
        {
            height: 52px;
        }
        .style33
        {
            height: 60px;
            width: 25px;
        }
        .style35
        {
            height: 56px;
            width: 25px;
        }
        .style36
        {
            height: 52px;
            width: 25px;
        }
        .style37
        {
            width: 25px;
        }
        .style38
        {
            height: 23px;
        }
        .style39
        {
            height: 23px;
            width: 70px;
        }
        .style40
        {
            height: 23px;
            width: 25px;
        }
        .style41
        {
            height: 23px;
            width: 237px;
        }
        .style42
        {
            height: 23px;
            width: 502px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <table style="width: 100%; height: 649px;">
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                    <td class="style8" colspan="3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" BackColor="#BA8134" Font-Size="X-Large" 
                        ForeColor="White" Text="Demo Payment Gateway"></asp:Label>
                    </td>
                    <td class="style1">
                    </td>
                </tr>
                <tr>
                    <td class="style17">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" 
                        ForeColor="Blue" Text="ABC BANK"></asp:Label>
                    </td>
                    <td class="style18">
                    </td>
                    <td class="style33">
                    </td>
                    <td class="style20">
                    </td>
                    <td class="style21">
                    </td>
                </tr>
                <tr>
                    <td class="style42">
                    </td>
                    <td class="style39">
                    </td>
                    <td class="style40">
                    </td>
                    <td class="style41">
                    </td>
                    <td class="style38">
                    </td>
                </tr>
                <tr>
                    <td class="style12">
                        &nbsp;</td>
                    <td class="style13">
                        &nbsp;</td>
                    <td class="style15">
                        &nbsp;</td>
                    <td class="style16">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style17">
                    </td>
                    <td class="style18">
                        <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="Amount"></asp:Label>
                    </td>
                    <td class="style33">
                    </td>
                    <td class="style20">
                        <asp:TextBox ID="txtAmount" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                    <td class="style21">
                    </td>
                </tr>
                <tr>
                    <td class="style22">
                    </td>
                    <td class="style23">
                        <asp:Label ID="Label9" runat="server" Font-Size="Large" Text="Card No"></asp:Label>
                    </td>
                    <td class="style35">
                    </td>
                    <td class="style25">
                        <asp:TextBox ID="TextBox2" runat="server">123456756</asp:TextBox>
                    </td>
                    <td class="style26">
                    </td>
                </tr>
                <tr>
                    <td class="style27">
                    </td>
                    <td class="style28">
                    </td>
                    <td class="style36">
                    </td>
                    <td class="style30">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnPay" runat="server" Height="36px" onclick="btnPay_Click" 
                            Text="Pay" Width="68px" />
                    </td>
                    <td class="style31">
                    </td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style37">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style11">
                        &nbsp;</td>
                    <td class="style9">
                        &nbsp;</td>
                    <td class="style37">
                        &nbsp;</td>
                    <td class="style5">
                        &nbsp;</td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
