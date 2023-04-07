using FluentValidation;

namespace GoColis.Shipping.Application.Authentication.Commands.Register;

public class RegisterCommandValidator : AbstractValidator<RegisterCommand>
{
    public RegisterCommandValidator()
    {
        RuleFor(x => x.FirstName).NotEmpty().WithMessage("FirstName field shouldn't be empty");
        RuleFor(x => x.LastName).NotEmpty().WithMessage("LastName field shouldn't be empty");
        RuleFor(x => x.Email).EmailAddress().WithMessage("Invalid email adress");
        RuleFor(x => x.Phone).MinimumLength(8).WithMessage("Invalid phone number");
        RuleFor(x => x.Password).MinimumLength(8).WithMessage("Invalid Password");

        RuleFor(x => x.ConfirmPassword).Custom((x, y) =>
        {
            if (x != y.InstanceToValidate.Password)
                y.AddFailure("ConfirmPassword", "Passwords are not same");
        });

        RuleFor(x => x.Role).Custom((x, y) =>
        {
            if (!Constants.Roles.ApplicationRoles.Any(r => r == x) || x == Constants.Roles.SuperAdmin)
                y.AddFailure("Role", $"Invalid role : {x}");
        });
    }
}
