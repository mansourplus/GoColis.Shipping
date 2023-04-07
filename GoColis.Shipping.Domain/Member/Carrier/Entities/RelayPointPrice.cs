using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Logistics.RelayPoint;

namespace GoColis.Shipping.Domain.Member.Carrier.Entities;

public class RelayPointPrice : EntityId
{
    public decimal PricePerKilogram { get; private set; }
    public decimal MaxWeight { get; private set; }
    public decimal PricePerCubicMeter { get; private set; }
    public decimal MaxDimension { get; private set; }
    public decimal PricePerKilometer { get; private set; }
    public RelayPoint RelayPoint { get; private set; }

#pragma warning disable CS8618
    private RelayPointPrice()
#pragma warning restore CS8618
    {

    }

    private RelayPointPrice(Guid id, decimal pricePerKilogram, decimal maxWeight, decimal pricePerCubicMeter, decimal maxDimension, decimal pricePerKilometer, RelayPoint relayPoint)
        : base(id)
    {
        PricePerKilogram = pricePerKilogram;
        MaxWeight = maxWeight;
        PricePerCubicMeter = pricePerCubicMeter;
        MaxDimension = maxDimension;
        PricePerKilometer = pricePerKilometer;
        RelayPoint = relayPoint;
    }

    public static RelayPointPrice Create(decimal pricePerKilogram, decimal maxWeight, decimal pricePerCubicMeter, decimal maxDimension, decimal pricePerKilometer, RelayPoint relayPoint)
    {
        return new RelayPointPrice(
            Guid.NewGuid(),
            pricePerKilogram,
            maxWeight,
            pricePerCubicMeter,
            maxDimension,
            pricePerKilometer,
            relayPoint
            );
    }
}