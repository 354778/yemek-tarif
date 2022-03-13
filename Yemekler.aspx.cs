using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yemekler : System.Web.UI.Page
{
	sqlsinif  bgl = new sqlsinif();

	string islem = "";
	string id = "";
	protected void Page_Load(object sender, EventArgs e)
	{

		Panel2.Visible = false;
		Panel4.Visible = false;

		if (Page.IsPostBack == false )
        {
			islem = Request.QueryString["islem"];
			id = Request.QueryString["Yemekid"];

			//kategori listesi
			SqlCommand komut = new SqlCommand("select * from tbl_kategoriler", bgl.baglanti());
			SqlDataReader dr2 = komut.ExecuteReader();

			DropDownList1.DataTextField = "kategoriad";
			DropDownList1.DataValueField = "kategoriid";

			DropDownList1.DataSource = dr2;
			DropDownList1.DataBind();
		}

		//yemek listesi
		SqlCommand cmd = new SqlCommand("select * from Tbl_Yemekler", bgl.baglanti());
		SqlDataReader dr = cmd.ExecuteReader(); 
		DataList1.DataSource = dr;
		DataList1.DataBind();

		if(islem == "sil")
        {
			SqlCommand komut = new SqlCommand("delete from tbl_yemekler where yemekid=@p1", bgl.baglanti());
			komut.Parameters.AddWithValue("@p1", id);
			komut.ExecuteNonQuery();
			bgl.baglanti().Close();
        }

	}

	protected void Button1_Click(object sender, EventArgs e)
	{
		Panel2.Visible = true;

	}

	protected void Button2_Click(object sender, EventArgs e)
	{
		Panel2.Visible=false;
	}

	protected void Button3_Click(object sender, EventArgs e)
	{
		Panel4.Visible=true;
	}

	protected void Button4_Click(object sender, EventArgs e)
	{
		Panel4.Visible=false;
	}

	protected void btn_ekle_Click(object sender, EventArgs e)
	{
		// yemek ekleme 
		SqlCommand command = new SqlCommand("insert into tbl_yemekler" +
			"(yemekad,yemekmalzeme,yemektarifi,kategoriid) values (@p1,@p2,@p3,@p4)",bgl.baglanti());
		command.Parameters.AddWithValue("@p1", TextBox1.Text);
		command.Parameters.AddWithValue("@p2", TextBox2.Text);
		command.Parameters.AddWithValue("@p3",TextBox3.Text);
		command.Parameters.AddWithValue("@p4",DropDownList1.SelectedValue);
		command.ExecuteNonQuery();
		bgl.baglanti().Close();


		//yemek sayısını artırma
		SqlCommand cmd = new SqlCommand("update tbl_kategoriler set kategoriadet = kategoriadet +1 where kategoriid = @p1",bgl.baglanti());
		cmd.Parameters.AddWithValue("@p1",DropDownList1.SelectedValue);
		cmd.ExecuteNonQuery();
		bgl.baglanti().Close();
 	}
}