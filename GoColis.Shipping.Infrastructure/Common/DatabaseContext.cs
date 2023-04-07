using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Domain.Logistics.Order;
using GoColis.Shipping.Domain.Logistics.RelayPoint;
using GoColis.Shipping.Domain.Member.Carrier;
using GoColis.Shipping.Domain.Member.Person;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace GoColis.Shipping.Infrastructure.Common;

public class DatabaseContext : IdentityDbContext<User, Role, Guid, UserClaim,UserRole, UserLogin, RoleClaim, UserToken>
{
    public DatabaseContext(DbContextOptions options) : base(options)
    {
    }

    public DbSet<RelayPoint> RelayPoints { get; set; }
    public DbSet<Person> Persons { get; set; }
    public DbSet<Carrier> Carriers { get; set; }
    public DbSet<Order> Shipments { get; set; }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        builder.ApplyConfigurationsFromAssembly(typeof(DatabaseContext).Assembly);

        base.OnModelCreating(builder);
    }
}