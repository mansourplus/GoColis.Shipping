using GoColis.Shipping.Domain.Authentication.Entities;

namespace GoColis.Shipping.Application.Authentication.Contracts
{
    public interface IJwtProvider
    {
        Task<string> Generate(User user, IEnumerable<string> roles);
    }
}
