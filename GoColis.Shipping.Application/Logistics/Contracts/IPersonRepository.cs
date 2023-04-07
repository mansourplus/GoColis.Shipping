using GoColis.Shipping.Application.Common;
using GoColis.Shipping.Domain.Member.Person;

namespace GoColis.Shipping.Application.Logistics.Contracts;

public interface IPersonRepository : IRepository<Person>
{
    Task<Person?> GetConnectedPerson(Guid id);
}
