using Microsoft.AspNetCore.Identity;

namespace GoColis.Shipping.Domain.Authentication.Entities;

public partial class UserToken : IdentityUserToken<Guid>
{
}
