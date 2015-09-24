<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="EditRoom.aspx.cs" Inherits="EditRoom" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style16
        {
            height: 100px;
        }
        .style17
        {
            width: 213px;
        }
        .style18
        {
            width: 552px;
        }
    </style>

    <table style="width: 103%; height: 536px; background-image: url('Images/Hotel_img/hotel%20pic.jpg'); background-repeat: no-repeat;">
        <tr>
            <td class="style16" colspan="3" 
                style="background-image: url('Images/Hotel_img/q.jpg'); background-repeat: no-repeat">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Size="XX-Large" 
                    Text="...Edit Rooms..." Font-Bold="True" Font-Names="Trebuchet MS"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17" rowspan="6" 
                style="background-image: url('Images/Hotel_img/gf.jpg'); background-repeat: no-repeat">
                &nbsp;</td>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="RoomNo" ForeColor="Black" 
                    Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtRoomNo" runat="server"></asp:TextBox>
            </td>
            <td rowspan="6" 
                style="background-image: url('Images/Hotel_img/gg.jpg'); background-repeat: no-repeat">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Label ID="Label7" runat="server" Text="Roomtype" ForeColor="Black" 
                    Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                &nbsp;
                <asp:TextBox ID="txtRoomtype" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label9" runat="server" Text="floorNo" ForeColor="Black" 
                    Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:TextBox ID="txtfloorNo" runat="server"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label runat="server" Text="Images" Font-Bold="False" Font-Italic="False" 
                    ForeColor="Black" ID="Label22" Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:FileUpload runat="server" ID="fuImages"></asp:FileUpload>

                &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style18">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
                &nbsp;&nbsp;&nbsp;

            </td>
        </tr>
        <tr>
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:Button ID="Button7" runat="server" Text="Edit" 
                    style="margin-left: 0px" Width="79px" Font-Bold="True" 
                    Font-Names="Trebuchet MS" ForeColor="Black" onclick="Button7_Click" 
                    Font-Size="Large" />
                &nbsp;&nbsp;&nbsp;
                <asp:Button 
                    ID="Button6" runat="server" Text="Next" Width="78px" Font-Bold="True" 
                    Font-Names="Trebuchet MS" ForeColor="Black" onclick="Button6_Click" 
                    Font-Size="Large" />
            </td>
        </tr>
        </table>
</asp:Content>

