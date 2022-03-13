using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    sqlsinif snf = new sqlsinif();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid= Request.QueryString["kategoriid"];
        SqlCommand cmd = new SqlCommand("Select*from Tbl_yemekler where kategoriid=@p1",snf.baglanti());
        cmd.Parameters.AddWithValue("@p1",kategoriid);
        SqlDataReader dr = cmd.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();   
    }
}