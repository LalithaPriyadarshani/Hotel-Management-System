<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="main_package_create.aspx.cs" Inherits="main_package_create" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <style type="text/css">
        .style16
        {
        }
        .style18
        {
            width: 228px;
        }
        </style>

    <div style="height: 1043px">
        <table style="width: 100%; height: 98px;">
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Larger" 
                        Text="Main Package "></asp:Label>
                </td>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style16" colspan="3">
                    <asp:Image ID="Image1" runat="server" Height="369px" 
                        ImageUrl="~/Images/Tour_img/main_package.jpg" Width="961px" />
                </td>
            </tr>
            <tr>
                <td rowspan="11">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="180px" 
                        ImageUrl="~/Images/Tour_img/createsubpackages_image.jpg" onclick="ImageButton1_Click" 
                        Width="212px" />
                </td>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Main package name : "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtmainpac_name" runat="server" Width="297px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label8" runat="server" Text="Description : "></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtdescription_main" runat="server" TextMode="MultiLine" 
                        Width="286px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Image : "></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="imageUpload1" runat="server" Height="23px" />
                    <asp:Label ID="lblimage" runat="server" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    <asp:Button ID="save_main_pac" runat="server" Font-Size="Medium" Height="39px" 
                        onclick="save_main_pac_Click" Text="Save" Width="107px" />
                    <asp:Label ID="lblcon" runat="server" Text="Label" Font-Bold="True" 
                        ForeColor="Red"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="refresh" runat="server" Font-Size="Medium" Height="39px" 
                        onclick="refresh_Click" Text="Refresh" Width="95px" />
                </td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style18">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <p>
        <br />
    </p>
</asp:Content>

