using GoColis.Shipping.Domain.Logistics.Order.ValuesObjects;

namespace GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;


public record GetShipmentResult
{
    public Guid Id { get; set; }
    public bool IsValidated { get; set; }
    public bool IsDelivered { get; set; }
    public bool IsDraft { get; set; }
    public bool IsShipper { get; set; }
    public bool WithInsurance { get; set; }
    public DateTime FromPickupDate { get; set; }
    public DateTime ToPickupDate { get; set; }
    public PersonResponse Shipper { get; set; } = null!;
    public PersonResponse Recipient { get; set; } = null!;
    public InsuranceResponse? Insurance { get; set; }
    public PackageResponse Package { get; set; } = null!;
}
public record InsuranceResponse
{
    public Guid Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public AdressResponse? Adress { get; set; }
    public ContactResponse? Contact { get; set; }
}


public record PackageResponse {
    public Guid Id { get; set; }
    public string Description { get; set; } = string.Empty;
    public string ExtraInformation { get; set; } = string.Empty;
    public PackageType Type { get; set; }
    public decimal TotalPrice { get; set; }
    public FormatResponse Format { get; set; } = null!;
    public List<ItemResponse> Items { get; set; } = new();
}

public record PersonResponse {
    public Guid Id { get; set; }
    public string FirstName { get; set; } = string.Empty;
    public string LastName { get; set; } = string.Empty;
    public AdressResponse Adress { get; set; } = null!;
}

public record AdressResponse {
    public Guid Id { get; set; }
    public string StreetNumber { get; set; } = string.Empty;
    public string Street { get; set; } = string.Empty;
    public string AddressLine1 { get; set; } = string.Empty;
    public string AddressLine2 { get; set; } = string.Empty;
    public string City { get; set; } = string.Empty;
    public string ZipCode { get; set; } = string.Empty;
    public string Country { get; set; } = string.Empty;
    public decimal Latitude { get; set; }
    public decimal Longitude { get; set; }
}


public record FormatResponse {
    public Guid Id { get; set; }
    public decimal Weight { get; set; }
    public decimal Volume { get; set; }
    public decimal Height { get; set; }
    public decimal Length { get; set; }
    public decimal Width { get; set; }
}

public record ItemResponse {
    public Guid Id { get; set; }
    public string Name { get; set; } = string.Empty;
    public string Description { get; set; } = string.Empty;
    public decimal Price { get; set; }
    public int Quantity { get; set; }
}

public record ContactResponse
{
    public Guid Id { get; set; }
    public string FirstName { get; set; } = string.Empty;
    public string LastName { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string Phone { get; set; } = string.Empty;
    public string Role { get; set; } = string.Empty;
}