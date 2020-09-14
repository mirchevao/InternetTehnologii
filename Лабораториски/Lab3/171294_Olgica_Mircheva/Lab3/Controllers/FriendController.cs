using lab3.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace lab3.Controllers
{
    public class FriendController : Controller
    {
        // GET: Friend
        public static List<Friend> friends = new List<Friend>()
        {
            new Friend () { friendId = 0, name = "f0", place = "p0"},
            new Friend () { friendId = 1, name = "f1", place = "p1"},
            new Friend () { friendId = 2, name = "f2", place = "p2"},
            new Friend () { friendId = 3, name = "f3", place = "p3"}
        };

        
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult FriendTable()
        {
            FriendList model = new FriendList();
            model.friends = friends;
            return View(model);
        }

        public ActionResult DeleteFriend(int id)
        {
            friends.RemoveAt(id);
            return View("FriendTable", friends);
        }
       public ActionResult EditFriend(int id)
        {
            Friend friend = friends.ElementAt(id);
            friend.friendId = id;
            return View(friends.ElementAt(id));
        }

        public ActionResult NewFriend()
        {
            Friend model = new Friend();
            return View(model);
        }

        [HttpPost]
        public ActionResult EditFriend(Friend model)
        {
            if(!ModelState.IsValid)
            {
                return View(model);
            } else
            {
                Friend updated = friends.ElementAt(model.friendId);
                updated.name = model.name;
                updated.place = model.place;
               
                return View("FriendTable", friends);
            }
        }

        [HttpPost]
        public ActionResult NewFriend(Friend model)
        {
            if(!ModelState.IsValid)
            {
                return View(model);
            } else
            {
                friends.Add(model);
                return Redirect("FriendTable");
            }
            
        }


    }
}