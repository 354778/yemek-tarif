using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class _Default : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("insert into tbl_mesajlar(mesajgonderen,mesajbaslik,mesajmail,mesajicerik) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
    cmd.Parameters.AddWithValue("@p1",Txtgonderen.Text);
        cmd.Parameters.AddWithValue("@p2", Txtkonu.Text);
        cmd.Parameters.AddWithValue("@p3", Txtmail.Text);
        cmd.Parameters.AddWithValue("@p4", Txtmesaj.Text);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

}