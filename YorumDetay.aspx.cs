using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];

        if (Page.IsPostBack == false)
        {


            
            SqlCommand cmd = new SqlCommand("select yorumadsoyad,yorummail,yorumicerik,yemekad from tbl_yorumlar inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1", bgl.baglanti());
            cmd.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                TxtAdSoyad.Text = dr[0].ToString();
                TxtMail.Text = dr[1].ToString();
                txticerik.Text = dr[2].ToString();
                TxtYemek.Text = dr[3].ToString();
            }
            bgl.baglanti().Close();

        }
    }
protected void Btn_Onayla_Click(object sender, EventArgs e)
    {
        SqlCommand cmd2 = new SqlCommand("update tbl_yorumlar set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
        cmd2.Parameters.AddWithValue("@p1", txticerik.Text);
        cmd2.Parameters.AddWithValue("@p2",1);
        cmd2.Parameters.AddWithValue("@p3", id);
        cmd2.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}