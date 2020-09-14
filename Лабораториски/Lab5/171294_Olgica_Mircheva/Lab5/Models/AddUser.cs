using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lab5.Models
{
    public class AddUser
    {
        public string email { get; set; }
        public List<string> roles { get; set; }
        public string select { get; set; }
    }
}