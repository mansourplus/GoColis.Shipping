using GoColis.Shipping.Api.Authentication.Login;
using GoColis.Shipping.Api.Extensions;
using GoColis.Shipping.Application.Authentication.Commands.Login;
using GoColis.Shipping.Application.Authentication.Commands.Logout;
using GoColis.Shipping.Application.Authentication.Commands.Register;
using GoColis.Shipping.Infrastructure.Authentication.Constants;
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

        app.RegisterCarrier();
        app.RegisterCustomer();
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

    internal static void RegisterCarrier(this WebApplication app)
    {

        app.MapPost("/auth/register/carrier",
            async (RegisterDto request, IMediator _mediator, ILogger<LoginCommand> _logger, IMapper _mapper) =>
            {
                return await Register(request, _mediator, _logger, _mapper, Application.Authentication.Constants.Roles.Carrier);

            })
            .WithTags(TAG)
            .AddSummary("Register");
    }

    internal static void RegisterCustomer(this WebApplication app)
    {

        app.MapPost("/auth/register/Customer",
            async (RegisterDto request, IMediator _mediator, ILogger<LoginCommand> _logger, IMapper _mapper) =>
            {
                return await Register(request, _mediator, _logger, _mapper, Application.Authentication.Constants.Roles.Customer);

            })
            .WithTags(TAG)
            .AddSummary("Register");
    }

    internal static async Task<IResult> Register(RegisterDto request, IMediator _mediator, ILogger<LoginCommand> _logger, IMapper _mapper, string role)
    {
        var command = _mapper.Map<RegisterCommand>(request);

        command.Role = role;


        var result = _mediator.Send(command);

        return await result.Match(
            success => Results.Created("/auth/login", success),
            failed => failed.ToResult(_logger)
            );
    }
}
