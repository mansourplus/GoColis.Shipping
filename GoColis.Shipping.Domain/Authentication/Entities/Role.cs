using Microsoft.AspNetCore.Identity;

namespace GoColis.Shipping.Domain.Authentication.Entities;

public partial class Role : IdentityRole<Guid>
{
    public Role() : base()
    {
    }

    public Role(string roleName)
    {
        Name = roleName;
    }

    public List<Permission> Permissions { get; set; } = new();
}