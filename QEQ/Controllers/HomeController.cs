using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using QEQ.Models;

namespace QEQ.Controllers
{
    public class HomeController : Controller
    {
        // GET: QEQ
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Login()
        {
            return View();
        }
        [HttpPost]
        public ActionResult ValidarLogin(Perfil Usuario)
       {
           bool Profile = BD.Login(Usuario.Mail, Usuario.Pwd);
           if (Profile==true)
            {
               return RedirectToAction("Home", "Backoffice");
            }
            
            return RedirectToAction("About", "Home");

        }
        public ActionResult About()
        {

            return View();
        }
        public ActionResult Instrucciones()
        {

            return View();
        }
        public ActionResult Registro()
        {

            return View();
        }
    }
}
