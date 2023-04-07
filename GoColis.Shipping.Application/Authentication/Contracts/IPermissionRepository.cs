using GoColis.Shipping.Domain.Authentication.Entities;

namespace GoColis.Shipping.Application.Authentication.Contracts;

public interface IPermissionRepository 
{
    public Task<IEnumerable<Permission>> GetRolePermission(string Role);
    public Task<IEnumerable<Permission>> GetUserPermission(Guid userId);
}
