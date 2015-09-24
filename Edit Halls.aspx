<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="Edit Halls.aspx.cs" Inherits="Edit_Halls" %>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style type="text/css">
        .style16
        {
        }
        .style17
        {
            width: 150px;
        }
        .style18
        {
            width: 274px;
        }
        .style19
        {
            width: 226px;
        }
    </style>

    <div>
        <table style="width: 100%; height: 480px; background-image: url('Images/Hotel_img/hotel pic.jpg');">
            <tr>
                <td class="style16" colspan="4" 
                    style="background-image: url('Images/Hotel_img/q.jpg'); background-repeat: no-repeat">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Names="Algerian" 
                        Font-Size="XX-Large" Text="...Edit Halls..."></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18" rowspan="5" 
                    style="background-repeat: no-repeat; background-image: url('Images/Hotel_img/fg.jpg');">
                    &nbsp;</td>
                <td class="style17" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    &nbsp;</td>
                <td class="style19" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    &nbsp;</td>
                <td rowspan="5" 
                    style="background-repeat: no-repeat; background-image: url('Images/Hotel_img/fg.jpg');">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style17" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    <asp:Label ID="Label7" runat="server" ForeColor="Blue" Text="Hall Name"></asp:Label>
                </td>
                <td class="style19" 
                    style="background-image: url('Images/Hotel_imghotel pic.jpg'); background-repeat: no-repeat">
                    <asp:TextBox ID="txtHallName" runat="server" Width="181px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    <asp:Label ID="lbl" runat="server" ForeColor="Blue" Text="Hall_type"></asp:Label>
                </td>
                <td class="style19" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    <asp:TextBox ID="txtHall_type" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    <asp:Label ID="Label9" runat="server" ForeColor="Blue" Text="No of Seat"></asp:Label>
                </td>
                <td class="style19" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    <asp:TextBox ID="lblNoofseat" runat="server" Width="179px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style17" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
                </td>
                <td class="style19" 
                    style="background-image: url('Images/hotel pic.jpg'); background-repeat: no-repeat">
                    <asp:Button ID="Button6" runat="server" Font-Bold="True" 
                        Font-Names="Lucida Handwriting" ForeColor="Blue" Text="Edit" Width="87px" 
                        onclick="Button6_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" Font-Bold="True" 
                        Font-Names="Lucida Handwriting" ForeColor="Blue" Text="Next" Width="70px" 
                        onclick="Button7_Click" />
&nbsp;</td>
            </tr>
        </table>
        <br />
    </div>
</asp:Content>

