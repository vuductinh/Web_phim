using PagedList;
using QuanLiWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLiWeb.Controllers
{
    public class TheLoaiController : Controller
    {
        DataWebEntities db = new DataWebEntities();
        // GET: TheLoai
        public ActionResult Index(int? Page, int matl,string search)
        {
            int pageNumber = (Page ?? 1);
            int pageSize = 12;
            ViewBag.id = matl;
            var tentl = from p in db.TheLoais.Where(x=>x.MaTheLoai==matl) select p;
            foreach(TheLoai item in tentl)
            {
                ViewBag.ten = item.TenTheLoai;
            }
            var model = db.Phims.OrderBy(x => x.diemphim).Where(x => x.MaTheLoai == matl).ToPagedList(pageNumber, pageSize);
            return View(model);
        }
    }
}