using GoColis.Shipping.Application.Common;
using GoColis.Shipping.Domain.Logistics.Order;

namespace GoColis.Shipping.Application.Logistics.Contracts;

public interface IShipmentRepository : IRepository<Order>
{
    Task<PagedQueryResponse<List<Order>>> GetPaginatedListAsync(int pageSize, int pageNumber, Guid? ownerId);
}