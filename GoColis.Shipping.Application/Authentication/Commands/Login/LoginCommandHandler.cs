using GoColis.Shipping.Application.Authentication.Contracts;
using GoColis.Shipping.Domain.Authentication.Entities;
using MapsterMapper;
using MediatR;
using Microsoft.AspNetCore.Identity;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Authentication.Commands.Login;

public class LoginCommandHandler : IRequestHandler<LoginCommand, ErrorOr<string>>
{
    private readonly UserManager<User> _userManager;
    private readonly IJwtProvider _jwtProvider;
    public LoginCommandHandler(UserManager<User> userManager,  IJwtProvider jwtProvider)
    {
        _userManager = userManager;
        _jwtProvider = jwtProvider;
    }

    public async Task<ErrorOr<string>> Handle(LoginCommand request, CancellationToken cancellationToken)
    {
        var user = await _userManager.FindByNameAsync(request.Email);
        if (user != null && await _userManager.CheckPasswordAsync(user, request.Password))
        {
            var roles = await _userManager.GetRolesAsync(user);
            
            return await _jwtProvider.Generate(user, roles);
        }
        return ErrorOr.Failure<string>(Error.Validation("LoginPoint.Validation", "invalid login or password"));
    }
}
