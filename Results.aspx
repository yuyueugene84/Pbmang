<%@ Page Language="C#" ContentType="text/html" Debug = "true" ResponseEncoding="utf-8"  CodeFile="Results.aspx.cs" Inherits="Results" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>無標題文件</title>
    <link href="CSS/Grid.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 120px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" clientidmode="Inherit">
    <div align="center">
        <h1>工廠資料&nbsp; <br />
            <br />
        </h1>
        <%--<h2>基本資料</h2>--%>
        <p>
            <%--<h2 align="center">工廠基本資料</h2>--%>
            <p>
                <table cellpadding="0" cellspacing="0" style="height: 165px; width: 894px" 
                    class="MyRow">
                    <tr>
                        <td align="justify" class="style1">
                            <strong>管編</strong></td>
                        <td align="left">
                            <asp:Label ID="Label1" runat="server" Text="Label" ondatabinding="Page_Load"></asp:Label></td>
                        <td>
                            <strong>電話</strong></td>
                        <td>
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                           
                            <strong>工廠名稱</strong></td>
                        <td align="left">
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <strong>設定日期</strong></td>
                        <td>
                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                           <strong> 縣市</strong></td>
                        <td align="left">
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <strong>行業別名稱</strong></td>
                        <td>
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                            <strong>廠址</strong></td>
                        <td align="left">
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            <strong>行業別代碼</strong></td>
                        <td>
                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                            <strong>負責人</strong></td>
                        <td align="left">
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>

                    </tr>
                </table>
                <%--<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
                     Height="50px" 
                    Width="468px" BackColor="White" BorderColor="White" BorderStyle="Ridge" 
                    BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" 
                     DataKeyNames="epano">
                    <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <Fields>
                        <asp:BoundField DataField="epano" HeaderText="管編" ReadOnly="True" 
                            SortExpression="epano" />
                        <asp:BoundField DataField="FacName" HeaderText="工廠名稱" 
                            SortExpression="FacName" />
                        <asp:BoundField DataField="FacCounty" HeaderText="縣市" 
                            SortExpression="FacCounty" />
                        <asp:BoundField DataField="FacAddr" HeaderText="廠址" 
                            SortExpression="FacAddr" />
                        <asp:BoundField DataField="FacOwner" HeaderText="負責人" 
                            SortExpression="FacOwner" />
                        <asp:BoundField DataField="FacTel" HeaderText="電話" 
                            SortExpression="FacTel" />
                        <asp:BoundField DataField="SetDate" HeaderText="設定日期" 
                            SortExpression="SetDate" />
                        <asp:BoundField DataField="Business_Name" HeaderText="行業別名稱" 
                            SortExpression="Business_Name" />
                        <asp:BoundField DataField="Business_Code" HeaderText="行業別代碼" 
                            SortExpression="Business_Code" />
                    </Fields>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                </asp:DetailsView>--%>



                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:pbmangConnectionString0 %>" 
                    SelectCommand="SELECT * FROM [Factory_Basic] WHERE ([epano] = @epano)" 
                    >
                    <SelectParameters>
                        <asp:QueryStringParameter Name="epano" QueryStringField="epano" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <br />
                <br />
                <%--<asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:pbmangConnectionString16 %>" 
                    SelectCommand="SELECT * FROM [Factory_Basic] WHERE ([epano] = @epano)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="epano" QueryStringField="epano" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>--%>                <%--<h2>製程資料表:</h2>--%>
            </p>
    </div>
    <div>
    <%--<h2 align ="center">物料類別製程表</h2>--%>
    <asp:GridView ID="GridView1" runat="server" align ="center" 
        AutoGenerateColumns="False" CssClass="MyGridView" 
        DataKeyNames="EPANo,Pro_code,Pro_no,Material_Code" >
        <Columns>
            <asp:BoundField DataField="Pro_Name" HeaderText="製程名稱" 
                SortExpression="Pro_Name" />
           <%-- <asp:BoundField DataField="EPANo" HeaderText="管編" ReadOnly="True" 
                SortExpression="EPANo" />--%>
            <asp:BoundField DataField="Pro_code" HeaderText="製程編號" ReadOnly="True" 
                SortExpression="Pro_code" />
            <asp:BoundField DataField="Pro_no" HeaderText="製程代碼" ReadOnly="True" 
                SortExpression="Pro_no" />
            <asp:BoundField DataField="Material_Type" HeaderText="物料類別" 
                SortExpression="Material_Type" />
            <asp:BoundField DataField="DataType" HeaderText="資料類別" 
                SortExpression="DataType" />
            <asp:BoundField DataField="Material_Code" HeaderText="物料代碼" 
                ReadOnly="True" SortExpression="Material_Code" />
            <asp:BoundField DataField="Material_Name" HeaderText="物料名稱" 
                SortExpression="Material_Name" />
            <asp:BoundField DataField="Material_Quantity" HeaderText="物料量" 
                SortExpression="Material_Quantity" />
            <asp:BoundField DataField="Unit" HeaderText="單位" SortExpression="Unit" />
            <asp:BoundField DataField="Unit_Convert" HeaderText="單位轉換" 
                SortExpression="Unit_Convert" />
            <asp:BoundField DataField="ProtectionNo" HeaderText="汙染防治設施編號" 
                SortExpression="ProtectionNo" />
            <asp:BoundField DataField="ProtectionType" HeaderText="汙染防治設施類別" 
                SortExpression="ProtectionType" />
            <asp:BoundField DataField="PollMaterial" HeaderText="汙染物" 
                SortExpression="PollMaterial" />
            <asp:BoundField DataField="EmiQuantity" HeaderText="排放量" 
                SortExpression="EmiQuantity" />
            <asp:BoundField DataField="PermitLicense" HeaderText="許可證" 
                SortExpression="PermitLicense" />
            <asp:BoundField DataField="Suppose_PB_Coeff" HeaderText="推估含鉛系數" 
                SortExpression="Suppose_PB_Coeff" />
            <asp:BoundField DataField="Suppose_PB_Quantity" 
                HeaderText="推估含鉛量" SortExpression="Suppose_PB_Quantity" />
            <asp:BoundField DataField="Collection_Method" HeaderText="收集方式" 
                SortExpression="Collection_Method" />
        </Columns>
    </asp:GridView>

    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:pbmangConnectionString0 %>" 
        SelectCommand="SELECT * FROM [v_Material] WHERE ([EPANo] = @EPANo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="EPANo" QueryStringField="epano" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    </div>


<%--            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="epano,Pro_code,Pro_no" 
            CssClass="MyGridView">
                <Columns>
                   <%-- <asp:BoundField DataField="epano" HeaderText="管編" ReadOnly="True" 
                        SortExpression="epano" />--%>
                   <%-- <asp:BoundField DataField="Pro_code" HeaderText="製程代碼" ReadOnly="True" 
                        SortExpression="Pro_code" />
                    <asp:BoundField DataField="Pro_no" HeaderText="製程編號" ReadOnly="True" 
                        SortExpression="Pro_no" />
                    <asp:BoundField DataField="Pro_Name" HeaderText="製程名稱" 
                        SortExpression="Pro_Name" />
                </Columns>
            </asp:GridView>--%>
<%--        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:pbmangConnectionString8 %>" SelectCommand="SELECT * FROM [Process] WHERE ([epano] = @epano)">
            <SelectParameters>
                <asp:QueryStringParameter Name="epano" QueryStringField="epano" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>--%>
        </p>
        <p>

<%--        <asp:GridView ID="GridView1" runat="server" CssClass="MyGridView" 
           DataSourceID="SqlDataSource2"  AllowPaging="True" AllowSorting="True">--%>
               <%--<asp:GridView ID="GridView1" runat="server" align ="center" 
        AutoGenerateColumns="False" CssClass="MyGridView" 
        DataKeyNames="EPANo,Pro_code,Pro_no,Material_Code" 
        DataSourceID="SqlDataSource2">
        <Columns>
            <asp:BoundField DataField="Pro_Name" HeaderText="Pro_Name" 
                SortExpression="Pro_Name" />
            <asp:BoundField DataField="EPANo" HeaderText="EPANo" ReadOnly="True" 
                SortExpression="EPANo" />
            <asp:BoundField DataField="Pro_code" HeaderText="Pro_code" ReadOnly="True" 
                SortExpression="Pro_code" />
            <asp:BoundField DataField="Pro_no" HeaderText="Pro_no" ReadOnly="True" 
                SortExpression="Pro_no" />
            <asp:BoundField DataField="Material_Type" HeaderText="Material_Type" 
                SortExpression="Material_Type" />
            <asp:BoundField DataField="DataType" HeaderText="DataType" 
                SortExpression="DataType" />
            <asp:BoundField DataField="Material_Code" HeaderText="Material_Code" 
                ReadOnly="True" SortExpression="Material_Code" />
            <asp:BoundField DataField="Material_Name" HeaderText="Material_Name" 
                SortExpression="Material_Name" />
            <asp:BoundField DataField="Material_Quantity" HeaderText="Material_Quantity" 
                SortExpression="Material_Quantity" />
            <asp:BoundField DataField="Unit" HeaderText="Unit" SortExpression="Unit" />
            <asp:BoundField DataField="Unit_Convert" HeaderText="Unit_Convert" 
                SortExpression="Unit_Convert" />
            <asp:BoundField DataField="ProtectionNo" HeaderText="ProtectionNo" 
                SortExpression="ProtectionNo" />
            <asp:BoundField DataField="ProtectionType" HeaderText="ProtectionType" 
                SortExpression="ProtectionType" />
            <asp:BoundField DataField="PollMaterial" HeaderText="PollMaterial" 
                SortExpression="PollMaterial" />
            <asp:BoundField DataField="EmiQuantity" HeaderText="EmiQuantity" 
                SortExpression="EmiQuantity" />
            <asp:BoundField DataField="PermitLicense" HeaderText="PermitLicense" 
                SortExpression="PermitLicense" />
            <asp:BoundField DataField="Suppose_PB_Coeff" HeaderText="Suppose_PB_Coeff" 
                SortExpression="Suppose_PB_Coeff" />
            <asp:BoundField DataField="Suppose_PB_Quantity" 
                HeaderText="Suppose_PB_Quantity" SortExpression="Suppose_PB_Quantity" />
            <asp:BoundField DataField="Collection_Method" HeaderText="Collection_Method" 
                SortExpression="Collection_Method" />
        </Columns>
    </asp:GridView>--%>

   <%-- <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:pbmangConnectionString0 %>" 
        SelectCommand="SELECT * FROM [v_Material] WHERE ([EPANo] = @EPANo)">
        <SelectParameters>
            <asp:QueryStringParameter Name="EPANo" QueryStringField="epano" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>

        </p>

        <br />
        <br />
        <asp:Button ID="Button1" runat="server"  onclick="Button1_Click" 
            Text="回首頁" Font-Bold="True"  />
        <br />
    </div>
    </form>
</body>
</html>
