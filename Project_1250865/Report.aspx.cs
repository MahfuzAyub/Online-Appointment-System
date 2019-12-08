using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;


namespace Project_1250865
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page__Init(object sender, EventArgs e)
        {
            if (Session["report"] != null)
            {
                CrystalReportViewer1.ReportSource = (rptPatients)Session["report"];
            }
        }
        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            DsPatientsTableAdapters.tblPatientsTableAdapter da = new DsPatientsTableAdapters.tblPatientsTableAdapter();
            DsPatients ds = new DsPatients();
            DsPatients.tblPatientsDataTable dt = (DsPatients.tblPatientsDataTable)ds.Tables["tblPatients"];
            da.Fill(dt);

            rptPatients rpt = new rptPatients();
            rpt.SetDataSource(ds);
            CrystalReportViewer1.ReportSource = rpt;
            Session.Add("report", rpt);
        }
    }
}