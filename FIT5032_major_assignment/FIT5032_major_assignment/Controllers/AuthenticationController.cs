using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace FIT5032_major_assignment.Controllers
{
    public class AuthenticationController : Controller
    {

        private ApplicationSignInManager _signInManager;
        private ApplicationUserManager _userManager;

        // GET: Authentication
        public ActionResult Index()
        {
            return View();
        }
    }
}