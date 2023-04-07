using GoColis.Shipping.Api.Logistics.Common;

namespace GoColis.Shipping.Api.Logistics.RelayPoint.Responses.Get;

public class GetRelayPointDto
{
    public Guid Id { get; set; }
    public string Name { get;  set; } = string.Empty;
    public AdressDto Adress { get; set; } = null!;
    public ContactDto Contact { get; set; } = null!;
}


