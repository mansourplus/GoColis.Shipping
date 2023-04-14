namespace GoColis.Shipping.Api.Logistics.Common;

public class AdressDto
{
    /// <summary>
    /// Street number
    /// </summary>
    public string StreetNumber { get;  set; } = string.Empty;

    /// <summary>
    /// Street
    /// </summary>
    public string Street { get;  set; } = string.Empty;

    /// <summary>
    /// Adress
    /// </summary>
    public string AddressLine1 { get;  set; } = string.Empty;

    /// <summary>
    /// Adress
    /// </summary>
    public string AddressLine2 { get;  set; } = string.Empty;

    /// <summary>
    /// Adress
    /// </summary>
    public string City { get;  set; } = string.Empty;

    /// <summary>
    /// Zip code
    /// </summary>
    public string ZipCode { get;  set; } = string.Empty;

    /// <summary>
    /// Country
    /// </summary>
    public string Country { get;  set; } = string.Empty;

    /// <summary>
    /// Latitude
    /// </summary>
    public decimal Latitude { get;  set; }

    /// <summary>
    /// Longitude
    /// </summary>
    public decimal Longitude { get;  set; }
}
