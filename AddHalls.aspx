<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="AddHalls.aspx.cs" Inherits="AddHalls" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <style type="text/css">
        .style19
        {
            height: 88px;
        }
        .style24
        {
            width: 456px;
        }
        .style26
        {
        }
        .style27
        {
            width: 146px;
        }
        .style28
        {
            width: 192px;
        }
    </style>

    <br />
    <table style="width: 100%; height: 581px; background-image: url('Images/Hotel_img/hotel%20pic.jpg'); background-repeat: no-repeat; margin-bottom: 110px;">
        <tr>
            <td class="style19" colspan="4" 
                style="background-color: #FFFFFF; background-image: url('Images/Hotel_img/q.jpg'); background-repeat: no-repeat;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label7" runat="server" Font-Size="XX-Large" ForeColor="Black" 
                    Text="...Add      Halls..." Font-Names="Trebuchet MS" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style28" rowspan="5" 
                
                style="background-image: url('Images/Hotel_img/fg.jpg'); background-repeat: no-repeat">
                &nbsp;</td>
            <td class="style27">
                <asp:Label ID="Label9" runat="server" Font-Italic="False" ForeColor="Black" 
                    Text="Hotel Name" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            </td>
            <td class="style24">
                <asp:TextBox ID="txtHotelName" runat="server" Height="26px" Width="209px"></asp:TextBox>
            </td>
            <td rowspan="5" 
                style="background-image: url('Images/Hotel_img/fg.jpg'); background-repeat: no-repeat">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style27">
                <asp:Label ID="Label1" runat="server" Font-Italic="False" Font-Size="Large" 
                    ForeColor="Black" Text="Hall Name" Font-Names="Trebuchet MS"></asp:Label>
            </td>
            <td class="style24">
                <asp:TextBox ID="txtHallName" runat="server" Height="27px" Width="209px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </td>
        </tr>
        <tr>
            <td class="style27">
                <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Size="Large" 
                    ForeColor="Black" Text="Hall type" Font-Names="Trebuchet MS"></asp:Label>
            </td>
            <td class="style24">
                <asp:TextBox ID="txtHall_Type" runat="server" Height="26px" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style27">
                <asp:Label ID="Label8" runat="server" Font-Italic="True" ForeColor="Black" 
                    Text="No of Seat" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            </td>
            <td class="style24">
                <asp:TextBox ID="txtNoofSeat" runat="server" 
                    ontextchanged="TextBox4_TextChanged" Height="25px" Width="210px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button8" runat="server" Font-Names="Trebuchet MS" 
                    Font-Size="Large" onclick="Button8_Click" Text="Demo" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button1" runat="server" ForeColor="Black" Height="33px" 
                    Text="Save Hall" Width="97px" onclick="Button1_Click" Font-Bold="True" 
                    Font-Names="Trebuchet MS" Font-Size="Large" />
                &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button2" runat="server" ForeColor="Black" 
                    Text="Clear" onclick="Button2_Click" Font-Bold="True" Font-Size="Large" 
                    Font-Names="Trebuchet MS" Height="28px" />
            &nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button7" runat="server" ForeColor="Black" 
                    onclick="Button7_Click" Text="NEXT" Font-Bold="True" 
                    Font-Names="Trebuchet MS" Font-Size="Large" Height="28px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        </table>
    </asp:Content>

