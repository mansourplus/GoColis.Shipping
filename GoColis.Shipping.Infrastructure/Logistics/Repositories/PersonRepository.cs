using GoColis.Shipping.Application.Logistics.Contracts;
using GoColis.Shipping.Domain.Common;
using GoColis.Shipping.Domain.Member.Person;
using GoColis.Shipping.Infrastructure.Common;
using Microsoft.EntityFrameworkCore;

namespace GoColis.Shipping.Infrastructure.Logistics.Repositories;

public class PersonRepository : Repository, IPersonRepository
{
    public PersonRepository(DatabaseContext dbContext) : base(dbContext)
    {
    }

    public async Task AddAsync(Person entity)
    {
        await DbContext.Persons.AddAsync(entity);
        DbContext.SaveChanges();
    }

    public async Task<Person?> GetAsync(Guid id)
    {
        var entity = await DbContext.Persons
            .Include(x => x.Contacts)
            .Include(x => x.Adress)
            .Include(x=>x.User)
            .FirstOrDefaultAsync(x => x.Id == id);

        if (entity == null)
            return default;
        return entity;
    }

    public async Task<Person?> GetConnectedPerson(Guid id)
    {
        var entity = await DbContext.Persons
            .FirstOrDefaultAsync(x => x.User != null && x.User.Id == id);

        if (entity == null)
            return default;

        return entity;
    }
}
