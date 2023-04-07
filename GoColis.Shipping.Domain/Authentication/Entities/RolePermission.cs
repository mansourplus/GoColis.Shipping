namespace GoColis.Shipping.Domain.Authentication.Entities;

public sealed class RolePermission
{
    public int PermissionId { get; set; } 
    public Guid RoleId { get; set; }
}
