using GoColis.Shipping.Application.Authentication.Contracts;
using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Infrastructure.Authentication.Repositories;
using GoColis.Shipping.Infrastructure.Logistics.Repositories;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;

namespace GoColis.Shipping.Infrastructure.Common;

public static class DependencyInjection
{
    public static IServiceCollection AddInfrastructureServices(this IServiceCollection services,
        IConfiguration configuration, bool IsDevelopment)
    {
#if SQLLITE
        //if (IsDevelopment)
        //{
        //    services.AddDbContext<DatabaseContext>(options =>
        //        options.UseSqlite(configuration.GetRequiredSection("SqliteDbFile").Value)
        //        );

        //    services.AddFluentMigratorCore()
        //   .ConfigureRunner(config =>
        //   {
        //       config.AddSQLite()
        //       .WithGlobalConnectionString(configuration.GetRequiredSection("SqliteDbFile").Value)
        //       .ScanIn(Assembly.GetExecutingAssembly()).For.All();

        //   })
        //   .AddLogging(config=>config.AddFluentMigratorConsole());
        //}
#endif
        services.AddDbContext<DatabaseContext>(options =>
            options.UseSqlServer(configuration.GetConnectionString("ShippingDatabase"))
                .LogTo(Console.WriteLine, Microsoft.Extensions.Logging.LogLevel.Debug)
                .EnableSensitiveDataLogging()
                .EnableDetailedErrors()
        );

        services.AddScoped<IRelayPointRepository, RelayPointRepository>();
        services.AddScoped<IShipmentRepository, ShipmentRepository>();
        services.AddScoped<ICarrierRepository, CarrierRepository>();
        services.AddScoped<IPersonRepository, PersonRepository>();
        services.AddScoped<IJwtProvider, JwtProvider>();

        services.AddScoped<IPermissionRepository, PermissionRepository>();
        services.AddScoped<IMemoryCache, MemoryCache>();

        return services;
    }

    public static IServiceScope MigrateDatabase(this IServiceScope scope)
    {
        using var db = scope.ServiceProvider.GetService<DatabaseContext>();
        db!.Database.Migrate();

        return scope;
    }
}