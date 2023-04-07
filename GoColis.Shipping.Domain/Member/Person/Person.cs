using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Common.Entities;

namespace GoColis.Shipping.Domain.Member.Person;

public class Person : AggregationRoot
{
#pragma warning disable CS8618
    private Person() { }
    private Person(Guid id)
        : base(id)
    {
    }
#pragma warning restore CS8618 
    private Person(
        Guid id,
        IEnumerable<Contact>? contacts,
        Adress adress,
        User? user,
        DateTime createdAt,
        DateTime? updatedAt)
        : base(id, createdAt, updatedAt)
    {
        Contacts = contacts;
        Adress = adress;
        User = user;
    }



    public Adress Adress { get; set; }
    public IEnumerable<Contact>? Contacts { get; set; }
    public User? User { get; set; }

    public static Person Create(
        Adress adress,
        IEnumerable<Contact>? contacts,
        User? user
        )
    {
        return new Person(
            Guid.NewGuid(),
            contacts,
            adress,
            user,
            DateTime.UtcNow,
            DateTime.UtcNow);
    }

    public static Person ToPerson(Guid id)
    {
        return new Person(id);
    }
}

