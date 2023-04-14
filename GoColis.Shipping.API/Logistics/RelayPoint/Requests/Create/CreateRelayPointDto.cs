using GoColis.Shipping.Api.Logistics.Common;

namespace GoColis.Shipping.Api.Logistics.RelayPoint.Requests.Create;

public class CreateRelayPointDto
{
    /// <summary>
    /// RelayPoint name
    /// </summary>
    public string Name { get;  set; } = string.Empty;

    /// <summary>
    /// Adress of the relaypoint
    /// </summary>
    public AdressDto Adress { get; set; } = null!;

    /// <summary>
    /// Contact of the relaypoint
    /// </summary>
    public ContactDto Contact { get; set; } = null!;
}

