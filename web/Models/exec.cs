using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace web.Models
{
    public class exec
    {
        public static DataTable log(string cmdtxt)
        {
            SqlConnection conn = new SqlConnection(ConnectionString);
            conn.Open();
            SqlDataAdapter cmd = new SqlDataAdapter(cmdtxt, conn);


            DataTable dt = new DataTable();

            cmd.Fill(dt);
            return dt;
        }
        public static readonly string ConnectionString = "Data Source=(local);Initial Catalog=mmm;Integrated Security=True";

        internal object getlsp()
        {

            DataTable dt = new DataTable();
            string cmdtext = string.Format(@"select  * from loaisanpham");
            dt = log(cmdtext);
            List<loaisp> li = new List<loaisp>();
            foreach (DataRow dr in dt.Rows)
            {
                loaisp ad = new loaisp();
                ad.maloaisanpham = dr[0].ToString();
                ad.loaisanpham = dr[1].ToString();
                ad.more = dr[2].ToString();
                li.Add(ad);
            }
            return li;
        }

        internal object getbylsp(string maloaisp)
        {

            DataTable dt = new DataTable();
            string cmdtext = string.Format(@"select  * from loaisanpham where maloaisanpham ='{0}'",maloaisp);
            dt = log(cmdtext);
            List<loaisp> li = new List<loaisp>();
            foreach (DataRow dr in dt.Rows)
            {
                loaisp ad = new loaisp();
                ad.maloaisanpham = dr[0].ToString();
                ad.loaisanpham = dr[1].ToString();
                ad.more = dr[2].ToString();
                li.Add(ad);
            }
            return li;
        }

        internal object getsp()
        {

            DataTable dt = new DataTable();
            string cmdtext = string.Format(@"select  * from sanpham");
            dt = log(cmdtext);
            List<sanpham> li = new List<sanpham>();
            foreach (DataRow dr in dt.Rows)
            {
                sanpham ad = new sanpham();
                ad.maloaisanpham = dr[0].ToString();
                ad.masanpham = dr[1].ToString();
                ad.tensanpham = dr[2].ToString();
                ad.hinhanh = dr[3].ToString();
                ad.gia =int.Parse (dr[4].ToString());
                ad.soluong = int.Parse(dr[5].ToString());
                ad.mota = dr[6].ToString();
                li.Add(ad);
            }
            return li;
        }
    }
}