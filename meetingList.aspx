<%@ Page Title="" Language="C#" MasterPageFile="~/LSR_NEW.master" AutoEventWireup="true" CodeFile="meetingList.aspx.cs" Inherits="Default2" %>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <style type="text/css">
        .style21
        {
            width: 823px;
        }
        .style22
        {
            width: 90px;
            height: 124px;
        }
        .style23
        {
            width: 823px;
            height: 124px;
        }
        .style24
        {
            height: 124px;
        }
        .style25
        {
            width: 90px;
        }
        .style26
        {
            width: 90px;
            height: 271px;
        }
        .style27
        {
            width: 823px;
            height: 271px;
        }
        .style28
        {
            height: 271px;
        }
        .style35
        {
            width: 90px;
            height: 42px;
        }
        .style36
        {
            width: 823px;
            height: 42px;
        }
        .style37
        {
            height: 42px;
        }
        .style38
        {
            width: 90px;
            height: 33px;
        }
        .style39
        {
            width: 823px;
            height: 33px;
        }
        .style40
        {
            height: 33px;
        }
        </style>

    <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/Images/Event_img/bg_images3.jpg" 
        Height="799px">
        <table style="width: 100%; height: 304px;">
            <tr>
                <td class="style22">
                    &nbsp;</td>
                <td class="style23">
                    &nbsp;</td>
                <td class="style24">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style35">
                </td>
                <td class="style36">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </td>
                <td class="style37">
                </td>
            </tr>
            <tr>
                <td class="style38">
                </td>
                <td class="style39">
                </td>
                <td class="style40">
                </td>
            </tr>
            <tr>
                <td class="style26">
                    &nbsp;</td>
                <td class="style27" valign="top">
                    <asp:GridView ID="gv_meetingList" runat="server" Height="298px" Width="280px" 
                        AutoGenerateColumns="False" BackImageUrl="~/Images/Event_img/event6.png">
                        <Columns>
                            
                    <asp:templatefield HeaderText="ReservationID">
                    <itemtemplate>
                    <asp:label id="lblid" runat="server" text='<%#Eval("RID")%>'>
                    </asp:label>
                    </itemtemplate> 
                    </asp:templatefield>

                    <asp:templatefield HeaderText="CustomerID">
                    <itemtemplate>
                    <asp:label id="lblid" runat="server" text='<%#Eval("custID")%>'>
                    </asp:label>
                    </itemtemplate> 
                    </asp:templatefield>

                    <asp:templatefield headertext="Date"> 
                    <itemtemplate><%#Eval("date") %></itemtemplate>  
                    <editItemTemplate>
                    <asp:TextBox ID="textbox1" runat ="server" Text='<%#Eval("date")%>'>'>
                    </asp:TextBox>
                    </editItemTemplate>
                    </asp:templatefield>      
                    
                      <asp:templatefield headertext="Time"> 
                    <itemtemplate><%#Eval("time") %></itemtemplate>  
                    <editItemTemplate>
                    <asp:TextBox ID="textbox1" runat ="server" Text='<%#Eval("time")%>'>'>
                    </asp:TextBox>
                    </editItemTemplate>
                    </asp:templatefield>                                  
          
                    <asp:templatefield headertext="Hotel"> 
                    <itemtemplate><%#Eval("Hotelname") %></itemtemplate>  
                    <editItemTemplate>
                    <asp:TextBox ID="textbox1" runat ="server" Text='<%#Eval("Hotelname")%>'>'>
                    </asp:TextBox>
                    </editItemTemplate>
                    </asp:templatefield> 

                    <asp:templatefield headertext="Hall"> 
                    <itemtemplate><%#Eval("hall_name") %></itemtemplate>  
                    <editItemTemplate>
                    <asp:TextBox ID="textbox1" runat ="server" Text='<%#Eval("hall_name")%>'>'>
                    </asp:TextBox>
                    </editItemTemplate>
                    </asp:templatefield> 

                    <asp:templatefield headertext="Table Arrangement"> 
                    <itemtemplate><%#Eval("tableArrangement")%></itemtemplate>  
                    <editItemTemplate>
                    <asp:TextBox ID="textbox1" runat ="server" Text='<%#Eval("tableArrangement")%>'>'>
                    </asp:TextBox>
                    </editItemTemplate>
                    </asp:templatefield>  

                    <asp:templatefield headertext="Pay Amount"> 
                    <itemtemplate><%#Eval("price") %></itemtemplate>  
                    <editItemTemplate>
                    <asp:TextBox ID="textbox1" runat ="server" Text='<%#Eval("price")%>'>'>
                    </asp:TextBox>
                    </editItemTemplate>
                    </asp:templatefield>  

                        </Columns>
                    </asp:GridView>

                </td>
                <td class="style28">
                </td>
            </tr>
            <tr>
                <td class="style25">
                    &nbsp;</td>
                <td class="style21">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

