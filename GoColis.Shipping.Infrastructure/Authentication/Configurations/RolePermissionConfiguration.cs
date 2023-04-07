using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Infrastructure.Authentication.Constants;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Authentication.Configurations;

public class RolePermissionConfiguration : IEntityTypeConfiguration<RolePermission>
{
    public void Configure(EntityTypeBuilder<RolePermission> builder)
    {
        builder.ToTable("RolePermissions");

        builder.HasData(RolePermissionsConstants.SuperAdminPermissions);
        builder.HasData(RolePermissionsConstants.ClientPermissions);
        builder.HasData(RolePermissionsConstants.CarrierPermissions);

    }
}
