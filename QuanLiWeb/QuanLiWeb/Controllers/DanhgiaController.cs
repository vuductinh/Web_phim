using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using QuanLiWeb.Models;
namespace QuanLiWeb.Controllers
{
    public class DanhgiaController : Controller
    {
        DataWebEntities db = new DataWebEntities();
        // GET: Danhgia
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Danhgia(int ?Page,string search)
        {
            int Pagenumber = (Page??1);
            int pageSize = 28;
            var model = db.Phims.OrderByDescending(x => x.diemphim).ToPagedList(Pagenumber, pageSize);
            if (!string.IsNullOrEmpty(search))
            {
                model = db.Phims.Where(x => x.TenPhim.Contains(search)).OrderBy(x => x.TenPhim).ToPagedList(Pagenumber, pageSize);
            }
            return View(model);
        }
    }
}