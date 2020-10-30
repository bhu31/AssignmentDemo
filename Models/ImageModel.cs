namespace Assignment.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class ImageModel : DbContext
    {
        public ImageModel()
            : base("name=ImageModel")
        {
        }

        public virtual DbSet<Images> Images { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Images>()
                .Property(e => e.Path)
                .IsUnicode(false);

            modelBuilder.Entity<Images>()
                .Property(e => e.Name)
                .IsUnicode(false);
        }
    }
}
