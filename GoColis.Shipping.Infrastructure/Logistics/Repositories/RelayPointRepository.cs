using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Domain.Logistics.RelayPoint;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.EntityFrameworkCore;

namespace GoColis.Shipping.Infrastructure.Logistics.Repositories;

public class RelayPointRepository : Repository, IRelayPointRepository
{
    public RelayPointRepository(DatabaseContext dbContext) : base(dbContext)
    {
    }

    public async Task AddAsync(RelayPoint entity)
    {
        var creatDate = DateTime.UtcNow;
        entity.CreatedAt= creatDate;

        await DbContext.RelayPoints.AddAsync(entity);
        DbContext.SaveChanges();
    }

    public async Task<RelayPoint?> GetAsync(Guid id)
    {
        var entity =await  DbContext.RelayPoints
            .Include(x => x.Contacts)
            .Include(x => x.Adress)
            .FirstOrDefaultAsync(x => x.Id == id);

        if (entity == null)
            return default;

        return entity;
    }
}
