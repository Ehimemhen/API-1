﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace MalariaBackend.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class DBMobile_AppEntities : DbContext
    {
        public DBMobile_AppEntities()
            : base("name=DBMobile_AppEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<About_Malaria> About_Malaria { get; set; }
        public virtual DbSet<Cause> Causes { get; set; }
        public virtual DbSet<FAQ> FAQs { get; set; }
        public virtual DbSet<Help_Line> Help_Line { get; set; }
        public virtual DbSet<Malaria_Risk_Zone> Malaria_Risk_Zone { get; set; }
        public virtual DbSet<Post_Update> Post_Update { get; set; }
        public virtual DbSet<Prevention> Preventions { get; set; }
        public virtual DbSet<Publication> Publications { get; set; }
        public virtual DbSet<Statistic> Statistics { get; set; }
        public virtual DbSet<Symptom> Symptoms { get; set; }
        public virtual DbSet<Treatment> Treatments { get; set; }
        public virtual DbSet<User> Users { get; set; }
        public virtual DbSet<User_Role> User_Role { get; set; }
    }
}
