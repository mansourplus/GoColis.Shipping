using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Authentication.Commands.Login;

public class LoginCommand: IRequest<ErrorOr<string>>
{
    public string Email { get; set; } = string.Empty;
    public string Password { get; set; } = string.Empty;
}
