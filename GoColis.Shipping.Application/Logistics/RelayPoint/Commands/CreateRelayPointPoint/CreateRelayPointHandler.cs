using FluentValidation;
using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Application.Logistics.Helpers;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;

public class CreateRelayPointHandler : IRequestHandler<CreateRelayPointCommand, ErrorOr<Guid>>
{
    private readonly IRelayPointRepository _relayPointRepository;
    private readonly IMapper _mapper;
    private readonly IValidator<CreateRelayPointCommand> _validator;
    public CreateRelayPointHandler(IRelayPointRepository relayPointRepository, IValidator<CreateRelayPointCommand> validator, IMapper mapper)
    {
        _relayPointRepository = relayPointRepository;
        _validator = validator;
        _mapper = mapper;
    }

    public async Task<ErrorOr<Guid>> Handle(CreateRelayPointCommand request, CancellationToken cancellationToken)
    {
        var validation = _validator.Validate(request);

        if (!validation.IsValid)
            return ErrorOr.Failure<Guid>(Error.Validation("PickupPoint.Validation", validation.Errors.FirstOrDefault()?.ErrorMessage ?? "Validation error"));

        var pickupPoint = _mapper.Map<Domain.Logistics.RelayPoint.RelayPoint>((request, UserHelper.GetUser()));

        try
        {
            await _relayPointRepository.AddAsync(pickupPoint);
        }
        catch (Exception ex)
        {
            return ErrorOr.Failure<Guid>(Error.Unexpected("PickupPoint.Unexpected", ex.Message));
        }

        return pickupPoint.Id;
    }
}
