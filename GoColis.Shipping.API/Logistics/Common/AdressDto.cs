namespace GoColis.Shipping.Api.Logistics.Common;

public class AdressDto
{
    public string StreetNumber { get;  set; } = string.Empty;
    public string Street { get;  set; } = string.Empty;
    public string AddressLine1 { get;  set; } = string.Empty;
    public string AddressLine2 { get;  set; } = string.Empty;
    public string City { get;  set; } = string.Empty;
    public string ZipCode { get;  set; } = string.Empty;
    public string Country { get;  set; } = string.Empty;
    public decimal Latitude { get;  set; }
    public decimal Longitude { get;  set; }
}
