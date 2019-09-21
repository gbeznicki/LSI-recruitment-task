using System;
using DevExpress.Xpo;
using DevExpress.Xpo.Metadata;
using DevExpress.Data.Filtering;
using System.Collections.Generic;
using System.ComponentModel;
using System.Reflection;
namespace ExportReportingTool.Models.Database
{

    public partial class Reports
    {
        public Reports(Session session) : base(session) { }
        public override void AfterConstruction() { base.AfterConstruction(); }
    }

}
