﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ESFA.DC.Data.AppsEarningsHistory.Model
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    using ESFA.DC.Data.AppsEarningsHistory.Model.Interfaces;

    public partial class ApprenticeshipsEarningsHistory : DbContext, IApprenticeshipsEarningsHistory
    {
        public ApprenticeshipsEarningsHistory()
            : base("name=ApprenticeshipsEarningsHistory")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AppsEarningsHistory> AppsEarningsHistories { get; set; }
        public virtual DbSet<AppsEarningsHistoryVersion> AppsEarningsHistoryVersions { get; set; }
    }
}
