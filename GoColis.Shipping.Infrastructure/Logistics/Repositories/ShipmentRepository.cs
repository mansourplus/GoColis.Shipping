using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Domain.Logistics.Order;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.EntityFrameworkCore;

namespace GoColis.Shipping.Infrastructure.Logistics.Repositories;

public class ShipmentRepository : Repository, IShipmentRepository
{
    public ShipmentRepository(DatabaseContext dbContext) : base(dbContext)
    {
    }

    public async Task AddAsync(Order entity)
    {
        var creatDate = DateTime.UtcNow;
        entity.CreatedAt = creatDate;

        await DbContext.Shipments.AddAsync(entity);
        DbContext.SaveChanges();
    }

    public async Task<Order?> GetAsync(Guid id)
    {
        var entity = await DbContext.Shipments
            .Include(x=>x.Insurance)
            .AsSplitQuery()
            .FirstOrDefaultAsync(x => x.Id == id);


        if (entity == null)
            return default;

        return entity;
    }
}