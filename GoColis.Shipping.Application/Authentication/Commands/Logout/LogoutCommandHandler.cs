using GoColis.Shipping.Application.Authentication.Commands.Logout;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Authentication.Commands.Login;

public class LogoutCommandHandler : IRequestHandler<LogoutCommand, ErrorOr<bool>>
{
    public async Task<ErrorOr<bool>> Handle(LogoutCommand request, CancellationToken cancellationToken)
    {
        //TODO : Implementer la méthode de la déconnection
        await Task.CompletedTask; 
        return true;
    }
}
