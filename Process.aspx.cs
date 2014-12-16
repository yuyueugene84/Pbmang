using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Process : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack){
            ListBox1.Items.Clear();
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //Set up SqlDataSource1
        SqlDataSource SqlDataSource1 = new SqlDataSource();
        SqlDataSource1.ConnectionString = WebConfigurationManager.ConnectionStrings["pbmangConnectionString0"].ConnectionString;
        String sqlcmd = "select Pro_Name from v_Material ";
        String ReqStr = "where top10 = '" + DropDownList1.SelectedValue + "'"; 
        String ReqStr2 = "group by Pro_Name";
        SqlDataSource1.SelectCommand = sqlcmd + ReqStr + ReqStr2;

        //Display Selected Process
        DataView DV = new DataView();
        DV = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        ListBox1.DataSource = DV;
        ListBox1.Items.Clear();

        if (DropDownList1.SelectedValue != "請選擇製程:")
        {

            //Display all sub-process on listbox1
            for (int i = 0; i < DV.Count; i++)
            {
                ListBox1.Items.Add(DV[i][0].ToString());
            }

            //Calculate Input Pb quantity
            SqlDataSource SqlDataSource2 = new SqlDataSource();
            SqlDataSource2.ConnectionString = WebConfigurationManager.ConnectionStrings["pbmangConnectionString0"].ConnectionString;
            String sqlcmd2 = "select SUM(Material_Quantity) from v_Material ";
            String ReqStr3 = "and Material_Type = '原料'";
            SqlDataSource2.SelectCommand = sqlcmd2 + ReqStr + ReqStr3;
            DataView DV2 = new DataView();
            DV2 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            double Input_pb;

            //Calculate Energy Pb quantity
            SqlDataSource SqlDataSource3 = new SqlDataSource();
            SqlDataSource3.ConnectionString = WebConfigurationManager.ConnectionStrings["pbmangConnectionString0"].ConnectionString;
            //String sqlcmd2 = "select SUM(Material_Quantity) from v_Material ";
            String ReqStrX = "and Material_Type = '燃料'";
            SqlDataSource3.SelectCommand = sqlcmd2 + ReqStr + ReqStrX;
            DataView DV7 = new DataView();
            DV7 = (DataView)SqlDataSource3.Select(DataSourceSelectArguments.Empty);
            double Energy_pb;
            double Input_Sum_pb;


            try
            {
                Input_pb = (double)DV2[0][0];
                Energy_pb = (double)DV7[0][0];
                Input_Sum_pb = Input_pb + Energy_pb;
                Label7.Text = Input_pb.ToString("##,#.00");
                Label3.Text = Input_Sum_pb.ToString("##,#.00");
                //Label3.Text = DV2[0][0].ToString();
            }
            catch
            {
                Label7.Text = "0";
                Label3.Text = "0";
                Input_pb = 0;
                //Response.Write("Input_pb is not number...");
                //Response.End();
            }


            //Calculate Product Pb quantity

            String sqlcmd3 = "select SUM(Suppose_PB_Quantity) from v_Material ";
            String ReqStr4 = " and Material_Type='產品'";
            SqlDataSource2.SelectCommand = sqlcmd3 + ReqStr + ReqStr4;
            DataView DV3 = new DataView();
            DV3 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            //Label11.Text = DV3[0][0].ToString();
            double Product_pb;
            double Pro_pb_per;

            try
            {
                Product_pb = (double)DV3[0][0];
                Label11.Text = Product_pb.ToString("##,#.00");
                Pro_pb_per = ((Product_pb / Input_pb) * 100);
                Label15.Text = Pro_pb_per.ToString("##,#.00");
            }
            catch
            {
                Label11.Text = "0";
                Label15.Text = "0";
            }


            //Calculate Waste Emission Pb quantity

            String sqlcmd4 = "select SUM(Suppose_PB_Quantity) from v_Material ";
            String ReqStr5 = " and Material_Type='廢棄物'";
            SqlDataSource2.SelectCommand = sqlcmd4 + ReqStr + ReqStr5;
            DataView DV4 = new DataView();
            DV4 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            //Label13.Text = DV4[0][0].ToString();

            double Waste_pb;
            double Waste_pb_per;
            try
            {
                Waste_pb = (double)DV4[0][0];
                Label13.Text = Waste_pb.ToString("##,#.00");
                Waste_pb_per = ((Waste_pb / Input_pb) * 100);
                Label16.Text = Waste_pb_per.ToString("##,#.00");
            }
            catch
            {
                Label13.Text = "0";
                Label16.Text = "0";
            }

            //Calculate Air Pollution Pb quantity

            String sqlcmd5 = "select SUM(Suppose_PB_Quantity) from v_Material ";
            String ReqStr6 = " and Material_Type=''";
            SqlDataSource2.SelectCommand = sqlcmd5 + ReqStr + ReqStr6;
            DataView DV5 = new DataView();
            DV5 = (DataView)SqlDataSource2.Select(DataSourceSelectArguments.Empty);
            //Label13.Text = DV4[0][0].ToString();

            double Air_pb;
            double Air_pb_per;
            Label9.Text = "0.00";
            Label14.Text = "0.00";

            try
            {
                Air_pb = (double)DV5[0][0];
                //Label9.Text = Air_pb.ToString("##,#");
                Air_pb_per = ((Air_pb / Input_pb) * 100);
                //Label14.Text = Air_pb_per.ToString("##.##");
            }
            catch
            {
                Label9.Text = "0";
            }

            //Label5.Text = (Air_pb + Product_pb).ToString(##,#);

        }//end if
        
        else {
            //SqlDataSource2.SelectCommand = "";
           // Response.Write("hi");
            ListBox1.Items.Clear();
            Label3.Text = " ";
            Label5.Text = " ";
            Label7.Text = " ";
            Label9.Text = " ";
            Label11.Text = " ";
            Label13.Text = " ";
            Label14.Text = " ";
            Label15.Text = " ";
            Label16.Text = " ";
        }
       


    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
    
    private void Controls(string p)
    {
        throw new NotImplementedException();
    }
}