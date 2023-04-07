using GoColis.Shipping.Api.Authentication;
using GoColis.Shipping.Api.Authentication.Handlers;
using GoColis.Shipping.Api.Logistics;
using GoColis.Shipping.Api.Logistics.RelayPoint;
using GoColis.Shipping.Application.Common;
using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Domain.Common;
using GoColis.Shipping.Infrastructure.Authentication.Options;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using Microsoft.OpenApi.Models;
using System.Text;

namespace GoColis.Shipping.Api.Common;

public static class DependencyInjection
{
    public static void AddAuth(this IServiceCollection services, IConfiguration Configuration)
    {
        var jwtOptions = new JwtOptions();
        Configuration.Bind(nameof(JwtOptions),jwtOptions);

        services.AddSingleton(Options.Create(jwtOptions));
        services.AddSingleton<IAuthorizationHandler,PermissionAuthorizationHandler>();

        services.AddIdentity<User, Role>()
            .AddUserStore<UserStore<User, Role, DatabaseContext, Guid, UserClaim, UserRole, UserLogin, UserToken, RoleClaim>>()
            .AddRoleStore<RoleStore<Role, DatabaseContext, Guid, UserRole, RoleClaim>>()
            .AddEntityFrameworkStores<DatabaseContext>()
            .AddDefaultTokenProviders();

        services.AddAuthorization(options =>
        {
            options.AddPolicy("permission", pp =>
            {
                pp.RequireAuthenticatedUser()
                .AddAuthenticationSchemes(JwtBearerDefaults.AuthenticationScheme)
                .AddRequirements(new PermissionRequirement());
            });
        });

        services.AddAuthentication(options =>
        {
            options.DefaultAuthenticateScheme = JwtBearerDefaults.AuthenticationScheme;
            options.DefaultChallengeScheme = JwtBearerDefaults.AuthenticationScheme;
            options.DefaultScheme = JwtBearerDefaults.AuthenticationScheme;
        })
       .AddJwtBearer(options =>
       {
           options.SaveToken = true;
           options.TokenValidationParameters = new TokenValidationParameters()
           {
               ValidateIssuer = true,
               ValidateAudience = true,
               ValidateIssuerSigningKey = true,
               ValidateLifetime = true,
               ValidAudiences = jwtOptions.ValidAudiences,
               ValidIssuer = jwtOptions.ValidIssuer,
               IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtOptions.Secret)),
               
               
           };
       });
    }


    public static IServiceCollection AddSwaggerDocumentation(this IServiceCollection services)
    {
        services.AddEndpointsApiExplorer();
        services.AddSwaggerGen(config =>
        {
            ////Name the security scheme
            config.AddSecurityDefinition("Bearer", new OpenApiSecurityScheme
            {
                Description = "JWT Authorization",
                Name = "Authorization",
                In = ParameterLocation.Header,
                Type = SecuritySchemeType.Http,
                Scheme = "bearer",
                BearerFormat = "JWT"
            });

            config.AddSecurityRequirement(new OpenApiSecurityRequirement()
            {
                {
                    new OpenApiSecurityScheme
                    {
                        Reference = new OpenApiReference
                        {
                            Type = ReferenceType.SecurityScheme,

                            //The name of the previously defined security scheme.
                            Id = "Bearer"
                        }

                    },
                    new List<string>()
                }
            });

        });
        return services;
    }

    public static IApplicationBuilder UseSwaggerDocumentation(this IApplicationBuilder app)
    {
        app.UseSwagger();
        app.UseSwaggerUI();

        return app;
    }

    public static WebApplication AddEndPoints(this WebApplication app)
    {
        app.MapRelayPointEndPoints();
        app.MapShipmentEndPoints();
        app.MapAuthenticationEndPoints();

        return app;
    }

}