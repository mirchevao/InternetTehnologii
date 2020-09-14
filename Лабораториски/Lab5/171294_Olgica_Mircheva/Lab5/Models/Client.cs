using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Lab5.Models
{
    public class Client 
    {
        public Client()
        {
            movies = new List<Movie>();
        }
        [Key]
        public int clientId { get; set; }
        [Required]
        public string clientName { get; set; }
        public string clietnAddress { get; set; }
        public string clientPhone { get; set; }
        public string clientMembership { get; set; }
        [Range(1,99)]
        public int clientAge { get; set; }

        public virtual ICollection<Movie> movies { set; get; }
    }
}