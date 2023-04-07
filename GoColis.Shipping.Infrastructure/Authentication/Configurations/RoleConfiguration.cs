using GoColis.Shipping.Domain.Authentication.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;
using Roles = GoColis.Shipping.Infrastructure.Authentication.Constants.RoleConstants;

namespace GoColis.Shipping.Infrastructure.Authentication.Configurations;

public class RoleConfiguration : IEntityTypeConfiguration<Role>
{
    public void Configure(EntityTypeBuilder<Role> builder)
    {
        builder.HasMany(x => x.Permissions)
            .WithMany(x => x.Roles)
            .UsingEntity<RolePermission>()
            .ToTable("RolePermissions");

        builder.HasData(Roles.Carrier);
        builder.HasData(Roles.Client);
        builder.HasData(Roles.SuperAdmin);
    }
}
