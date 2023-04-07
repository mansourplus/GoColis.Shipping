using GoColis.Shipping.Application.Common;
using ENTITY = GoColis.Shipping.Domain.Member.Carrier;

namespace GoColis.Shipping.Application.Logistics.Contracts;

public interface ICarrierRepository : IRepository<ENTITY.Carrier>
{
}
