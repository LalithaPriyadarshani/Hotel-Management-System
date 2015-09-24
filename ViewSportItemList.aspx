<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="ViewSportItemList.aspx.cs" Inherits="ViewSportItemList" %>

<%@ Register assembly="DevExpress.Web.v10.2, Version=10.2.3.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxDataView" tagprefix="dx" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width:100%; ">
        <tr>
            <td>
            
                <asp:GridView ID="dgvSportList" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" GridLines="None" Width="964px" ForeColor="#333333" >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:ImageField DataImageUrlField="ImageUrlCol">
                            <ControlStyle Height="150px" Width="150px" />
                        </asp:ImageField>
                        <asp:BoundField DataField="SportIDCol" HeaderText="Sport ID" >
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="100px" />
                        </asp:BoundField>
                        <asp:HyperLinkField DataNavigateUrlFields="SportItemUrlCol" 
                            DataTextField="SportNameCol" HeaderText="Sport Name" >
                        <ItemStyle HorizontalAlign="Center" Width="200px" />
                        </asp:HyperLinkField>
                        <asp:BoundField DataField="DescriptionCol" HeaderText="Description">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" Width="500px" />
                        </asp:BoundField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
</table>
</asp:Content>

