using System;
using System.Collections.Generic;
using System.ComponentModel;
using DevExpress.ExpressApp.DC;
using DevExpress.Persistent.Base;

namespace Exports_Reporting_Tool.Module.BusinessObjects.Marketing
{
    [DefaultClassOptions]
    public class ReportHistory
    {
        public ReportHistory()
        {
            Reports = new List<Report>();
        }
        [Browsable(false)]
        [VisibleInListView(false)]
        public int Id { get; protected set; }
        public String ExportName { get; set; }
        public DateTime DateTimeOfExport { get; set; }
        public String UserName { get; set; }
        public string LocalName { get; set; }
        [Aggregated]
        public virtual IList<Report> Reports { get; set; }
    }

    [DefaultClassOptions]
    [NavigationItem("Report")]
    public class Report
    {
        public Report()
        {
            CreatedOn = DateTime.Now;
        }
        [Browsable(false)]
        public int Id { get; protected set; }
        public String Name { get; set; }
        [VisibleInListView(false)]
        public DateTime CreatedOn { get; internal set; }
        public String Text { get; set; }
        public virtual ReportHistory ReportHistories { get; set; }
    }
}