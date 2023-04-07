using GoColis.Shipping.Api.Logistics.Common;

namespace GoColis.Shipping.Api.Logistics.RelayPoint.Requests.Create;

public class CreateRelayPointDto
{
    public string Name { get;  set; } = string.Empty;
    public AdressDto Adress { get; set; } = null!;
    public ContactDto Contact { get; set; } = null!;
}

