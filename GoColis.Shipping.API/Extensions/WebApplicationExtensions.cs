using GoColis.Shipping.Api.Common.Dtos;
using Swashbuckle.AspNetCore.Annotations;

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
            .Produces<ErrorDto>(500)
            ;

    }

    internal static RouteHandlerBuilder AddSummary(this RouteHandlerBuilder app,string summary, string? description=null)
    {
        return app.WithMetadata(new SwaggerOperationAttribute(summary, description ?? summary));
    }
}
