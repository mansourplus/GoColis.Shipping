using GoColis.Shipping.Api.Extensions;
using GoColis.Shipping.Api.Logistics.Shipment.Requests.Create;
using GoColis.Shipping.Api.Logistics.Shipment.Responses.Get;
using GoColis.Shipping.Application.Logistics.Shipment.Commands.Create;
using GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;
using GoColis.Shipping.Infrastructure.Authentication.Constants;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Api.Logistics;

public static class ShipmentendPoints
{
    public static void MapShipmentEndPoints(this WebApplication app)
    {

        app.MapPost("/api/shipments",
            async (CreateShipmentDto request, IMediator _mediator, ILogger<CreateShipmentCommand> _logger, IMapper _mapper) =>
            {
                var command = _mapper.Map<CreateShipmentCommand>(request);
                command.OwnerId = app.GetUserId();

                var result = _mediator.Send(command);

                return await result.Match(
                    success => Results.Created($"/api/shipments/{success}", success),
                    failed => failed.ToResult(_logger)
                    );

            })
            .RequireAuthorization("permission")
            .CustomProduces<Guid>(201)
            .WithTags(PermissionConstants.CreateShipping.ToString())
            ; 

        app.MapGet("/api/shipments/{id}",
            async (Guid id, IMediator _mediator, ILogger<GetShipmentQuery> _logger, IMapper _mapper) =>
            {
                var result = _mediator.Send(new GetShipmentQuery(id, app.GetUserId()));

                return await result.Match(
                    success => Results.Ok(_mapper.Map<GetShipmentDto>(success)),
                    failed => failed.ToResult(_logger)
                    );
            }).RequireAuthorization()
            .CustomProduces<GetShipmentDto>(200)
            ;
    }
}