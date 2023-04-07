using FluentValidation;

namespace GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;

public class CreateRelayPointCommandValidator : AbstractValidator<CreateRelayPointCommand>
{
    public CreateRelayPointCommandValidator()
    {
        RuleFor(x => x.Contact.FirstName).NotNull().WithMessage("FirstName field shouldn't be empty");
        RuleFor(x => x.Contact.LastName).Length(0, 10).WithMessage("LastName field shouldn't be empty");
        RuleFor(x => x.Contact.Email).EmailAddress().WithMessage("Invalid email adress");
        RuleFor(x => x.Contact.Phone).MinimumLength(8).WithMessage("Invalid phone number");
    }
}
