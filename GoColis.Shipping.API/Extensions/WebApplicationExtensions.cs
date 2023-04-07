using GoColis.Shipping.Api.Common.Dtos;

namespace GoColis.Shipping.Api.Extensions;

public static class WebApplicationExtensions
{
    internal static Guid GetUserId(this WebApplication app)
    {
        var httpContextAccessor = app.Services.GetRequiredService<IHttpContextAccessor>();

        var claim = httpContextAccessor.HttpContext!.User.Claims.FirstOrDefault(x => x.Type == System.Security.Claims.ClaimTypes.NameIdentifier)!;

        return new Guid(claim.Value);
    }

    internal static RouteHandlerBuilder CustomProduces<TOK>(this RouteHandlerBuilder routeHandlerBuilder, int code)
    {
        return routeHandlerBuilder
            .Produces<TOK>(code)
            .Produces<ErrorDto>(400)
            .Produces(401)
            .Produces<ErrorDto>(404)
            .Produces<ErrorDto>(500);

    }


}
