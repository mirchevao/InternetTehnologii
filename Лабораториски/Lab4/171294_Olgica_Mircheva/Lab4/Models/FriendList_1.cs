using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace lab4.Models
{
    public class FriendList
    {
        [Key]
        public List<Friend> friends { get; set; }

        public FriendList()
        {
            friends = new List<Friend>();
        }
    }

}