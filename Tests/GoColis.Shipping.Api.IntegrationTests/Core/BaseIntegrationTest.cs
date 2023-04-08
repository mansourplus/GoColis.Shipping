using GoColis.Shipping.Infrastructure.Authentication.Options;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Options;
using Microsoft.IdentityModel.Tokens;
using System.IdentityModel.Tokens.Jwt;
using System.Security.Claims;
using System.Text;

namespace GoColis.Shipping.Api.IntegrationTests.Core;

public class BaseIntegrationTest : WebApplicationFactory<Program>
{
    protected async Task<HttpClient> CreateClient()
    {
        var application = GetApplication();

        var client = application.CreateClient();

        client.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", MockToken());

        return client;
    }

    protected WebApplicationFactory<Program> GetApplication()
    {
        return new WebApplicationFactory<Program>().WithWebHostBuilder(builder =>
        {

            ConfigureWebHost(builder);

            builder.ConfigureTestServices(services =>
            {
                var options = new DbContextOptionsBuilder<DatabaseContext>()
                                .UseSqlServer(TestingConstants.SqlConnection)
                                .Options;
                services.AddSingleton(options);
                services.AddScoped<DatabaseContext>();
                ////services.AddSingleton(NotificationServiceFake);

                //services.Configure<JwtBearerOptions>(JwtBearerDefaults.AuthenticationScheme, options =>
                //{
                //    var config = new OpenIdConnectConfiguration()
                //    {
                //        Issuer = MockJwtTokens.Issuer
                //    };

                //    config.SigningKeys.Add(MockJwtTokens.SecurityKey);
                //    options.Configuration = config;
                //});
            });
        });
    }

    private void ConfigureWebHost(IWebHostBuilder builder)
    {
        builder.ConfigureTestServices(ConfigureServices);
        builder.ConfigureLogging((context, loggingBuilder) =>
        {
            loggingBuilder.ClearProviders();
            loggingBuilder.AddConsole(options => options.IncludeScopes = true);
        });
    }

    protected void ConfigureServices(IServiceCollection services)
    {
        var jwtOptions = new JwtOptions
        {
            Secret = "secretsecretsecretsecretsecretsecretsecretsecret",
            ValidAudiences = new() { "test" },
            ValidIssuer = "shippingapp",
            ExpiryMinutes = 60
        };
        services.AddSingleton(Options.Create(jwtOptions));

        // services.AddAuthentication()
        //.AddJwtBearer(options =>
        //{
        //    options.SaveToken = true;
        //    options.TokenValidationParameters = new TokenValidationParameters()
        //    {
        //        ValidateIssuer = true,
        //        ValidateAudience = true,
        //        ValidateIssuerSigningKey = true,
        //        ValidateLifetime = true,
        //        ValidAudiences = jwtOptions.ValidAudiences,
        //        ValidIssuer = jwtOptions.ValidIssuer,
        //        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(jwtOptions.Secret)),


        //    };
        //});
    }

    private string MockToken()
    {
        var authClaims = new List<Claim>
        {
            new Claim(JwtRegisteredClaimNames.Sub, "test"),
            new Claim(JwtRegisteredClaimNames.Email, "test"),
            new Claim(JwtRegisteredClaimNames.UniqueName, "test"),
            new Claim(ClaimTypes.Role, Guid.NewGuid().ToString()),
            new Claim(ClaimTypes.Role, "test"),
            new Claim(JwtRegisteredClaimNames.Aud, "test")
        };

        var authSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("secretsecretsecretsecretsecretsecretsecretsecret"));

        var token = new JwtSecurityToken(
            expires: DateTime.Now.AddMinutes(60),
            claims: authClaims,
            audience: null,
            issuer: "shippingapp",
            signingCredentials: new SigningCredentials(authSigningKey, SecurityAlgorithms.HmacSha256)
            );

        return new JwtSecurityTokenHandler().WriteToken(token);
    }
}