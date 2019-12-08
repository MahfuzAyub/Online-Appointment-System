using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Project_1250865.Models;

namespace Project_1250865.Members
{
    public partial class AddDoctor : System.Web.UI.Page
    {
        ClinicDbContext db = new ClinicDbContext();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void BindToGrid()
        {
            //GridView1.DataSource = db.Doctors.AsEnumerable().Select(d => new { d.DoctorId, d.DoctorName, d.JoinDate, d.Speciality }).ToList();
            //GridView1.DataBind();
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            Doctor d = new Doctor { DoctorName = txtDocorName.Text, Speciality = txtSpeciality.Text, JoinDate = DateTime.Parse(TextJoinDate.Text) };
            if (pPicture.HasFile)
            {
                d.Picture = pPicture.FileBytes;
                if (pPicture.PostedFile.ContentLength > 0)
                {
                    string path = Server.MapPath("~/Images/") + pPicture.PostedFile.FileName;
                    pPicture.PostedFile.SaveAs(path);
                }
            }
            db.Doctors.Add(d);
            db.SaveChanges();
            BindToGrid();
        }
    }
}