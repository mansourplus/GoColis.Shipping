using GoColis.Shipping.Application.Authentication.Contracts;
using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using System.Security.Cryptography;

namespace GoColis.Shipping.Infrastructure.Authentication.Repositories
{
    internal class PermissionRepository : Repository, IPermissionRepository
    {
        private readonly IMemoryCache _memoryCache;

        public PermissionRepository(DatabaseContext dbContext, IMemoryCache memoryCache) : base(dbContext)
        {
            _memoryCache = memoryCache;
        }
        
        public async Task<IEnumerable<Permission>> GetRolePermission(string Role)
        {
            return await _memoryCache.GetOrCreateAsync(
                $"Role_Permission_{Role}",
                cacheEntry =>
                {
                    cacheEntry.SlidingExpiration = TimeSpan.FromHours(24);
                    var permissions = DbContext.Roles.Include(x => x.Permissions)
                .Where(x => x.Name == Role)
                .SelectMany(x => x.Permissions);

                    return permissions.ToListAsync();
                }) ?? new();
        }

        public async Task<IEnumerable<Permission>> GetUserPermission(Guid userId)
        {
            return await _memoryCache.GetOrCreateAsync(
                $"UserID_Permission_{userId}",
                cacheEntry =>
                {
                    cacheEntry.SlidingExpiration = TimeSpan.FromHours(24);

                    var roles = from role in DbContext.Roles.Include(x => x.Permissions)
                               join userRole in DbContext.UserRoles on role.Id equals userRole.RoleId
                               where userRole.UserId == userId
                               select role;
                    
                    var permissions = roles.SelectMany(x => x.Permissions);

                    return permissions.ToListAsync();
                }) ?? new();
        }
    }
}
