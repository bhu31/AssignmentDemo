﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Assignment.Models
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class Model1Container1 : DbContext
    {
        public Model1Container1()
            : base("name=Model1Container1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Booking> BookingSet { get; set; }
        public virtual DbSet<Units> UnitsSet { get; set; }
        public virtual DbSet<Class> ClassSet { get; set; }

        public System.Data.Entity.DbSet<Assignment.Models.Images> Images { get; set; }
    }
}
