using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab5.Models
{
    public class MovieRentals
    {
        public Movie movie { get; set; } //film koj so e iznajmen
        public List<Client> clients { get; set; } //lista od klienti koi so go iznajmile filmot

        public MovieRentals()
        {
            clients = new List<Client>();
        }


    }
}