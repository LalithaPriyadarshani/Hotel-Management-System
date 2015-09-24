<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="AddNewAgent1.aspx.cs" Inherits="AddNewAgent1" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">

    .style45
    {
        height: 36px;
        font-size: x-large;
        text-align: center;
        color: #FFFFFF;
    }
    .style27
    {
        width: 152px;
    }
    .style23
    {
        width: 212px;
    }
        .style42
        {
            width: 345px;
        }
        .style39
        {
            width: 138px;
        }
        .style29
        {
        }
        .style30
        {
            width: 212px;
            height: 23px;
        }
        .style31
        {
            width: 115px;
            height: 23px;
        }
        .style43
        {
            width: 345px;
            height: 23px;
        }
        .style40
        {
            height: 23px;
            width: 138px;
        }
        .style28
    {
        height: 11px;
        width: 152px;
    }
        .style24
    {
        height: 11px;
        width: 212px;
    }
    .style26
    {
            height: 11px;
            width: 115px;
        }
        .style44
        {
            height: 11px;
            width: 345px;
        }
        .style41
        {
            height: 11px;
            width: 138px;
        }
        .style46
        {
        }
        .style47
        {
            width: 212px;
            height: 26px;
        }
        .style48
        {
            width: 115px;
            height: 26px;
        }
        .style49
        {
            width: 345px;
            height: 26px;
        }
        .style50
        {
            height: 26px;
            width: 138px;
        }
        .style58
        {
            width: 115px;
        }
        .style82
        {
            height: 25px;
        }
        .style90
        {
            height: 21px;
        }
        .style92
        {
            height: 21px;
        }
        .style94
        {
            width: 138px;
            height: 21px;
        }
        .style95
        {
            height: 25px;
            width: 417px;
        }
        .style96
        {
            height: 25px;
            width: 213px;
        }
        .style97
        {
            width: 152px;
            height: 26px;
        }
        .style98
        {
            height: 25px;
            width: 79px;
        }
    </style>


    <table align="center" 
    
    
    
        
    
        
        
        style="width: 100%; height: 523px; background-image: url('Images/Agent_img/AddAgent.jpg'); background-repeat: no-repeat; background-attachment: scroll;" 
        bgcolor="#999999">
        <tr>
            <td bgcolor="#999999" class="style45" colspan="7">
            Add New Agent</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_name" runat="server" Text="First Name" Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_name" runat="server" Width="274px" 
                    ontextchanged="txt_name_TextChanged"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_lastname" runat="server" Text="Last name" Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_lastname" runat="server"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_add" runat="server" Text="Address" Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_add" runat="server" Width="279px" TextMode="MultiLine"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_cunty" runat="server" Text="Country" Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_country" runat="server"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_gender" runat="server" Text="Gender" Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_gender" runat="server"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_ppnum" runat="server" Text="PassPort Number" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_ppnum" runat="server"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_telenum" runat="server" Text="Tele: Number" Font-Bold="True"></asp:Label>
            </td>
            <td style="background-repeat: no-repeat; background-position: center" 
            class="style58" colspan="2">
                <asp:TextBox ID="txt_telenum" runat="server" Width="161px"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td valign="middle" class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_marcket" runat="server" Text="Marcket" Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:DropDownList ID="ddl_marcket" runat="server">
                    <asp:ListItem>French 
                    </asp:ListItem>
                    <asp:ListItem>japanese</asp:ListItem>
                    <asp:ListItem>Chinese</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_pswd" runat="server" Text="Password" Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_pswd" runat="server" Width="161px" TextMode="Password" 
                    style="margin-bottom: 0px"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                &nbsp;</td>
            <td class="style58" colspan="2">
                &nbsp;</td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                &nbsp;</td>
            <td class="style23">
                <asp:Label ID="lbl_cmpswd" runat="server" Text="Confirm password" 
                    Font-Bold="True"></asp:Label>
            </td>
            <td class="style58" colspan="2">
                <asp:TextBox ID="txt_cnfrmpswd" runat="server" Width="161px" 
                TextMode="Password"></asp:TextBox>
            </td>
            <td class="style42" colspan="2">
                &nbsp;</td>
            <td class="style39">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style97">
                </td>
            <td class="style47">
                &nbsp;</td>
            <td class="style48" colspan="2">
                &nbsp;</td>
            <td class="style49" colspan="2">
            </td>
            <td class="style50">
                </td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style30">
                <asp:Label ID="lbl_faxnum" runat="server" Text="Fax Number" Font-Bold="True"></asp:Label>
            </td>
            <td class="style31" colspan="2">
                <asp:TextBox ID="txt_fax" runat="server" Width="159px"></asp:TextBox>
            </td>
            <td class="style43" colspan="2">
                &nbsp;</td>
            <td class="style40">
            </td>
        </tr>
        <tr>
            <td class="style29">
            </td>
            <td class="style30">
                &nbsp;</td>
            <td class="style31" colspan="2">
                &nbsp;</td>
            <td class="style43" colspan="2">
                &nbsp;</td>
            <td class="style40">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
            </td>
            <td class="style24">
                <asp:Label ID="lbl_email" runat="server" Text="Email address" Font-Bold="True"></asp:Label>
            </td>
            <td class="style26" colspan="2">
                <asp:TextBox ID="txt_email" runat="server" Width="213px"></asp:TextBox>
            </td>
            <td class="style44" colspan="2">
                &nbsp;</td>
            <td class="style41">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style28">
                &nbsp;</td>
            <td class="style24">
                &nbsp;</td>
            <td class="style26" colspan="2">
                &nbsp;</td>
            <td class="style44" colspan="2">
                <asp:Button ID="btn_add" runat="server" Text="Add" Height="30px" Width="93px" 
                Font-Bold="True" onclick="btn_add_Click" />
            </td>
            <td class="style41">
                <asp:Button ID="Button6" runat="server" onclick="Button6_Click" Text="Demo" 
                    Font-Bold="True" />
            </td>
        </tr>
        <tr>
            <td class="style46">
            </td>
            <td class="style47">
                &nbsp;</td>
            <td class="style48" colspan="2">
                &nbsp;</td>
            <td class="style49" colspan="2">
                &nbsp;</td>
            <td class="style50">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style90" colspan="2">
                &nbsp;</td>
            <td class="style92" colspan="2">
                &nbsp;</td>
            <td class="style92" colspan="2">
                <asp:LinkButton ID="iewDetails" runat="server" onclick="iewDetails_Click" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="White">View </asp:LinkButton>
            </td>
            <td class="style94">
                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click1" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="White">Edit &amp; Remove</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style95" bgcolor="#999999" colspan="3">
                &nbsp;</td>
            <td class="style96" bgcolor="#999999">
                &nbsp;</td>
            <td class="style98" bgcolor="#999999">
                &nbsp;</td>
            <td class="style82" bgcolor="#999999" colspan="2">
                &nbsp;</td>
        </tr>
        </table>
    </asp:Content>


