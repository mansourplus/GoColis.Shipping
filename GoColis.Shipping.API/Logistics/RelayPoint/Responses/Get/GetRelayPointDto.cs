using GoColis.Shipping.Api.Logistics.Common;

namespace GoColis.Shipping.Api.Logistics.RelayPoint.Responses.Get;

public class GetRelayPointDto
{
    /// <summary>
    /// Relaypoint id
    /// </summary>
    public Guid Id { get; set; }

    /// <summary>
    /// RelayPoint name
    /// </summary>
    public string Name { get; set; } = string.Empty;

    /// <summary>
    /// Adress of the relaypoint
    /// </summary>
    public AdressDto Adress { get; set; } = null!;

    /// <summary>
    /// Contact of the relaypoint
    /// </summary>
    public ContactDto Contact { get; set; } = null!;
}


