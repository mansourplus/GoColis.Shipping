using GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;
using GoColis.Shipping.Application.Logistics.RelayPoint.Queries.GetRelayPoint;
using Mapster;
using ENTITY = GoColis.Shipping.Domain.Logistics.RelayPoint;

namespace GoColis.Shipping.Application.Logistics.RelayPoint.Mappings;


public partial class RelayPointMappingConfig : IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<ENTITY.RelayPoint,GetRelayPointResult>();

        config.NewConfig<(CreateRelayPointCommand RelayPoint, string CreatedBy), ENTITY.RelayPoint>()
            .ConstructUsing(src => src.RelayPoint.ToRelayPoint(src.CreatedBy))
            ;
    }
}
