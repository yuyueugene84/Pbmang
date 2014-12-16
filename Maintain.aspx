<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Maintain.aspx.cs" Debug="true" Inherits="Maintain" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 120px;
        }
        .style2
        {
            height: 165px;
            width: 894px;
            color: #003366;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 align="center">工廠資料維護</h1>
    <div>
    
                <table cellpadding="0" cellspacing="0" 
                    class="style2">
                    <tr>
                        <td align="justify" class="style1">
                            <strong>管編</strong></td>
                        <td align="left">
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <strong>電話</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                           
                            <strong>工廠名稱</strong></td>
                        <td align="left">
                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <strong>設定日期</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                           <strong> 縣市</strong></td>
                        <td align="left">
                            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <strong>行業別名稱</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                            <strong>廠址</strong></td>
                        <td align="left">
                            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            <strong>行業別代碼</strong></td>
                        <td>
                            <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
                        </td>

                    </tr>
                    <tr>
                        <td align="justify" class="style1">
                            <strong>負責人</strong></td>
                        <td align="left">
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </td>
                        <td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>

                    </tr>
                </table>
             　   <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="確認" 
                    Font-Bold="True" />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" Font-Bold="True" 
                    onclick="Button2_Click" Text="回首頁" />
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    
    </br>
    </div>
    </form>
</body>
</html>
