using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDüzenle : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;

    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler where Yemekid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TextBox1.Text = dr[1].ToString();
                TextBox2.Text = dr[2].ToString();
                TextBox3.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();


            if (Page.IsPostBack == false)
            {

                //kategori listesi
                SqlCommand komut = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
                SqlDataReader dr2 = komut.ExecuteReader();

                DropDownList1.DataTextField = "kategoriad";
                DropDownList1.DataValueField = "kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarifi=@p3,kategoriid=@p4 where yemekid=@p5", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1",TextBox1.Text);
        komut.Parameters.AddWithValue("@p2",TextBox2.Text);
        komut.Parameters.AddWithValue("@p3",TextBox3.Text);
        komut.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p5",id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }


    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}