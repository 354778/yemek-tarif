using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class KategoriAdminDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Kategoriid"];

        if (Page.IsPostBack == false) 
        {
            SqlCommand cmd = new SqlCommand("select*from Tbl_kategoriler where kategoriid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update tbl_kategoriler set kategoriad=@p1,kategoriadet=@p2 where kategoriid=@p3", bgl.baglanti()); 
        
        cmd.Parameters.AddWithValue("@p1",TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2",TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", id);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close(); 
    }
}