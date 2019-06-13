using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using PagedList;
using QuanLiWeb.Models;
namespace QuanLiWeb.Controllers
{
    public class HomeController : Controller
    {

        DataWebEntities db = new DataWebEntities();
        public ActionResult Index(int? Page,string search)
        {
            int pageNumber = (Page ?? 1);
            int pageSize = 28;
            var model = db.Phims.OrderBy(x => x.TenPhim).ToPagedList(pageNumber, pageSize);
            if(!string.IsNullOrEmpty(search))
            {
                model = db.Phims.Where(x => x.TenPhim.Contains(search)).OrderBy(x => x.TenPhim).ToPagedList(pageNumber, pageSize);
            }
            return View(model);
        }
        public ActionResult chitiet(int id)
        {
            Phim p = db.Phims.SingleOrDefault(x => x.MaPhim == id);
            if (p==null)
            {
                Response.StatusCode = 404;
                return null;
            }
            ViewData["key"]= Convert.ToString(db.TheLoais.Single(n => n.MaTheLoai == p.MaTheLoai).TenTheLoai);
            //ViewBag.theloai = db.TheLoais.Single(n => n.MaTheLoai == p.MaTheLoai).TenTheLoai;
            ViewBag.linktheloai = db.TheLoais.Single(n => n.MaTheLoai == p.MaTheLoai).link;
            return View(p);
        }
    }
}