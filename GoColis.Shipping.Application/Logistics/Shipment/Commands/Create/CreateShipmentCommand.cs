using GoColis.Shipping.Domain.Common.Entities;
using GoColis.Shipping.Domain.Logistics.Insurance;
using GoColis.Shipping.Domain.Logistics.Order;
using GoColis.Shipping.Domain.Logistics.Order.Entities;
using GoColis.Shipping.Domain.Logistics.Order.ValuesObjects;
using GoColis.Shipping.Domain.Member.Person;
using MediatR;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Logistics.Shipment.Commands.Create;

public record CreateShipmentCommand: IRequest<ErrorOr<Guid>>
{
    public Guid OwnerId { get; set; }
    public bool IsShipper { get; set; }
    public bool WithInsurance { get; set; }
    public DateTime FromPickupDate { get; set; }
    public DateTime ToPickupDate { get; set; }  
    public PersonCommand Shipper { get; set; } = null!;
    public PersonCommand Recipient { get; set; } = null!;
    public InsuranceCommand? Insurance { get; set; } = null!;
    public PackageCommand Package { get; set; } = null!;

    public virtual Order ToShipment(Person person, string createdBy)
    {
        return Order.Create(
            person.Id,
            IsShipper,
            WithInsurance,
            FromPickupDate,
            ToPickupDate,
            IsShipper ? person : Shipper.ToPerson(createdBy),
            !IsShipper ? person : Shipper.ToPerson(createdBy),
            Insurance?.ToInsurance(),
            Package.ToPackage(),
            null);
    }
}

public record PersonCommand
{
    public string FirstName { get; set; } = null!;
    public string LastName { get; set; } = null!;
    public AdressCommand Adress { get; set; } = null!;
    public ContactCommand? Contact { get; set; } = null!;
    public Person ToPerson(string createdBy)
    {
        return Person.Create(Adress.ToAdress(), Contact?.ToContact(), null);
    }
}

public record InsuranceCommand
{
    public string Name { get; set; } = null!;
    public AdressCommand Adress { get; set; } = null!;
    public ContactCommand Contact { get; set; } = null!;
    public Insurance ToInsurance()
    {
        return Insurance.Create(Name, Adress.ToAdress(), Contact.ToContact().First());
    }
}

public record PackageCommand
{
    public string Description { get; set; } = null!;
    public string ExtraInformation { get; set; } = null!;
    public PackageType Type { get; set; }
    public decimal TotalPrice { get; set; }
    public FormatCommand Format { get; set; } = null!;
    public IEnumerable<ItemCommand> Items { get; set; } = null!;


    public Package ToPackage()
    {
        return Package.Create(Description, ExtraInformation, Type, TotalPrice, Format.ToFormat(), Items.Select(x => x.ToItem()).ToList());
    }
}

public record AdressCommand
{
    public string StreetNumber { get; set; } = null!;
    public string Street { get; set; } = null!;
    public string AddressLine1 { get; set; } = null!;
    public string AddressLine2 { get; set; } = null!;
    public string City { get; set; } = null!;
    public string ZipCode { get; set; } = null!;
    public string Country { get; set; } = null!;
    public decimal Latitude { get; set; }
    public decimal Longitude { get; set; }

    public Adress ToAdress()
    {
        return Adress.Create(StreetNumber, Street, AddressLine1, AddressLine2, City, ZipCode, Country, Latitude, Longitude);
    }
}

public record FormatCommand
{
    public decimal Weight { get; set; }
    public decimal Volume { get; set; }
    public decimal Height { get; set; }
    public decimal Length { get; set; }
    public decimal Width { get; set; }

    public Format ToFormat()
    {
        return new Format
        {
            Weight = Weight,
            Volume = Volume,
            Height = Height,
            Length = Length,
            Width = Width
        };
    }
}

public record ItemCommand
{
    public string Name { get; set; } = null!;
    public string Description { get; set; } = null!;
    public decimal Price { get; set; }
    public int Quantity { get; set; }

    public Item ToItem()
    {
        return Item.Create(Name, Description, Price, Quantity);
    }
}

public record ContactCommand
{
    public string FirstName { get; set; } = null!;
    public string LastName { get; set; } = null!;
    public string Email { get; set; } = null!;
    public string Phone { get; set; } = null!;
    public string Role { get; set; } = null!;

    public List<Contact> ToContact()
    {
        return new List<Contact> 
        {
            Contact.Create(FirstName, LastName, Email, Phone, Role)
        };
    }
}