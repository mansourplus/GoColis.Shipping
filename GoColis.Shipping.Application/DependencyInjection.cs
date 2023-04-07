using FluentValidation;
using GoColis.Shipping.Application.Authentication.Commands.Register;
using GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;
using GoColis.Shipping.Application.Logistics.Shipment.Commands.Create;
using Microsoft.Extensions.DependencyInjection;

namespace GoColis.Shipping.Application;

public static class DependencyInjection
{
    public static IServiceCollection AddApplicationServices(this IServiceCollection services)
    {
        services.AddMediatR(cfg =>
        {
            cfg.RegisterServicesFromAssembly(typeof(DependencyInjection).Assembly);
        });

        services.AddScoped<IValidator<CreateRelayPointCommand>, CreateRelayPointCommandValidator>();
        services.AddScoped<IValidator<RegisterCommand>, RegisterCommandValidator>();
        services.AddScoped<IValidator<CreateShipmentCommand>, CreateShipmentValidator>();

        return services;
    }
}