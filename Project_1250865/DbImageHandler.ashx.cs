using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Project_1250865.Models;

namespace Project_1250865
{
    /// <summary>
    /// Summary description for DbImageHandler
    /// </summary>
    public class DbImageHandler : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //context.Response.ContentType = "text/plain";
            //context.Response.Write("Hello World");
            string id = context.Request.QueryString["id"];
            ClinicDbContext db = new ClinicDbContext();
            var pr = db.Doctors.AsEnumerable().First(p => p.DoctorId == int.Parse(id));
            context.Response.BinaryWrite(pr.Picture);
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}