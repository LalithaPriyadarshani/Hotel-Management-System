<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <script type="text/javascript" src="jquery.min.js"></script>

<style type="text/css">

#myslideshow{ /*sample CSS for demo*/
border:2px solid black;
}

</style>

<script src="translucentslideshow.js" type="text/javascript">
</script>


<script type="text/javascript">

    var translideshow1 = new translideshow({
        wrapperid: "myslideshow", 
        dimensions: [720, 300], 
        imagearray: [
["Home_img/1.jpg"], //["image_path", "optional_link", "optional_target"]
["Home_img/2.jpg", "", "_new"],
["Home_img/3.jpg", "http://www.lsrhotels.com/catamaran-beach-hotel-negombo.html"],
["Home_img/4.jpg", "http://www.lsrhotels.com/marina-hotel-bentota.html"],
["Home_img/5.jpg"],
["Home_img/6.jpg", "http://www.lsrhotels.com/kuda-oya-cottage-site.html"],
["Home_img/7.jpg", "http://www.lsrhotels.com/water-garden-belihuloya.html"],
["Home_img/8.jpg"] 
],
        displaymode: { type: 'auto', pause: 4000, cycles: 3, pauseonmouseover: true },
        orientation: "h",
        persist: true, 
        slideduration: 400 
    })

</script>



<link rel="Stylesheet" type = "text/css" herf="Home_img/StyleSheet.css" />
     <link rel="stylesheet" href="Home_img/StyleSheet.css"/>


    <style type="text/css">
        .style66
        {
        }
        .style67
        {
            height: 107px;
        }
        .style69
        {
            width: 14px;
        }
        .style70
        {
            width: 914px;
        }
        .style71
        {
            width: 253px;
        }
        .style72
        {
            width: 290px;
        }
        .style76
        {
            width: 290px;
            height: 13px;
        }
        .style77
        {
            width: 253px;
            height: 13px;
        }
        .style78
        {
            height: 13px;
        }
        .style79
        {
            width: 290px;
            height: 112px;
        }
        .style80
        {
            width: 253px;
            height: 112px;
        }
        .style81
        {
            height: 112px;
        }
        .style82
        {
            width: 290px;
            height: 125px;
        }
        .style83
        {
            width: 253px;
            height: 125px;
        }
        .style84
        {
        }
        .style85
        {
            width: 196px;
        }
        .style90
        {
            width: 728px;
        }
        .style91
        {
            width: 196px;
            height: 238px;
        }
        .style92
        {
            width: 728px;
            height: 238px;
        }
        .style93
        {
            height: 238px;
        }
        .style94
        {
            height: 24px;
        }
        .style95
        {
            width: 254px;
        }
        .style96
        {
            width: 254px;
            height: 13px;
        }
        .style97
        {
            width: 254px;
            height: 112px;
        }
        .style98
        {
            width: 254px;
            height: 125px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div>
            <table style="width: 100%; height: 484px;">
                <tr>
                    <td class="style67">
                        <table style="width: 100%; height: 101px;">
                            <tr>
                                <td class="style70" rowspan="7">
                                    <asp:Panel ID="Panel1" runat="server" Height="305px" Width="995px">
                                        <table style="width:98%; height: 297px;">
                                            <tr>
                                                <td class="style91">
                                                </td>
                                                <td class="style92">


                                                 <div id="myslideshow"></div>





                                                    &nbsp;</td>
                                                <td class="style93">
                                                    <table style="width: 89%; height: 228px;">
                                                        <tr>
                                                            <td class="style94" colspan="3">
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                            <td>
                                                                &nbsp;</td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style85">
                                                    &nbsp;</td>
                                                <td class="style90">

                                                <h2><script language="JavaScript1.2">



var message=".........LANKA SPORTREIZEN BEST TAVELLING AGENT!"
var neonbasecolor="black"
var neontextcolor="yellow"
var neontextcolor2="#FFFFA8"
var flashspeed=100	 // speed of flashing in milliseconds
var flashingletters=3	 // number of letters flashing in neontextcolor
var flashingletters2=1	 // number of letters flashing in neontextcolor2 (0 to disable)
var flashpause=0	 // the pause between flash-cycles in milliseconds

///No need to edit below this line/////

var n=0
if (document.all||document.getElementById){
document.write('<font color="'+neonbasecolor+'">')
for (m=0;m<message.length;m++)
document.write('<span id="neonlight'+m+'">'+message.charAt(m)+'</span>')
document.write('</font>')
}
else
document.write(message)

function crossref(number){
var crossobj=document.all? eval("document.all.neonlight"+number) : document.getElementById("neonlight"+number)
return crossobj
}

function neon(){

//Change all letters to base color
if (n==0){
for (m=0;m<message.length;m++)
crossref(m).style.color=neonbasecolor
}

//cycle through and change individual letters to neon color
crossref(n).style.color=neontextcolor

if (n>flashingletters-1) crossref(n-flashingletters).style.color=neontextcolor2 
if (n>(flashingletters+flashingletters2)-1) crossref(n-flashingletters-flashingletters2).style.color=neonbasecolor


if (n<message.length-1)
n++
else{
n=0
clearInterval(flashing)
setTimeout("beginneon()",flashpause)
return
}
}

function beginneon(){
if (document.all||document.getElementById)
flashing=setInterval("neon()",flashspeed)
}
beginneon()
</script> </h2>






                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                                <td class="style69">
                        <asp:Label ID="lblLoggedUser" runat="server"></asp:Label>
                                    <br />
                                    <br />
                                </td>
                                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="imgUser" runat="server" Height="62px" Width="82px"  />
                                </td>
                            </tr>
                            <tr>
                                <td class="style69">
                                    &nbsp;</td>
                                <td>
                        <asp:Label ID="lblUserName" runat="server" Text="Username"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="lbtnLogout" runat="server" onclick="lbtnLogout_Click">Logout</asp:LinkButton>
                                </td>
                            </tr>
                            <tr>
                                <td class="style69">
                                    &nbsp;</td>
                                <td>
                        <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style69">
                                    &nbsp;</td>
                                <td>
                        <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td class="style69">
                                    &nbsp;</td>
                                <td>
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="style69">
                                    &nbsp;</td>
                                <td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnLogin" runat="server" onclick="btnLogin_Click" Text="Login" 
                            Width="57px" Height="32px" />
                                </td>
                            </tr>
                            <tr>
                                <td class="style69">
                                    &nbsp;</td>
                                <td>
                        <asp:Label ID="lblMessage" runat="server" Text="Label" Visible="False" Font-Bold="True" 
                                        ForeColor="Red"></asp:Label>
                                </td>
                            </tr>
                        </table>
                       <table style="width: 100%; height: 407px;"> 
                       <!-- <table id="qw; style = width:100px; height:407px;">-->
                            <tr>
                                <td class="style72">
                                    &nbsp;</td>
                                <td class="style71">
                                    &nbsp;</td>
                                <td class="style95">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style76">
                                    &nbsp;</td>
                                <td class="style77">
                                    &nbsp;</td>
                                <td class="style96">
                                    &nbsp;</td>
                                <td class="style78">
                                    &nbsp;</td>
                                <td class="style78">
                                </td>
                            </tr>
                            <tr>
                                <td class="style79">
                                    &nbsp;</td>
                                <td class="style80">
                                    &nbsp;</td>
                                <td class="style97">
                                    &nbsp;</td>
                                <td class="style81">
                                    &nbsp;</td>
                                <td class="style81">
                                </td>
                            </tr>
                            <tr>
                                <td class="style82">
                                </td>
                                <td class="style83">
                                    <asp:ImageButton ID="ibtnAgen" runat="server" Height="121px" 
                                        ImageUrl="~/TileImage/Agent01.jpg" Width="123px" 
                                        onclick="ibtnAgen_Click" />
                                    <asp:ImageButton ID="ibtnChangePassword" runat="server" Height="121px" 
                                        ImageUrl="~/TileImage/Change Password01.jpg" Width="123px" />
                                </td>
                                <td class="style98">
                                    <asp:ImageButton ID="ibtnHotelManagement" runat="server" Height="121px" 
                                        ImageUrl="~/TileImage/Hotel Management01.jpg" Visible="False" 
                                        Width="123px" onclick="ibtnHotelManagement_Click" />
                                    <asp:ImageButton ID="ibtnMail" runat="server" Height="121px" 
                                        ImageUrl="~/TileImage/Mail01.jpg"  Visible="False" 
                                        Width="123px" onclick="ibtnMail_Click" />
                                </td>
                                <td class="style84" rowspan="2">
                                    <asp:ImageButton ID="ibtnCustomer" runat="server" Height="249px" 
                                        ImageUrl="~/TileImage/Customer01.jpg" onclick="ibtnCustomer_Click" 
                                        Visible="False" Width="123px" />
                                </td>
                                <td class="style84">
                                </td>
                            </tr>
                            <tr>
                                <td class="style82">
                                    &nbsp;</td>
                                <td class="style83">
                                    <asp:ImageButton ID="ibtnRoom" runat="server" Height="123px" 
                                        ImageUrl="~/TileImage/Rooms01.jpg" Width="249px" 
                                        onclick="ibtnRoom_Click" />
                                </td>
                                <td class="style98">
                                    <asp:ImageButton ID="ibtnEvent" runat="server" Height="123px" 
                                        ImageUrl="~/TileImage/Events01.jpg" Width="249px" 
                                        onclick="ibtnEvent_Click" />
                                </td>
                                <td class="style84">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style82">
                                    &nbsp;</td>
                                <td class="style83">
                                    <asp:ImageButton ID="ibtnSport" runat="server" Height="123px" 
                                        ImageUrl="~/TileImage/Sports01.jpg" Width="249px" 
                                        onclick="ibtnSport_Click" />
                                </td>
                                <td class="style98">
                                    <asp:ImageButton ID="ibtnTravel" runat="server" Height="123px" 
                                        ImageUrl="~/TileImage/Travel01.jpg" Width="249px" 
                                        onclick="ibtnTravel_Click" />
                                </td>
                                <td class="style84">
                                    <asp:ImageButton ID="ibtnReceptionist" runat="server" Height="121px" 
                                        ImageUrl="~/TileImage/Reception01.jpg" Visible="False" Width="123px" 
                                        onclick="ibtnReceptionist_Click" />
                                </td>
                                <td class="style84">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style82">
                                    &nbsp;</td>
                                <td class="style83">
                                    &nbsp;</td>
                                <td class="style98">
                                    &nbsp;</td>
                                <td class="style84">
                                    &nbsp;</td>
                                <td class="style84">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style82">
                                    &nbsp;</td>
                                <td class="style83">
                                    &nbsp;</td>
                                <td class="style98">
                                    &nbsp;</td>
                                <td class="style84">
                                    &nbsp;</td>
                                <td class="style84">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style82">
                                    &nbsp;</td>
                                <td class="style83">
                                    &nbsp;</td>
                                <td class="style98">
                                    &nbsp;</td>
                                <td class="style84">
                                    &nbsp;</td>
                                <td class="style84">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style72">
                                    &nbsp;</td>
                                <td class="style71">
                                    &nbsp;</td>
                                <td class="style95">
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                                <td>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="style66">

                    




                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
                </table>
        </div>
    
    </div>
    </form>
</body>
</html>
