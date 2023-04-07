using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Common.Entities;

namespace GoColis.Shipping.Domain.Logistics.Insurance;

public sealed class Insurance : AggregationRoot
{
#pragma warning disable CS8618
    private Insurance() { }
#pragma warning restore CS8618 

    private Insurance(Guid id, string name, Adress adress, Contact contact, DateTime createdAt, DateTime? updatedAt)
        : base(id, createdAt, updatedAt)
    {
        Name = name;
        Adress = adress;
        Contact = contact;
    }

    public string Name { get; set; }

    public Adress Adress { get; set; }

    public Contact Contact { get; set; }

    public static Insurance Create(string name, Adress adress, Contact contact)
    {
        return new Insurance(
            Guid.NewGuid(),
            name,
            adress,
            contact,
            DateTime.UtcNow,
            DateTime.UtcNow
            );
    }
}
