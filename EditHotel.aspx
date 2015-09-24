<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="EditHotel.aspx.cs" Inherits="EditHotel" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style17
        {
            height: 92px;
            }
        .style18
        {
        }
        .style19
        {
        }
        .style20
        {
            width: 263px;
        }
        .style22
        {
            width: 106px;
        }
        .style23
        {
            width: 225px;
        }
    </style>

    <table style="width: 100%; background-image: url('Images/Hotel_img/hotel pic.jpg'); background-repeat: no-repeat; height: 614px;">
        <tr>
            <td class="style17" colspan="4" 
                style="background-image: url('Images/Hotel_img/q.jpg'); background-repeat: no-repeat;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label23" runat="server" Font-Size="XX-Large" 
                    Text="...Edit Hotel..." Font-Names="Algerian" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style20" rowspan="6" 
                
                style="background-image: url('Images/Hotel_img/dd2.jpg'); background-repeat: no-repeat">
                &nbsp;</td>
            <td class="style22">
                <asp:Label ID="Label24" runat="server" Text="Hotel Name" ForeColor="Black" 
                    Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            </td>
            <td class="style23">
                <asp:TextBox ID="txtHotelName" runat="server" Width="218px"></asp:TextBox>
            </td>
            <td rowspan="6" 
                
                style="background-image: url('Images/Hotel_img/dd.png'); background-repeat: no-repeat">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                <asp:Label ID="Label25" runat="server" Text="Address" ForeColor="Black" 
                    Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            </td>
            <td class="style23">
                <asp:TextBox ID="txtAddress" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                <asp:Label ID="Label26" runat="server" Text="Location" ForeColor="Black" 
                    Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            </td>
            <td class="style23">
                <asp:TextBox ID="txtLocation" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                <asp:Label ID="Label27" runat="server" Text="Description" ForeColor="Black" 
                    Font-Names="Trebuchet MS" Font-Size="Large"></asp:Label>
            </td>
            <td class="style23">
                <asp:TextBox ID="txtDescription" runat="server" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="LblMsg" runat="server" ForeColor="Red"></asp:Label>
            &nbsp;&nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button7" runat="server" onclick="Button7_Click" Text="Edit" 
                    Width="78px" Font-Bold="True" Font-Names="Trebuchet MS" 
                    ForeColor="Black" Font-Size="Large" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="txtNext" runat="server" Font-Bold="True" 
                    Font-Names="Trebuchet MS" ForeColor="Black" onclick="txtNext_Click" 
                    Text="Next" Font-Size="Large" Width="70px" />
            </td>
        </tr>
        <tr>
            <td class="style18" colspan="4">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

