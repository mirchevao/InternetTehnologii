using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace lab4.Models
{
    public class FriendContext : DbContext
    {
        public DbSet<Friend> Friends { get; set; }
        public FriendContext() : base("DefaultConnection")
        {

        }


        public static FriendContext Create()
        {
            return new FriendContext();
        }
    }
}