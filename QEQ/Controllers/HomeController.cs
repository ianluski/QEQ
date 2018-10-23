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

        [HttpPost]
        public ActionResult InicioDeSesion()
        {

            return View();
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
