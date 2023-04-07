using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;

public class GetShipmentQuery : IRequest<ErrorOr<GetShipmentResult>>
{
    public GetShipmentQuery(Guid id, Guid ownerId)
    {
        Id = id;
        OwnerId = ownerId;
    }

    public Guid Id { get; set; }

    public Guid OwnerId { get; set; }
}
