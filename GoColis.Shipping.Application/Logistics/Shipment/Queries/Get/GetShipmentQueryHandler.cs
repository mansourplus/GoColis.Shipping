using GoColis.Shipping.Application.Helpers;
using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Application.Logistics.Shipment.Mappings;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;

public class GetShipmentQueryHandler : IRequestHandler<GetShipmentQuery, ErrorOr<GetShipmentResult>>
{
    private readonly IShipmentRepository _repository;
    private readonly IMapper _mapper;
    public GetShipmentQueryHandler(IShipmentRepository pickupPointRepository, IMapper mapper) 
    {
        _repository = pickupPointRepository;
        _mapper = mapper;
    }

    public async Task<ErrorOr<GetShipmentResult>> Handle(GetShipmentQuery request, CancellationToken cancellationToken)
    {
        var model = await _repository.GetAsync(request.Id);

        if (model is null)
            return ErrorOr.Failure<GetShipmentResult>(Error.NotFound("Shipment.NotFound", $"The requested resource ID \"{request.Id}\" was not found"));

        var visibiliy = model.CheckVisibility(request.OwnerId);

        if (visibiliy is not null)
            return  ErrorOr.Failure<GetShipmentResult>(visibiliy);

        return _mapper.Map<GetShipmentResult>(model);
    }
}