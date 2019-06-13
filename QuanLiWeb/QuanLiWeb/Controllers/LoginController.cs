using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using QuanLiWeb.Models;
namespace QuanLiWeb.Controllers
{
    public class LoginController : Controller
    {
        DataWebEntities db = new DataWebEntities();
        // GET: Login
        public ActionResult Index()
        {
            return View();
        }
        public async Task<ActionResult> login()
        {
            string usernamecookie = System.Web.HttpContext.Current.User.Identity.Name;
            if(!string.IsNullOrEmpty(usernamecookie))
            {
                return View("Index", "Home");
            }
            return View(new taikhoan());

        }
        [HttpPost]
        public async Task<ActionResult> login(taikhoan tk)
        {
            var account = db.taikhoans.FirstOrDefault(x => x.Tentk == tk.Tentk.Trim());
            if(ModelState.IsValid)
            {
                if(account!=null)
                {
                    var person = db.taikhoans.FirstOrDefault(x => x.Tentk == tk.Tentk.Trim() && x.matkhau == tk.matkhau.Trim());
                    if (person != null)
                    {
                        //FormsAuthentication.SetAuthCookie(tk.Tentk,Convert.ToBoolean(tk.Tentk));
                        return RedirectToAction("HienThiDS", "QuanLiPhim");
                    }
                    else
                    {
                        ModelState.AddModelError("matkhau", "Sai mật khẩu!");
                        return View(tk);
                    }
                }
                else
                {
                    ModelState.AddModelError("Tentk", "Sai tên tài khoản!");
                    return View(tk);
                }
            }
            return View();
        }
        [Authorize]
        public ActionResult logoff()
        {
            FormsAuthentication.SignOut();
            return RedirectToAction("login","Login");
        }
    }
}