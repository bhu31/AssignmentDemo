namespace Assignment.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Images
    {
        [Key]
        [Column("Id")]
        public int Id { get; set; }

        [Column("Path")]
        [Required]
        [StringLength(50)]
        public string Path { get; set; }

        [Column("Name")]
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
    }
}
