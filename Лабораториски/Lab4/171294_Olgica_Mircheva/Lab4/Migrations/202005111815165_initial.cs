namespace lab4.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Friends",
                c => new
                    {
                        friendId = c.Int(nullable: false, identity: true),
                        name = c.String(nullable: false),
                        place = c.String(nullable: false),
                    })
                .PrimaryKey(t => t.friendId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Friends");
        }
    }
}
