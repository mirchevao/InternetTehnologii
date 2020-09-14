using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace lab3.Models
{
    public class Friend
    {
        [Required]
        [Range(0,200)]
        public int friendId { get; set; }
        [Required]
        public string name { get; set; }
        [Required]
        public string place { get; set; }
    }
}