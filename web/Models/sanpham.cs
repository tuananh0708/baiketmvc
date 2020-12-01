using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace web.Models
{
    public class sanpham
    {
        public string maloaisanpham { get; set; }
        public string masanpham { get; set; }
        public string tensanpham { get; set; }
        public string hinhanh { get; set; }
        public int gia { get; set; }

        public int soluong { get; set; }
        public string mota { get; set; }
    }
}