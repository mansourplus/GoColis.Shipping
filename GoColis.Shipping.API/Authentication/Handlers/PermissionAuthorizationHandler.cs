using GoColis.Shipping.Application.Authentication.Contracts;
using Microsoft.AspNetCore.Authorization;
using System.Security.Claims;

namespace GoColis.Shipping.Api.Authentication.Handlers;

public class PermissionAuthorizationHandler : AuthorizationHandler<PermissionRequirement>
{
    protected override async Task HandleRequirementAsync(AuthorizationHandlerContext context, PermissionRequirement requirement)
    {
        
        if(context.Resource is not HttpContext httpctx)
        {
            context.Fail(new AuthorizationFailureReason(this, "Access diened"));
            return ;
        }
        var endpoint = httpctx.GetEndpoint()!;

        var permissions = endpoint.Metadata.OfType<PermissionsAttribute>()
            .SelectMany(x => x.Permissions);

        if(permissions is null || !permissions.Any())
        {
            context.Succeed(requirement);
            return;
        }

        using var scop = httpctx.RequestServices.CreateScope();

        var _permissionRepository = scop.ServiceProvider.GetRequiredService<IPermissionRepository>();

        var userid = httpctx.User.FindFirstValue(ClaimTypes.NameIdentifier)!;

        if(userid is null)
        {
            context.Fail(new AuthorizationFailureReason(this, "Access diened"));
            return;
        }

        var permission = await _permissionRepository.GetUserPermission(new Guid(userid));

        if(permissions.Any(x=> permission.Any(p=>p.Name == x)))
        {
            context.Succeed(requirement);
            return ;
        }

        context.Fail(new AuthorizationFailureReason(this, "Access diened"));
        return ;

    }
}
