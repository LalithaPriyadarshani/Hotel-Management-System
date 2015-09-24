<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="Add New Hotel.aspx.cs" Inherits="Add_New_Hotel" %>



<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style129
        {
            width: 21%;
            height: 409px;
        }
        .style130
        {
            width: 123px;
            height: 409px;
        }
        .style131
        {
            width: 226px;
            height: 409px;
        }
        .style132
        {
            height: 83px;
        }
        .style133
        {
            width: 100%;
            height: 540px;
        }
    </style>

    <div>
        <table style="border-style: double; background-image: url('Images/Hotel_img/hotel pic.jpg'); background-repeat: no-repeat;" 
            class="style133">
            <tr>
                <td class="style132" colspan="3" 
                    style="background-color: #FFFFFF; background-image: url('Images/Hotel_img/q.jpg'); background-repeat: no-repeat;">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                        Text="...Add New Hotel..." Font-Italic="False" Font-Names="Algerian"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style129" 
                    style="background-image: url('Images/Hotel_img/dd2.jpg'); background-repeat: no-repeat">
                    </td>
                <td class="style131">
                    <asp:Label ID="Label10" runat="server" Font-Italic="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Hotel Name "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="LblMsg" runat="server"></asp:Label>
&nbsp;<asp:TextBox ID="txtHotelName" runat="server" Width="259px" Height="30px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Font-Italic="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Address"></asp:Label>
                &nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtAddress" runat="server" 
                        ontextchanged="TextBox6_TextChanged" Width="260px" Height="80px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Font-Italic="True" Font-Size="Large" 
                        ForeColor="Blue" Text="Location"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtLocation" runat="server" Width="262px" Height="29px"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label8" runat="server" ForeColor="Blue" Text="Description"></asp:Label>
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine" 
                        Height="103px" Width="272px"></asp:TextBox>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button9" runat="server" onclick="Button9_Click" 
                        Text="Save Hotel" />
                    <br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="Floor Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="ddlFloorNum" runat="server" Height="16px" Width="218px">
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
                    <br />
                    <br />
                    <asp:Label ID="Label11" runat="server" ForeColor="Blue" Text="Floor Image"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="fuFloorImage" runat="server" />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button8" runat="server" onclick="Button8_Click1" 
                        Text="Add Image" />
&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="lblMessage" runat="server" Text="Label"></asp:Label>
                    <br />
                    <br />
                    <br />
                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button7" runat="server" Font-Italic="False" ForeColor="Blue" 
                        Text="Clear" Font-Bold="True" Font-Size="Medium" onclick="Button7_Click" 
                        Height="30px" Width="110px" style="margin-top: 0px" 
                        Font-Names="Lucida Handwriting" />
                    &nbsp;&nbsp;&nbsp;<asp:Button ID="Button6" runat="server" Font-Italic="False" 
                        ForeColor="Blue" onclick="Button6_Click" Text="Continue" Width="205px" 
                        Font-Bold="True" Font-Size="Medium" Height="30px" 
                        Font-Names="Lucida Handwriting" />
                </td>
                <td class="style130" 
                    style="background-image: url('Images/Hotel_img/dd.png'); background-repeat: no-repeat">
                </td>
            </tr>
            </table>
        <br />
    </div>
</asp:Content>

