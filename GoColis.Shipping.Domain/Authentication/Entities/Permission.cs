using GoColis.Shipping.Domain.Common;
namespace GoColis.Shipping.Domain.Authentication.Entities;

public sealed  class Permission 
{
    public int Id { get; set; }
    public string Name { get; init; } = null!;

    public List<Role> Roles{ get; set; } = new();
}
