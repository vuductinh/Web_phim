using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QuanLiWeb.Models;
namespace QuanLiWeb.Controllers
{
    public class QuanLiPhimController : Controller
    {
        
        // GET: QuanLiPhim
        DataWebEntities db = new DataWebEntities();
        public ActionResult HienThiDS()
        {
            return View(db.Phims.ToList());
        }
        //[Authorize]
    public ActionResult ThemMoi()
        {
            //Đưa dữ liệu vào dropdownlist
            ViewBag.MaP = new SelectList(db.TheLoais.ToList().OrderBy(n => n.TenTheLoai),"TenTheLoai");
            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemMoi(Phim p, HttpPostedFileBase fileUpload)
        {
            //Đưa dữ liệu vào dropdownlist
            ViewBag.MaP = new SelectList(db.TheLoais.ToList().OrderBy(n => n.TenTheLoai),"TenTheLoai");
            if (fileUpload == null)
            {
                return View();
            }
            //Thêm vào cơ sở dữ liệu
            if (ModelState.IsValid)
            {
                //Lưu tên file
                var fileName = Path.GetFileName(fileUpload.FileName);
                var path = Path.Combine(Server.MapPath("~/Content/image"), fileName);
                //Kiểm tra hình ảnh đã tồn tại chưa
                if (System.IO.File.Exists(path))
                {
                    ViewBag.ThongBao = "Hình ảnh đã tồn tại";
                }
                else
                {
                    fileUpload.SaveAs(path);
                }
                p.TenAnh = fileUpload.FileName;
                db.Phims.Add(p);
                db.SaveChanges();
            }
                return View();
        }
        [HttpGet]
        public ActionResult ChinhSua(int Maphimsua)
        {
            //Lấy ra đối tượng sách theo mã 
            Phim p = db.Phims.SingleOrDefault(n => n.MaPhim == Maphimsua);
            if (p == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            //Đưa dữ liệu vào dropdownlist

            return View(p);
        }
        [HttpPost]
        [ValidateInput(false)]
        [ValidateAntiForgeryToken]
        public ActionResult ChinhSua(Phim p, HttpPostedFileBase fileUpload)
        {
                db.Phims.Add(p);
                //Thực hiện cập nhập trong model
                
                db.Entry(p).State = EntityState.Modified;
                db.SaveChanges();
            return RedirectToAction("HienThiDS");
            //return View();
        }

        public ActionResult Chitiet(int Map)
        {
            Phim sp = db.Phims.SingleOrDefault(n => n.MaPhim == Map);
            if (sp == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return View(sp);
        }
        [HttpGet]
        public ActionResult Xoa(int MaP)
        {
            //Lấy ra đối tượng sách theo mã 
            Phim p = db.Phims.SingleOrDefault(n => n.MaPhim == MaP);
            if (p == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            XacNhanXoa(MaP);
            //return View(p);
            return Content("xóa thành công");
        }
        [HttpPost, ActionName("Xoa")]

        public ActionResult XacNhanXoa(int MaP)
        {
            Phim p = db.Phims.SingleOrDefault(n => n.MaPhim == MaP);
            if (p == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            db.Phims.Remove(p);
            db.SaveChanges();
            return RedirectToAction("HienThiDS");
        }
    }
}
