using Azure.Core;
using GoColis.Shipping.Api.Common;
using GoColis.Shipping.Api.Extensions;
using GoColis.Shipping.Api.Logistics.Shipment.Requests.Create;
using GoColis.Shipping.Api.Logistics.Shipment.Responses.Get;
using GoColis.Shipping.Application.Logistics.Shipment.Commands.Create;
using GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;
using GoColis.Shipping.Application.Logistics.Shipment.Queries.Search;
using GoColis.Shipping.Infrastructure.Authentication.Constants;
using MapsterMapper;
using MediatR;
using Microsoft.AspNetCore.Mvc;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Api.Logistics;

public static class ShipmentendPoints
{
    private const string TAG = "Orders";


    public static void MapShipmentEndPoints(this WebApplication app)
    {

        app.AddOrder();

        app.GetOrder();

        app.ListOrder();
    }

    /// <summary>
    /// 
    /// </summary>
    /// <param name="app"></param>
    public static void AddOrder(this WebApplication app)
    {

        app.MapPost("/api/orders",
            async (CreateShipmentDto request, IMediator _mediator, ILogger<CreateShipmentCommand> _logger, IMapper _mapper) =>
            {
                var command = _mapper.Map<CreateShipmentCommand>(request);
                command.OwnerId = app.GetUserId();

                var result = _mediator.Send(command);

                return await result.Match(
                    success => Results.Created($"/api/orders/{success}", success),
                    failed => failed.ToResult(_logger)
                    );

            })
            .AddSummary("Create order")
            .RequireAuthorization("permission")
            .CustomProduces<Guid>(201)
            .WithTags(TAG)
            .WithPermission(PermissionConstants.CreateShipping.ToString())
            ;
    }

   
    public static void GetOrder(this WebApplication app)
    {
        app.MapGet("/api/orders/{id}",
            async (Guid id, IMediator _mediator, ILogger<GetShipmentQuery> _logger, IMapper _mapper) =>
            {
                var result = _mediator.Send(new GetShipmentQuery(id, app.GetUserId()));

                return await result.Match(
                    success => Results.Ok(_mapper.Map<GetShipmentDto>(success)),
                    failed => failed.ToResult(_logger)
                    );
            })
            .AddSummary("Get Order")
            .RequireAuthorization()
            .WithTags(TAG)
            .WithPermission(PermissionConstants.ReadShipping.ToString())
            .CustomProduces<GetShipmentDto>(200)
            ;
    }

    public static void ListOrder(this WebApplication app)
    {
        app.MapGet("/api/orders",
            async (int? pageNumber, int? pageSize, [FromServices] IMediator _mediator, [FromServices] ILogger<GetShipmentQuery> _logger, [FromServices] IMapper _mapper, [FromServices] IUriService _uriService, [FromServices]IHttpContextAccessor _httpContextAccessor) =>
            {
                var validfilter = new PaginationFilter(pageNumber ?? 0, pageSize ?? 0);
               
                var result = _mediator.Send(new ListShipmentsQuery(validfilter.PageNumber, validfilter.PageSize,app.GetUserId()));

                return await result.Match(
                    success => 
                    {
                        var route = _httpContextAccessor.HttpContext!.Request.Path.Value!;

                        var data = _mapper.Map<List<GetShipmentDto>>(success.Data);

                        var response=  PaginationHelper.CreatePagedReponse(data, validfilter, success.TotalRecords, _uriService, route);

                        return Results.Ok(response);
                    },
                    failed => failed.ToResult(_logger)
                    );
            })
            .AddSummary("List Order")
            .RequireAuthorization()
            .WithTags(TAG)
            .WithPermission(PermissionConstants.ReadShipping.ToString())
            .CustomProduces<PagedResponse<List<GetShipmentDto>>>(200)
            ;
    }
}