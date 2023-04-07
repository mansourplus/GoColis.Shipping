using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Domain.Member.Carrier;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.EntityFrameworkCore;

namespace GoColis.Shipping.Infrastructure.Logistics.Repositories;

public class CarrierRepository : Repository, ICarrierRepository
{
    public CarrierRepository(DatabaseContext dbContext) : base(dbContext)
    {
    }

    public async Task AddAsync(Carrier entity)
    {
        await DbContext.Carriers.AddAsync(entity);
        DbContext.SaveChanges();
    }

    public async Task<Carrier?> GetAsync(Guid id)
    {
        var entity =await  DbContext.Carriers
            .Include(x => x.Person)
            .ThenInclude(x=>x.Contacts)
            .FirstOrDefaultAsync(x => x.Id == id);

        if (entity == null)
            return default;

        return entity;
    }
}
