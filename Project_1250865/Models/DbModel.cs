using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Project_1250865.Models
{
    public class Doctor
    {
        public int DoctorId { get; set; }
        [Required, StringLength(20)]
        public string DoctorName { get; set; }
        public string Speciality { get; set; }
        [Required]
        public DateTime JoinDate { get; set; }
        public byte[] Picture { get; set; }
    }
    public class ClinicDbContext : DbContext
    {
        public DbSet<Doctor> Doctors { get; set; }
    }
}