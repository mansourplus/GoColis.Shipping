using GoColis.Shipping.Api.Logistics.RelayPoint.Requests.Create;
using GoColis.Shipping.Api.Logistics.RelayPoint.Responses.Get;
using GoColis.Shipping.Application.Logistics.RelayPoint.Commands.CreateRelayPointPoint;
using GoColis.Shipping.Application.Logistics.RelayPoint.Queries.GetRelayPoint;
using Mapster;

namespace GoColis.Shipping.Api.Logistics.RelayPoint.Mappings;

public class RelayPointMapperConfig:IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<CreateRelayPointCommand, CreateRelayPointDto>()
            ;

        config.NewConfig<GetRelayPointDto, GetRelayPointResult>()
            ;
    }
}