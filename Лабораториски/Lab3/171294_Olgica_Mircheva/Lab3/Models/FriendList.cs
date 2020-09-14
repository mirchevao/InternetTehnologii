using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace lab3.Models
{
    public class FriendList
    {
        public List<Friend> friends { get; set; }

        public FriendList()
        {
            friends = new List<Friend>();
        }
    }
}