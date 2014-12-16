<%@ Page Language="C#" AutoEventWireup="true" Debug = "true" ResponseEncoding="utf-8" CodeFile="Process.aspx.cs" Inherits="Process" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #apDiv1 {
	position:absolute;
	left:25px;
	top:508px;
	width:293px;
	height:199px;
	z-index:1;
}
    #apDiv2 {
	position:absolute;
	left:447px;
	top:462px;
	width:290px;
	height:340px;
	z-index:2;
}
    #apDiv3 {
	position:absolute;
	left:905px;
	top:364px;
	width:326px;
	height:168px;
	z-index:3;
}
    #apDiv4 {
	position:absolute;
	left:906px;
	top:559px;
	width:324px;
	height:164px;
	z-index:4;
}
    #apDiv5 {
	position:absolute;
	left:905px;
	top:751px;
	width:327px;
	height:154px;
	z-index:5;
}
        .style1
        {
            width: 1000px;
            height: 104px;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
    <div id="apDiv1">
        <div align = "center"><asp:Label ID="Label1" runat="server" Font-Bold="True" Text="原物料："></asp:Label></div>
        <br />
        <br />
        <asp:Label ID="Label6" runat="server" Text="鉛含量(公噸/年)："></asp:Label>
        <asp:Label ID="Label7" runat="server" Font-Bold="True"></asp:Label>
        <br />
    </div>
    <div id="apDiv2">
    <div align ="center"><Strong>製程名稱：<br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Height="176px" Width="259px">
        </asp:ListBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="輸入鉛含量(公噸/年)："></asp:Label>
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />


        <asp:Label ID="Label4" runat="server" Text="輸出鉛含量(公噸/年)："></asp:Label>
        <asp:Label ID="Label5" runat="server"></asp:Label>
        </Strong></div>

    </div>
    <div id="apDiv3"><div align ="center"><strong>排放：</strong></div><br />
        <asp:Label ID="Label8" runat="server" Text="鉛含量(公噸/年)："></asp:Label>
        <asp:Label ID="Label9" runat="server" Font-Bold="True"></asp:Label>
        <br />
        (佔原物料：<asp:Label ID="Label14" runat="server" 
            Font-Bold="True"></asp:Label>
        %)</div>
    <div id="apDiv4"><div align ="center"><strong>產品：</strong></div><br />
        <asp:Label ID="Label10" runat="server" Text="鉛含量(公噸/年)："></asp:Label>
        <asp:Label ID="Label11" runat="server" Font-Bold="True"></asp:Label>
        <br />
        (佔原物料：<asp:Label ID="Label15" runat="server" 
            Font-Bold="True"></asp:Label>
        %)</div>
    <div id="apDiv5"><div align ="center"><strong>廢棄物排放：</strong></div><br />
        <asp:Label ID="Label12" runat="server" Text="鉛含量(公噸/年)："></asp:Label>
        <asp:Label ID="Label13" runat="server" Font-Bold="True"></asp:Label>
        <br />
        (佔原物料：<asp:Label ID="Label16" runat="server" 
            Font-Bold="True"></asp:Label>
        %)</div>
    <p><%--<h1 align="center">物質流分析</h1>--%>
    </br>
        <img alt="banner" class="style1" src="image/TapWaterBanner.jpg" /></br>
    <h2>十大製程選擇:</h2>
    <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="229px" 
        onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
        AutoPostBack="True">
        <asp:ListItem Selected="True">請選擇製程:</asp:ListItem>
        <asp:ListItem>煉鋼程序</asp:ListItem>
        <asp:ListItem>鋼鑄造程序</asp:ListItem>
        <asp:ListItem>水泥及水泥製品製造程序</asp:ListItem>
        <asp:ListItem>油漆化學製造程序</asp:ListItem>
        <asp:ListItem>顏料化學製造程序</asp:ListItem>
        <asp:ListItem>固體廢棄物焚化處理程序</asp:ListItem>
        <asp:ListItem>鉛蓄電池極板製造及組立程序</asp:ListItem>
        <asp:ListItem>鉛二級冶練及精煉程序</asp:ListItem>
        <asp:ListItem>銅二級冶煉程序</asp:ListItem>
        <asp:ListItem>事業廢棄物再利用或處理程序</asp:ListItem>
        <asp:ListItem>總鉛含量</asp:ListItem>
    </asp:DropDownList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    &nbsp;</p>

    <p>
        &nbsp;<div>
            <img src="image/process.jpg" /><div align ="center"></div>&nbsp;</div>
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" 
            onclick="Button1_Click" Text="回首頁" />
    </p>
    </form>
</body>
</html>
