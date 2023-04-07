using GoColis.Shipping.Application.Common;

namespace GoColis.Shipping.Application.Logistics.Contracts;

public interface IShipmentRepository : IRepository<Domain.Logistics.Order.Order>
{
}