using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.RelayPoint.Queries.GetRelayPoint;

public class GetRelayPointQuery : IRequest<ErrorOr<GetRelayPointResult>>
{
    public GetRelayPointQuery(Guid id)
    {
        Id = id;
    }

    public Guid Id { get; set; }
}
