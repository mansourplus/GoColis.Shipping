using MediatR;
using Owls.ErrorOr.Core;
using ENTITY = GoColis.Shipping.Domain.Logistics.RelayPoint;

namespace GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;

public class CreateRelayPointCommand : IRequest<ErrorOr<Guid>>
{
    public Guid Id { get; set; }
    public string Name { get; set; } = string.Empty;

    public Adress Adress { get; set; } = null!;
    public Contact Contact { get; set; } = null!;

    public ENTITY.RelayPoint ToRelayPoint(string createdBy)
    {
        return ENTITY.RelayPoint.Create(
            Name,
            Adress.ToAdress(),
            Contact.ToContact(),
            new(),
            createdBy
            );
    }
}


public class Adress
{
    public string StreetNumber { get; set; }=string.Empty;
    public string Street { get; set; } = string.Empty;
    public string AddressLine1 { get; set; } = string.Empty;
    public string AddressLine2 { get; set; } = string.Empty;
    public string City { get; set; } = string.Empty;
    public string ZipCode { get; set; } = string.Empty;
    public string Country { get; set; } = string.Empty;
    public decimal Latitude { get; set; }
    public decimal Longitude { get; set; }

    public Domain.Common.Entities.Adress ToAdress()
    {
        return Domain.Common.Entities.Adress.Create(
                StreetNumber,
                Street,
                AddressLine1,
                AddressLine2,
                City,
                ZipCode,
                Country,
                Latitude,
                Longitude);
    }
}


public class Contact
{
    public string FirstName { get; set; } = string.Empty;
    public string LastName { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string Phone { get; set; } = string.Empty;
    public string Role { get; set; } = string.Empty;

    public List<Domain.Common.Entities.Contact> ToContact()
    {
        return new List<Domain.Common.Entities.Contact>{
            Domain.Common.Entities.Contact.Create(FirstName,
                LastName,
                Email,
                Phone,
                Role)
        };
    }
}