﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Maintain : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String sqlcmd1 = "SELECT * FROM [pbmang].[dbo].[Factory_Basic] ";
        //String sqlcmd2 = "SELECT * FROM [pbmang].[dbo].[v_Material] ";
        String ReqStr = "WHERE ([epano] = '" + Request.QueryString["epano"] + "')";

        SqlDataSource1.ConnectionString = WebConfigurationManager.ConnectionStrings["pbmangConnectionString0"].ConnectionString;
        SqlDataSource1.SelectCommand = sqlcmd1 + ReqStr;
        DataView DV = new DataView();
        DV = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        for (int i = 0; i < 9; i++)
        {
           TextBox xx = (TextBox)this.FindControl("TextBox" + (i + 1));
            xx.Text = DV[0][i].ToString();
        }
        SqlDataSource1.Dispose(); 
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //Response.Write("Hello");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    private void Controls(string p)
    {
        throw new NotImplementedException();
    }
}