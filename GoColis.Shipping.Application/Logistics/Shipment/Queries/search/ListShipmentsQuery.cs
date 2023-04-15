using GoColis.Shipping.Application.Common;
using GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.Shipment.Queries.Search;

public class ListShipmentsQuery : IRequest<ErrorOr<PagedQueryResponse<List<GetShipmentResult>>>>
{
    public int PageNumber { get; set; }
    public int PageSize { get; set; }

    public Guid? OwnerId { get; set; }
    public ListShipmentsQuery(int pageNumber, int pageSize, Guid? ownerId)
    {
        this.PageNumber = pageNumber < 1 ? 1 : pageNumber;
        this.PageSize = pageSize > 10 ? 10 : pageSize;
        OwnerId = ownerId;
    }
}

