using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Authentication.Commands.Logout;

public class LogoutCommand : IRequest<ErrorOr<bool>>
{
}
