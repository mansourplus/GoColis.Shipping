﻿using GoColis.Shipping.Api.Extensions;
using GoColis.Shipping.Api.Logistics.RelayPoint.Requests.Create;
using GoColis.Shipping.Api.Logistics.RelayPoint.Responses.Get;
using GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;
using GoColis.Shipping.Application.Logistics.RelayPoint.Queries.GetRelayPoint;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Api.Logistics.RelayPoint;

public static class RelayPointEndPoints
{
    private const string TAG = "Relaypoint";
    public static void MapRelayPointEndPoints(this WebApplication app)
    {

        app.AddRelayPoint();

        app.GetRelayPoint();
    }

    internal static void AddRelayPoint(this WebApplication app)
    {

        app.MapPost("/api/relaypoint",
            async (CreateRelayPointDto request, IMediator _mediator, ILogger<CreateRelayPointCommand> _logger, IMapper _mapper, IHttpContextAccessor httpContextAccessor) =>
            {

                var command = _mapper.Map<CreateRelayPointCommand>(request);

                var result = _mediator.Send(command);

                return await result.Match(
                    success => Results.Created($"/api/relaypoint/{success}", success),
                    failed => failed.ToResult(_logger)
                    );

            })
            .AddSummary("Add relaypoint")
            .WithTags(TAG)
            .RequireAuthorization()
            .CustomProduces<Guid>(201);
    }

    internal static void GetRelayPoint(this WebApplication app)
    {

        app.MapGet("/api/relaypoint/{id}",
            async (Guid id, IMediator _mediator, ILogger<GetRelayPointQuery> _logger, IMapper _mapper) =>
            {
                var result = _mediator.Send(new GetRelayPointQuery(id));

                return await result.Match(
                    success => Results.Ok(_mapper.Map<GetRelayPointDto>(success)),
                    failed => failed.ToResult(_logger)
                    );
            })
            .AddSummary("Get relaypoint")
            .WithTags(TAG)
            .RequireAuthorization()
            .CustomProduces<GetRelayPointDto>(200);
    }
}