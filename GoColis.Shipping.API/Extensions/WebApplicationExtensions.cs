using GoColis.Shipping.Api.Authentication.Handlers;
using GoColis.Shipping.Api.Common.Dtos;
using Microsoft.AspNetCore.Http.Metadata;
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

/// <summary>
/// Extension methods for adding <see cref="Endpoint.Metadata"/> that is
/// meant to be consumed by OpenAPI libraries.
/// </summary>
public static class OpenApiRouteHandlerBuilderExtensions
{
    /// <summary>
    /// Adds the <see cref="PermissionsAttribute"/> to <see cref="EndpointBuilder.Metadata"/> for all endpoints
    /// produced by <paramref name="builder"/>.
    /// </summary>
    /// <remarks>
    /// The OpenAPI specification supports a permissions classification to categorize operations
    /// into related groups. These permissions are typically included in the generated specification
    /// and are typically used to group operations by permissions in the UI.
    /// </remarks>
    /// <param name="builder">The <see cref="RouteHandlerBuilder"/>.</param>
    /// <param name="permissions">A collection of permissions to be associated with the endpoint.</param>
    /// <returns>A <see cref="RouteHandlerBuilder"/> that can be used to further customize the endpoint.</returns>
    public static RouteHandlerBuilder WithPermission(this RouteHandlerBuilder builder, params string[] permissions)
        => WithPermission<RouteHandlerBuilder>(builder, permissions);

    /// <summary>
    /// Adds the <see cref="PermissionsAttribute"/> to <see cref="EndpointBuilder.Metadata"/> for all endpoints
    /// produced by <paramref name="builder"/>.
    /// </summary>
    /// <remarks>
    /// The OpenAPI specification supports a permissions classification to categorize operations
    /// into related groups. These permissions are typically included in the generated specification
    /// and are typically used to group operations by permissions in the UI.
    /// </remarks>
    /// <param name="builder">The <see cref="IEndpointConventionBuilder"/>.</param>
    /// <param name="permissions">A collection of permissions to be associated with the endpoint.</param>
    /// <returns>A <see cref="RouteHandlerBuilder"/> that can be used to further customize the endpoint.</returns>
    public static TBuilder WithPermission<TBuilder>(this TBuilder builder, params string[] permissions) where TBuilder : IEndpointConventionBuilder
        => builder.WithMetadata(new PermissionsAttribute(permissions));
}
