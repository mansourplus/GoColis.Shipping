using COMMAND = GoColis.Shipping.Application.Logistics.Shipment.Queries.Get;
using ENTITY = GoColis.Shipping.Domain.Logistics.Shipment;
using LOGISTIC = GoColis.Shipping.Domain.Logistics;

namespace GoColis.Shipping.Application.Logistics.Shipment.Mappings;
public class ShipmentProfile : AutoMapper.Profile
{
    public ShipmentProfile()
    {
        //DTO -> COMMAND
        CreateMap<ENTITY.Shipment, COMMAND.GetShipmentResponse>();
        CreateMap<ENTITY.Entities.Insurance, COMMAND.InsuranceResponse>();
        CreateMap<ENTITY.Entities.Package, COMMAND.PackageResponse>();
        CreateMap<ENTITY.Entities.Person, COMMAND.PersonResponse>();
        CreateMap<LOGISTIC.ValuesObjects.Adress, COMMAND.AdressResponse>();
        CreateMap<ENTITY.ValuesObjects.Format, COMMAND.FormatResponse>();
        CreateMap<ENTITY.Entities.Item, COMMAND.ItemResponse>();
        CreateMap<LOGISTIC.ValuesObjects.Contact, COMMAND.ContactResponse>();
    }
}

