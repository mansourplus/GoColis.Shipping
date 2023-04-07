using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Logistics.Order.ValuesObjects;

namespace GoColis.Shipping.Domain.Logistics.Order.Entities;

public sealed class Package : EntityId
{
    private readonly List<Item> _items = new();

#pragma warning disable CS8618
    private Package() { }
#pragma warning restore CS8618 

    private Package(Guid id, string description, string extraInformation, PackageType type, decimal totalPrice, Format format, List<Item> items)
        : base(id)
    {
        _items = items;
        Description = description;
        ExtraInformation = extraInformation;
        Type = type;
        TotalPrice = totalPrice;
        Format = format;
    }

    public string Description { get; set; } = null!;

    public string ExtraInformation { get; set; } = null!;

    public PackageType Type { get; set; }

    public decimal TotalPrice { get; set; }

    public Format Format { get; set; } = null!;

    public IEnumerable<Item> Items => _items.AsReadOnly();

    public static Package Create(string description, string extraInformation, PackageType type, decimal totalPrice, Format format, List<Item> items)
    {
        return new Package(
            Guid.NewGuid(),
            description,
            extraInformation,
            type,
            totalPrice,
            format,
            items);
    }

    public void AddItem(Item item)
    {
        _items.Add(item);
    }

    public void AddItems(IEnumerable<Item> items)
    {
        _items.AddRange(items);
    }

    public void RemoveItem(Item item)
    {
        _items.Remove(item);
    }

    public void RemoveItems(IEnumerable<Item> items)
    {
        foreach (var item in items)
            RemoveItem(item);
    }
}

