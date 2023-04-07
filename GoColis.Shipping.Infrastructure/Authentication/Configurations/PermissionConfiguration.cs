using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Infrastructure.Authentication.Constants;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Authentication.Configurations;

public  class PermissionConfiguration : IEntityTypeConfiguration<Permission>
{
    public void Configure(EntityTypeBuilder<Permission> builder)
    {
        ConfigurePermissionTable(builder);

        ConfigureRelationShip(builder);
    }

    private static void ConfigureRelationShip(EntityTypeBuilder<Permission> builder)
    {
        builder.HasMany(x=>x.Roles)
            .WithMany(x=>x.Permissions)
            .UsingEntity<RolePermission>()
            .ToTable("RolePermissions")
            ;
    }

    private static void ConfigurePermissionTable(EntityTypeBuilder<Permission> builder)
    {
        builder.ToTable("Permissions");

        builder.HasKey(x => x.Id)
            ;

        builder.Property(x => x.Id)
            .ValueGeneratedNever();

        builder.Property(x => x.Name)
            .HasMaxLength(50);

        var permissions = Enum.GetValues<Constants.PermissionConstants>()
            .Select(x => new Permission
            {
                Id = (int)x,
                Name = x.ToString()
            });

        builder.HasData(permissions);
    }
}
