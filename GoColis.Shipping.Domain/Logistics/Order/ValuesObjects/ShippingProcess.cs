namespace GoColis.Shipping.Domain.Logistics.Order.ValuesObjects;

public enum ShippingProcess
{
    Receiving,
    OriginWarehouse,
    OriginHandling,
    OriginPort,
    DestinationPort,
    DestinationHandling,
    DestinationWarehouse,
    Delivered
}
