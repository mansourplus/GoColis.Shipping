using GoColis.Shipping.Application.Authentication.Contracts;
using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Domain.Common;
using GoColis.Shipping.Infrastructure.Authentication.Options;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.AspNetCore.Identity;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace GoColis.Shipping.Infrastructure.Authentication.Repositories;

public class JwtProvider : Repository, IJwtProvider
{
    private readonly IOptions<JwtOptions> _jwtOptions;
    public JwtProvider(DatabaseContext dbContext, IOptions<JwtOptions> jwtOptions) : base(dbContext)
    {
        _jwtOptions= jwtOptions;
    }

    public Task<string> Generate(User user, IEnumerable<string> roles)
    {
        
        var authClaims = new List<Claim>
                {
                    new Claim(JwtRegisteredClaimNames.Sub, user.Id.ToString()),
                    new Claim(JwtRegisteredClaimNames.Email, user.Email!),
                    new Claim(JwtRegisteredClaimNames.UniqueName, user.UserName!),
                    new Claim(ClaimTypes.Role, Guid.NewGuid().ToString())
                };

        foreach (var role in roles)
        {
            authClaims.Add(new Claim(ClaimTypes.Role, role));
        }
        
        foreach (var audience in _jwtOptions.Value.ValidAudiences)
        {
            authClaims.Add(new Claim(JwtRegisteredClaimNames.Aud, audience));
        }
        var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_jwtOptions.Value.Secret));

        var token = new JwtSecurityToken(
            expires: DateTime.Now.AddMinutes(_jwtOptions.Value.ExpiryMinutes),
            claims: authClaims,
            audience: null,
            issuer: _jwtOptions.Value.ValidIssuer,
            signingCredentials: new Microsoft.IdentityModel.Tokens.SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
            );

        var tokenValue= new JwtSecurityTokenHandler().WriteToken(token);

        return Task.FromResult(tokenValue);
    }
}
