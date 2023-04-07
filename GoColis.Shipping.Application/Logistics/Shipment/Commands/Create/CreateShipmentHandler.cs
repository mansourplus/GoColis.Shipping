using FluentValidation;
using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Application.Logistics.Helpers;
using MapsterMapper;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.Shipment.Commands.Create;

public class CreateShipmentHandler : IRequestHandler<CreateShipmentCommand, ErrorOr<Guid>>
{
    private readonly IShipmentRepository _pickupPointRepository;
    private readonly IPersonRepository _personRepository;
    private readonly IMapper _mapper;
    private readonly IValidator<CreateShipmentCommand> _validator;
    public CreateShipmentHandler(IShipmentRepository pickupPointRepository, IPersonRepository personRepository, IValidator<CreateShipmentCommand> validator, IMapper mapper)
    {
        _pickupPointRepository = pickupPointRepository;
        _validator = validator;
        _mapper = mapper;
        _personRepository= personRepository;
    }

    public async Task<ErrorOr<Guid>> Handle(CreateShipmentCommand request, CancellationToken cancellationToken)
    {
        var validation = _validator.Validate(request);

        if (!validation.IsValid)
            return ErrorOr.Failure<Guid>(Error.Validation("Shipment.Validation", validation?.Errors?.FirstOrDefault()?.ErrorMessage ?? "A validation error has occurred."));

        var person = await _personRepository.GetConnectedPerson(request.OwnerId);

        var shipment = _mapper.Map<Domain.Logistics.Order.Order>((request, person, UserHelper.GetUser()));

        try
        {
            await _pickupPointRepository.AddAsync(shipment);
        }
        catch (Exception ex)
        {
            return ErrorOr.Failure<Guid>(Error.Unexpected("Shipment.Unexpected", ex.Message));
        }

        return shipment.Id;
    }
}
