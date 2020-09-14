using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Lab5.Models
{
    public class Movie
    {
        public Movie()
        {
            clients = new List<Client>();
        }
        [Key]
        public int movieId { get; set; }
        [Required]
        public string movieName { get; set; }
        [Required]
        public float raiting { get; set; }
        [Display(Name = "The Download URL")]
        public string downloadUrl { get; set; }
        [Display(Name = "The Image URL")]
        public string imageUrl { get; set; }
        public virtual ICollection<Client> clients { get; set; }
    }
}