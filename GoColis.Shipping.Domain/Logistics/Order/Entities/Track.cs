using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Logistics.Order.ValuesObjects;

namespace GoColis.Shipping.Domain.Logistics.Order.Entities;

public class Track : EntityId
{
#pragma warning disable CS8618
    private Track() { }
#pragma warning restore CS8618 

    private Track(Guid id, DateTime updateDate, ShippingProcess process, string description)
        : base(id)
    {
        UpdateDate = updateDate;
        Description = description;
        Process = process;
    }

    public DateTime UpdateDate{ get; set; }
    public string Description { get; set; }
    public ShippingProcess Process { get; set; }

    public static Track Create(DateTime updateDate, ShippingProcess process, string description)
    {
        return new Track(
                    Guid.NewGuid(),
                    updateDate,
                    process,
                    description
                    );
    }
}
