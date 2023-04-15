using GoColis.Shipping.Domain.Authentication.Entities;
using System.Collections.Immutable;

namespace GoColis.Shipping.Infrastructure.Authentication.Constants;

public static class RoleConstants
{
    public static readonly Role Client = new()
    {
        Id = new Guid("8167af27-1021-4e57-bf4c-b40dd754567f"),
        Name = Application.Authentication.Constants.Roles.Customer,
        NormalizedName = Application.Authentication.Constants.Roles.Customer.ToUpper(),
    };

    public static readonly Role Carrier = new()
    {
        Id = new Guid("01b71ba4-6e58-4758-97a9-f4d6d90d7eb9"),
        Name = Application.Authentication.Constants.Roles.Carrier,
        NormalizedName = Application.Authentication.Constants.Roles.Carrier.ToUpper(),
    };

    public static readonly Role SuperAdmin = new()
    {
        Id = new Guid("133ff856-2792-413d-a467-3dd774c6f040"),
        Name = Application.Authentication.Constants.Roles.SuperAdmin,
        NormalizedName = Application.Authentication.Constants.Roles.SuperAdmin.ToUpper(),
    };


    private static List<Permission> _clientPermision = new(){

            CreateRolePermission(PermissionConstants.CreateShipping),
            CreateRolePermission(PermissionConstants.UpdateShipping),
            CreateRolePermission(PermissionConstants.DeleteShipping),
            CreateRolePermission(PermissionConstants.ReadShipping),

            CreateRolePermission(PermissionConstants.ReadCarrier),
            CreateRolePermission(PermissionConstants.ReadRelayPoint),
            CreateRolePermission(PermissionConstants.ReadPerson)

        };

    public static readonly ImmutableArray<Permission> ClientPermissions = _clientPermision.ToImmutableArray();


    private static List<Permission> _carrierPermissions = new(){

             CreateRolePermission( PermissionConstants.ReadShipping),

            CreateRolePermission( PermissionConstants.ReadCarrier),
            CreateRolePermission( PermissionConstants.CreateCarrier),
            CreateRolePermission( PermissionConstants.UpdateCarrier),
            CreateRolePermission( PermissionConstants.DeleteCarrier),

            CreateRolePermission( PermissionConstants.ReadRelayPoint),
            CreateRolePermission( PermissionConstants.CreateRelayPoint),
            CreateRolePermission( PermissionConstants.UpdateRelayPoint),
            CreateRolePermission( PermissionConstants.DeleteRelayPoint),

            CreateRolePermission( PermissionConstants.ReadPerson)

        };

    public static readonly ImmutableArray<Permission> CarrierPermissions = _carrierPermissions.ToImmutableArray();

    public static readonly ImmutableArray<Permission> SuperAdminPermissions = Enum.GetValues<PermissionConstants>().Select(CreateRolePermission).ToImmutableArray();


    private static Permission CreateRolePermission(PermissionConstants permission)
    {
        return new Permission()
        {
            Id = (int)permission,
            Name = permission.ToString()
        };
    }
}
