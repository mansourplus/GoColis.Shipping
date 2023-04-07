using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Authentication.Commands.Register;

public class RegisterCommand : IRequest<ErrorOr<bool>>
{
    public string FirstName { get; set; } = string.Empty;
    public string LastName { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string Phone{ get; set; } = string.Empty;

    public string StreetNumber { get; set; } = string.Empty;
    public string Street { get; set; } = string.Empty;
    public string AddressLine1 { get; set; } = string.Empty;
    public string AddressLine2 { get; set; } = string.Empty;
    public string City { get; set; } = string.Empty;
    public string ZipCode { get; set; } = string.Empty;
    public string Country { get; set; } = string.Empty;
    public decimal Latitude { get; set; }
    public decimal Longitude { get; set; }

    public string Password { get; set; } = string.Empty;

    public string ConfirmPassword { get; set; } = string.Empty;



    public string Role{ get; set; } = string.Empty;
}
