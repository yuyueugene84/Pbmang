<%@ Page Language="C#" Debug="true" AutoEventWireup="true" CodeFile="Default.aspx.cs"
    Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="CSS/Grid.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 1000px;
            height: 104px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post" visible="True">
    <div>
        <h1 align="left">
            <img alt="banner" class="style1" src="image/TapWaterBanner.jpg" /></h1>
    </div>
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server">
        &nbsp;<br /> <asp:Button ID="Button1" runat="server" Font-Bold="True" Height="51px" Text="查詢/編輯" Width="130px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button
            ID="Button2" runat="server" Font-Bold="True" Height="50px" Text="物質流" 
            Width="130px" onclick="Button2_Click" />
        <br />
        <br />
        <br />
        <br />
        &nbsp;<strong>工廠名稱 (FacName):</strong>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1" runat="server" Style="margin-top: 0px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>管編 (epano):</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Factory_name" runat="server" Text="工廠查詢" Font-Bold="True" Font-Size="Medium"
            OnClick="btnQuery" />
    </asp:Panel>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel2" runat="server">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <h1 align="center">
            查詢結果</h1>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True"
            AutoGenerateColumns="False" DataKeyNames="epano" OnSelectedIndexChanging="GridView1_SelectedIndexChanging"
            CssClass="MyGridView" DataSourceID="SqlDataSource1" 
            OnPageIndexChanging="GridView1_PageIndexChanging" 
            EnableModelValidation="True" onrowcommand="GridView1_RowCommand">
            <Columns>
                <asp:BoundField DataField="epano" HeaderText="管編" ReadOnly="True" SortExpression="epano" />
                <asp:BoundField DataField="FacName" HeaderText="工廠名稱" SortExpression="FacName">
                    <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="FacCounty" HeaderText="縣市" SortExpression="FacCounty" />
                <asp:BoundField DataField="FacOwner" HeaderText="負責人" SortExpression="FacOwner" />
                <asp:BoundField DataField="FacTel" HeaderText="電話" SortExpression="FacTel" />
                <asp:BoundField DataField="SetDate" HeaderText="設立時間" SortExpression="SetDate" />
                <asp:BoundField DataField="Business_Name" HeaderText="行業別名稱" SortExpression="Business_Name" />
                <asp:BoundField DataField="Business_Code" HeaderText="行業別代碼" SortExpression="Business_Code" />
                <asp:CommandField ButtonType="Button" HeaderText='查詢'　SelectText="查詢" ShowSelectButton="True" />
                <asp:ButtonField ButtonType="Button" CommandName="Upd" HeaderText="編輯" Text="編輯" />
            </Columns>
            <SelectedRowStyle BackColor="Yellow" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <p>
            &nbsp;</p>
    </asp:Panel>
    </form>
</body>
</html>
