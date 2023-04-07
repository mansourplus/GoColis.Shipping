namespace GoColis.Shipping.Domain.Member.Carrier.ValuesObjects;

public record class Tariff(decimal WeightMin, decimal WeightMax, decimal VolumeMin, decimal VolumeMax, decimal PriceVolume, decimal PriceWeight);