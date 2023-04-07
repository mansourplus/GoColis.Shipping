using GoColis.Shipping.Api.Logistics.Shipment.Requests.Create;
using GoColis.Shipping.Api.Logistics.Shipment.Responses.Get;
using GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;
using Mapster;
using COMMAND = GoColis.Shipping.Application.Logistics.Shipment.Commands.Create;

namespace GoColis.Shipping.Api.Logistics.Shipment.Mappings;

public class ShipmentMapperConfig : IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<GetShipmentDto, GetShipmentResult>()
            ;

        config.NewConfig<COMMAND.CreateShipmentCommand, CreateShipmentDto>()
           ;
    }
}