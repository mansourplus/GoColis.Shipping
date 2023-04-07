using GoColis.Shipping.Domain.Common.Base;

namespace GoColis.Shipping.Domain.Common.Entities;

public class Adress : EntityId
{
#pragma warning disable CS8618
    private Adress() { }
#pragma warning restore CS8618 

    private Adress(Guid id, string streetNumber, string street, string addressLine1, string addressLine2, string city, string zipCode, string country, decimal latitude, decimal longitude)
    : base(id)
    {
        StreetNumber = streetNumber;
        Street = street;
        AddressLine1 = addressLine1;
        AddressLine2 = addressLine2;
        City = city;
        ZipCode = zipCode;
        Country = country;
        Latitude = latitude;
        Longitude = longitude;
    }

    public string StreetNumber { get; set; }
    public string Street { get; set; }
    public string AddressLine1 { get; set; }
    public string AddressLine2 { get; set; }
    public string City { get; set; }
    public string ZipCode { get; set; }
    public string Country { get; set; }
    public decimal Latitude { get; set; }
    public decimal Longitude { get; set; }

    public static Adress Create(string streetNumber, string street, string addressLine1, string addressLine2, string city, string zipCode, string country, decimal latitude, decimal longitude)
    {
        return new Adress(
            Guid.NewGuid(),
            streetNumber,
            street,
            addressLine1,
            addressLine2,
            city,
            zipCode,
            country,
            latitude,
            longitude
            );
    }
}