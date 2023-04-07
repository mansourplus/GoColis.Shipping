using FluentValidation;
using GoColis.Shipping.Application.Authentication.Constants;
using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Domain.Member.Carrier;
using GoColis.Shipping.Domain.Member.Person;
using MapsterMapper;
using MediatR;
using Microsoft.AspNetCore.Identity;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Authentication.Commands.Register;

public class RegisterCommandHandler : IRequestHandler<RegisterCommand, ErrorOr<bool>>
{
    private readonly UserManager<User> _userManager;
    private readonly IMapper _mapper;
    private readonly IValidator<RegisterCommand> _validator;
    private readonly IPersonRepository _personRepository;
    private readonly ICarrierRepository _carrierRepository;
    public RegisterCommandHandler(UserManager<User> userManager,  IMapper mapper, IValidator<RegisterCommand> validator, IPersonRepository personRepository, ICarrierRepository carrierRepository)
    {
        _userManager = userManager;
        _mapper = mapper;
        _validator= validator;
        _personRepository = personRepository;
        _carrierRepository = carrierRepository;
    }

    public async Task<ErrorOr<bool>> Handle(RegisterCommand request, CancellationToken cancellationToken)
    {
        var validation = _validator.Validate(request);

        if (!validation.IsValid)
            return ErrorOr.Failure<bool>(Error.Validation("RegisterCommand.Validation", validation.Errors.FirstOrDefault()?.ErrorMessage ?? "Validation error"));

        var user = _mapper.Map<User>(request);

        user.UserName = user.Email;

        var identity = await _userManager.CreateAsync(user);

        string error = string.Empty;
        if (identity.Succeeded)
        {
            var identity1 = await _userManager.AddPasswordAsync(user, request.Password);
            if (identity1.Succeeded)
            {
                var identity12 = await _userManager.AddToRoleAsync(user, request.Role);
                if (!identity12.Succeeded)
                {
                    error = identity12?.Errors?.FirstOrDefault()?.Description ?? string.Empty;
                }
            }
            else
            {
                error = identity1?.Errors?.FirstOrDefault()?.Description ?? string.Empty;
            }

            //Roleback if persting problems
            await _userManager.DeleteAsync(user);
        }
        else
        {
            error = identity?.Errors?.FirstOrDefault()?.Description ?? string.Empty;
        }

        if (string.IsNullOrWhiteSpace(error))
        {
            error = request.Role switch
            {
                Roles.Client => await RegisterClient(request, user),
                Roles.Carrier => await RegisterCarrier(request, user),
                _ => string.Empty
            };
        }

        if (!string.IsNullOrEmpty(error))
        {
            return ErrorOr.Failure<bool>(Error.Validation("RegisterCommand.Save", error));
        }

        return true;
    }

    private async Task<string> RegisterCarrier(RegisterCommand request, User user)
    {
        var carrier = _mapper.Map<Carrier>((request,user));

        await _carrierRepository.AddAsync(carrier);

        return string.Empty;
    }

    private async Task<string> RegisterClient(RegisterCommand request, User user)
    {
        var person = _mapper.Map<Person>((request, user));

        await _personRepository.AddAsync(person);

        return string.Empty;
    }
}
