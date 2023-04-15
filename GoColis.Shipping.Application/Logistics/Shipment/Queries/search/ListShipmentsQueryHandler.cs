using GoColis.Shipping.Application.Common;
using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.Shipment.Queries.Search;

public class ListShipmentsQueryHandler : IRequestHandler<ListShipmentsQuery, ErrorOr<PagedQueryResponse<List<GetShipmentResult>>>>
{
    private readonly IShipmentRepository _repository;
    private readonly IMapper _mapper;
    public ListShipmentsQueryHandler(IShipmentRepository pickupPointRepository, IMapper mapper)
    {
        _repository = pickupPointRepository;
        _mapper = mapper;
    }

    public async Task<ErrorOr<PagedQueryResponse<List<GetShipmentResult>>>> Handle(ListShipmentsQuery request, CancellationToken cancellationToken)
    {
        var model = await _repository.GetPaginatedListAsync(request.PageSize, request.PageNumber, request.OwnerId);

        //if (model is null)
        //    return ErrorOr.Failure<GetShipmentResult>(Error.NotFound("Shipment.NotFound", $"The requested resource ID \"{request.Id}\" was not found"));

        //var visibiliy = model.CheckVisibility(request.OwnerId);

        //if (visibiliy is not null)
        //    return ErrorOr.Failure<GetShipmentResult>(visibiliy);

        return _mapper.Map<PagedQueryResponse<List<GetShipmentResult>>>(model);
    }
}
