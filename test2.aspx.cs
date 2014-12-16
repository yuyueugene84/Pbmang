using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class test2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // get method start
        //Response.Write(Request.QueryString["ID"] + "<br>");
        //Response.Write(Request.QueryString["num"] + "<br>");
        //Response.Write(Request.QueryString["bb"]);
        //get method end

        Response.Write(Request.Form["TextBox1"]);
    }
}