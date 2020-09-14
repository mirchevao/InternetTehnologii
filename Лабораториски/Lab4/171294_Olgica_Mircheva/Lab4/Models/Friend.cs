using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace lab4.Models
{
    public class Friend
    {
        [Key]
        [Required]
        [Range(0, 200)]
        public int friendId { get; set; }
        [Required]
        public string name { get; set; }
        [Required]
        public string place { get; set; }
    }
}