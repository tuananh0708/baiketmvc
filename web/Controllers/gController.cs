using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using web.Models;

namespace web.Controllers
{
    public class gController : Controller
    {
        // GET: g
        exec j = new exec();
        public ActionResult Index()
        {
            return View();
        }
        public JsonResult getall()
        {
            return Json(j.getsp(), JsonRequestBehavior.AllowGet);
        }
        public JsonResult getloai()
        {
            return Json(j.getlsp(), JsonRequestBehavior.AllowGet);
        }
        public ActionResult loaisp()
        {
            return View();

        }
        public JsonResult getbyloai(string maloaisp)
        {
            return Json(j.getbylsp(maloaisp), JsonRequestBehavior.AllowGet);
        }
     
    }
}