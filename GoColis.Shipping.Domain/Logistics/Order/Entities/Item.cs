using GoColis.Shipping.Domain.Common.Base;

namespace GoColis.Shipping.Domain.Logistics.Order.Entities;

public sealed class Item : EntityId
{
#pragma warning disable CS8618
    private Item() { }
#pragma warning restore CS8618 

    private Item(Guid id, string name, string description, decimal price, int quantity)
        : base(id)
    {
        Name = name;
        Description = description;
        Price = price;
        Quantity = quantity;
    }

    public string Name { get; set; }
    public string Description { get; set; }
    public decimal Price { get; set; }
    public int Quantity { get; set; }

    public static Item Create(string name, string description, decimal price, int quantity)
    {
        return new Item(
                    Guid.NewGuid(),
                    name,
                    description,
                    price,
                    quantity
                    );
    }
}