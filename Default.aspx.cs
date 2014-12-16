using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    String sqlcmd = "";
    int flag;


    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataSetting();
        }
    }

    void SqlDataSetting()
    {
        //資料庫連接字串
        SqlDataSource1.ConnectionString = WebConfigurationManager.ConnectionStrings["pbmangConnectionString0"].ConnectionString;
        //SQL 指令
        sqlcmd = "SELECT * FROM [pbmang].[dbo].[Factory_Basic] ";
        if (TextBox1.Text != "" && TextBox2.Text != "")
        {
            sqlcmd += "WHERE [FacName] LIKE '%" + TextBox1.Text + "%' and epano like '" + TextBox2.Text + "%'";
        }
        else if (TextBox1.Text != "" && TextBox2.Text == "")
        {
            sqlcmd += "WHERE [FacName] LIKE '%" + TextBox1.Text + "%'";
        }
        else
        {
            sqlcmd += "WHERE epano like '" + TextBox2.Text + "%'";
        }

        SqlDataSource1.SelectCommand = sqlcmd;
        GridView1.DataSourceID = "SqlDataSource1";
        SqlDataSource1.Dispose();
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        SqlDataSetting();
    }

    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        // Response.Write(GridView1.DataKeys[e.NewSelectedIndex].Value);
        Response.Redirect("Results.aspx?epano=" + GridView1.DataKeys[e.NewSelectedIndex].Value);
    }

    //查詢按鈕觸發
    protected void btnQuery(object sender, EventArgs e)
    {
        SqlDataSetting();
        //將GridView頁數重設為0
        GridView1.PageIndex = 0;
    }

    //protected void Button2_Click(object sender, EventArgs e)
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Process.aspx");
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Upd")
        {
            //Response.Write("aa");
            Response.Redirect("Maintain.aspx?epano=" + GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
        }

    }
    //protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    //{
    //    if (e.CommandName == "Upd") {
    //        Response.Write("aa");
    //        Response.Redirect("Maintain.aspx?epano=" + GridView1.DataKeys[e.NewSelectedIndex].Value);
    //    }
    //}
}