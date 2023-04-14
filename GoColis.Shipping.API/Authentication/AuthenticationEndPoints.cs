using GoColis.Shipping.Api.Authentication.Login;
using GoColis.Shipping.Api.Extensions;
using GoColis.Shipping.Application.Authentication.Commands.Login;
using GoColis.Shipping.Application.Authentication.Commands.Logout;
using GoColis.Shipping.Application.Authentication.Commands.Register;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Api.Authentication;

public static class LoginEndPoints
{
    private const string TAG = "Authentication";
    public static void MapAuthenticationEndPoints(this WebApplication app)
    {

        app.Login();

        //app.MapPost("/auth/logout",
        //   async (IMediator _mediator, ILogger<LogoutCommand> _logger) =>
        //   {
        //       var result = _mediator.Send(new LogoutCommand());
        //       return await result.Match(
        //           success => Results.Ok(),
        //           failed => failed.ToResult(_logger)
        //           );
        //   });

        app.Register();
    }

    internal static void Login(this WebApplication app)
    {

        app.MapPost("/auth/login",
            async (LoginDto request, IMediator _mediator, ILogger<LoginCommand> _logger, IMapper _mapper) =>
            {
                var command = _mapper.Map<LoginCommand>(request);

                var result = _mediator.Send(command);

                return await result.Match(
                    success => Results.Ok(success),
                    failed => failed.ToResult(_logger)
                    );
            })
            .WithTags(TAG)
            .AddSummary("Login");
    }

    internal static void Register(this WebApplication app)
    {

        app.MapPost("/auth/register",
            async (RegisterDto request, IMediator _mediator, ILogger<LoginCommand> _logger, IMapper _mapper) =>
            {
                var command = _mapper.Map<RegisterCommand>(request);

                var result = _mediator.Send(command);

                return await result.Match(
                    success => Results.Created("/auth/login", success),
                    failed => failed.ToResult(_logger)
                    );

            })
            .WithTags(TAG)
            .AddSummary("Register");
    }
}
