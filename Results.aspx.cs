using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Results : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {    
        sqldataSetting2();
        GridView1.DataSourceID = "SqlDataSource2";
    }

 
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    
    void sqldataSetting2(){
        String sqlcmd1 = "SELECT * FROM [pbmang].[dbo].[Factory_Basic] ";
        String sqlcmd2 = "SELECT * FROM [pbmang].[dbo].[v_Material] ";
        String ReqStr = "WHERE ([epano] = '" + Request.QueryString["epano"] + "')";

        SqlDataSource1.ConnectionString = WebConfigurationManager.ConnectionStrings["pbmangConnectionString0"].ConnectionString;
        SqlDataSource1.SelectCommand = sqlcmd1 + ReqStr;
        DataView DV = new DataView();
        DV = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        for(int i=0; i<9; i++){
            Label xx = (Label)this.FindControl("Label" + (i+1));
            xx.Text = DV[0][i].ToString();
        }
        SqlDataSource1.Dispose();

        SqlDataSource2.ConnectionString = WebConfigurationManager.ConnectionStrings["pbmangConnectionString0"].ConnectionString;
        string ReqStr2 = "WHERE ([epano] = '" + Request.QueryString["epano"] + "')";
        SqlDataSource2.SelectCommand = sqlcmd2 + ReqStr2;
        SqlDataSource2.Dispose();
    }

    private void Controls(string p)
    {
        throw new NotImplementedException();
    }
}
