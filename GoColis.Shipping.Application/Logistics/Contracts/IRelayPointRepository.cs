using GoColis.Shipping.Application.Common;
using ENTITY = GoColis.Shipping.Domain.Logistics.RelayPoint;

namespace GoColis.Shipping.Application.Logistics.Contracts;

public interface IRelayPointRepository : IRepository<ENTITY.RelayPoint>
{
}
