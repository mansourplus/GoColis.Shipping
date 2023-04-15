using GoColis.Shipping.Application.Common;
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
            .Include(x=>x.Sender)
            .Include(x=>x.Receiver)
            .Include(x=>x.RelayPoint)
            .Include(x=>x.PickupPoint)
            //.AsSplitQuery()
            .FirstOrDefaultAsync(x => x.Id == id);

       return entity;
    }

    public async Task<PagedQueryResponse<List<Order>>> GetPaginatedListAsync(int pageSize, int pageNumber, Guid? ownerId)
    {
        var list = await DbContext.Shipments
            //.Include(x => x.Insurance)
            .Include(x => x.Sender)
            .Include(x => x.Receiver)
            //.Include(x => x.RelayPoint)
            //.Include(x => x.PickupPoint)
            .Where(x=> !ownerId.HasValue || x.OwnerId == ownerId)
            .Skip((pageNumber - 1) * pageSize)
            .Take(pageSize)
            //.AsSplitQuery()
            .ToListAsync()
            ;

        var response= new PagedQueryResponse<List<Order>>(list);

        response.TotalRecords = await DbContext.Shipments.CountAsync();


        return response;
    }
}