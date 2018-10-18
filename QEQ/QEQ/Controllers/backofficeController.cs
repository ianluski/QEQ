using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QEQ.Controllers
{
    public class backofficeController : Controller
    {
        // GET: backoffice
        public ActionResult Index()
        {
            return View();

        }
        public ActionResult Home()
        {
            return View();
        }
        public ActionResult BackofficePersonajes()
        {
            return View();
        }
     }
}