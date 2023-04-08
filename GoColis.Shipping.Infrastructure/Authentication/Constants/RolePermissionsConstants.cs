using GoColis.Shipping.Domain.Authentication.Entities;
using System.Collections.Immutable;

namespace GoColis.Shipping.Infrastructure.Authentication.Constants;

public static class RolePermissionsConstants
{
    public static readonly List<RolePermission> _clientPermissions = new()
        {
            CreateRolePermission(RoleConstants.Client, PermissionConstants.CreateShipping),
            CreateRolePermission(RoleConstants.Client, PermissionConstants.UpdateShipping),
            CreateRolePermission(RoleConstants.Client, PermissionConstants.DeleteShipping),
            CreateRolePermission(RoleConstants.Client, PermissionConstants.ReadShipping),

            CreateRolePermission(RoleConstants.Client, PermissionConstants.ReadCarrier),
            CreateRolePermission(RoleConstants.Client, PermissionConstants.ReadRelayPoint),
            CreateRolePermission(RoleConstants.Client, PermissionConstants.ReadPerson)

        };

    public static readonly List<RolePermission> _carrierPermissions = new()
        {
            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.ReadShipping),

            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.ReadCarrier),
            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.CreateCarrier),
            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.UpdateCarrier),
            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.DeleteCarrier),

            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.ReadRelayPoint),
            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.CreateRelayPoint),
            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.UpdateRelayPoint),
            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.DeleteRelayPoint),

            CreateRolePermission(RoleConstants.Carrier, PermissionConstants.ReadPerson)

        };

    public static readonly ImmutableArray<RolePermission> ClientPermissions = _clientPermissions.ToImmutableArray();

    public static readonly ImmutableArray<RolePermission> CarrierPermissions = _carrierPermissions.ToImmutableArray();

    public static readonly ImmutableList<RolePermission> SuperAdminPermissions = Enum.GetValues<PermissionConstants>().Select(x=> CreateRolePermission(RoleConstants.SuperAdmin,x)).ToImmutableList();


    private static RolePermission CreateRolePermission(Role role,PermissionConstants permission)
    {
        return new RolePermission()
        {
            RoleId= role.Id,
            PermissionId = (int)permission
        };
    }
}