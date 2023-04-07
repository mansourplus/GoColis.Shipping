using GoColis.Shipping.Application.Logistics.Shipment.Commands.Create;
using GoColis.Shipping.Domain.Member.Person;
using Mapster;
using COMMAND = GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;
using ENTITY = GoColis.Shipping.Domain.Logistics.Order;

namespace GoColis.Shipping.Application.Logistics.Shipment.Mappings;


public class ShipmentMappingConfig : IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<ENTITY.Order, COMMAND.GetShipmentResult>()
            ; 
        
        
        config.NewConfig<(CreateShipmentCommand Shipment, Person person, string Createdby),ENTITY.Order  > ()
            .ConstructUsing(src=> src.Shipment.ToShipment(src.person, src.Createdby))
            ;

    }
}