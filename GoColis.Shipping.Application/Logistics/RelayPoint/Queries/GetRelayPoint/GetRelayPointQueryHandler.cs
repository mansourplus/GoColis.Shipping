using GoColis.Shipping.Application.Logistics.Contracts;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.RelayPoint.Queries.GetRelayPoint;

public class GetRelayPointQueryHandler: IRequestHandler<GetRelayPointQuery, ErrorOr<GetRelayPointResult>>
{
    private readonly IRelayPointRepository _pickupPointRepository;
    private readonly IMapper _mapper;
    public GetRelayPointQueryHandler(IRelayPointRepository pickupPointRepository, IMapper mapper)
    {
        _pickupPointRepository = pickupPointRepository;
        _mapper = mapper;
    }

    public async Task<ErrorOr<GetRelayPointResult>> Handle(GetRelayPointQuery request, CancellationToken cancellationToken)
    {
        var model= await _pickupPointRepository.GetAsync(request.Id);

        if (model is null)
            return ErrorOr.Failure<GetRelayPointResult>(Error.NotFound("PickupPoint.NotFound", $"The requested resource ID \"{request.Id}\" was not found"));

        return _mapper.Map<GetRelayPointResult>(model);
    }
}
