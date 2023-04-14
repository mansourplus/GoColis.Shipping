using GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;
using GoColis.Shipping.Application.Logistics.RelayPoint.Queries.GetRelayPoint;
using Mapster;
using ENTITY = GoColis.Shipping.Domain.Logistics.RelayPoint;

namespace GoColis.Shipping.Application.Logistics.RelayPoint.Mappings;


public partial class RelayPointMappingConfig : IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<ENTITY.RelayPoint, GetRelayPointResult>()
            .Map(x => x.Contact, x => GetFirstContact(x.Contacts));

        config.NewConfig<Domain.Common.Entities.Contact, Queries.GetRelayPoint.Contact>()
            ;

        config.NewConfig<(CreateRelayPointCommand RelayPoint, string CreatedBy), ENTITY.RelayPoint>()
            .ConstructUsing(src => src.RelayPoint.ToRelayPoint(src.CreatedBy))
            ;
    }

    static Domain.Common.Entities.Contact? GetFirstContact(IEnumerable<Domain.Common.Entities.Contact> contacts)
    {
        return contacts?.FirstOrDefault();
    }
}
