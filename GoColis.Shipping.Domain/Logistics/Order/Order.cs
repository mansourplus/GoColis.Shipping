using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Common.Entities;
using GoColis.Shipping.Domain.Logistics.Order.Entities;
using GoColis.Shipping.Domain.Member.Carrier;
using GoColis.Shipping.Domain.Member.Carrier.Entities;
using GoColis.Shipping.Domain.Payment.PaymentMethod;
using PaymentEntity = GoColis.Shipping.Domain.Logistics.Order.Entities.Payment;

namespace GoColis.Shipping.Domain.Logistics.Order;

public sealed class Order : AggregationRoot
{
    private readonly List<PaymentEntity> _payments = new();

    private readonly List<Photo> _photos = new();

    private readonly List<Track> _tracks = new();

    #region CTOR

#pragma warning disable CS8618 
    private Order() { }
#pragma warning restore CS8618

    private Order(
        Guid id,
        List<PaymentEntity> payments,
        List<Photo> photos,
        Guid ownerId,
        bool isValidated,
        bool isDraft,
        bool isDelivered,
        bool isShipper,
        bool withInsurance,
        DateTime fromPickupDate,
        DateTime toPickupDate,
        Member.Person.Person shipper,
        Member.Person.Person recipient,
        Insurance.Insurance? insurance,
        Carrier? carrier,
        RelayPoint.RelayPoint? pickupPoint,
        RelayPoint.RelayPoint? relayPoint,
        Package package,
        PaymentMethod? paymentMethod,
         DateTime createdAt,
         DateTime? updatedAt)
        : base(id, createdAt, updatedAt)
    {
        _payments = payments;
        _photos = photos;
        OwnerId = ownerId;
        IsValidated = isValidated;
        IsDraft = isDraft;
        IsDelivered = isDelivered;
        IsSender = isShipper;
        WithInsurance = withInsurance;
        FromPickupDate = fromPickupDate;
        ToPickupDate = toPickupDate;
        Sender = shipper;
        Receiver = recipient;
        Insurance = insurance;
        Carrier = carrier;
        PickupPoint = pickupPoint;
        RelayPoint = relayPoint;
        Package = package;
        PaymentMethod = paymentMethod;
    }
    #endregion

    #region Properties

    public bool IsValidated { get; set; }

    public bool IsDraft { get; set; }

    public bool IsDelivered { get; set; }

    public bool IsSender { get; set; }

    public bool WithInsurance { get; set; }

    public DateTime FromPickupDate { get; set; }

    public DateTime ToPickupDate { get; set; }

    public Member.Person.Person Sender { get; set; }

    public Member.Person.Person Receiver { get; set; }

    public Insurance.Insurance? Insurance { get; set; }

    public Carrier? Carrier { get; set; }

    public RelayPoint.RelayPoint? PickupPoint { get; set; }

    public RelayPoint.RelayPoint? RelayPoint { get; set; }

    public Package Package { get; set; }

    public PaymentMethod? PaymentMethod { get; set; }

    public IEnumerable<PaymentEntity> Payments => _payments.AsReadOnly();

    public IEnumerable<Photo> Photos => _photos.AsReadOnly();
    public IEnumerable<Track> Tracks=> _tracks.AsReadOnly();
    #endregion

    #region Methods
    public static Order Create(
        Guid ownerId,
        bool isShipper,
        bool withInsurance,
        DateTime fromPickupDate,
        DateTime toPickupDate,
        Member.Person.Person shipper,
        Member.Person.Person recipient,
        Insurance.Insurance? insurance,
        Package package,
        PaymentMethod? paymentMethod)
    {
        return new Order(Guid.NewGuid(),
            new(),
            new(),
            ownerId,
            false,
            true,
            false,
            isShipper,
            withInsurance,
            fromPickupDate,
            toPickupDate,
            shipper,
            recipient,
            insurance,
            null,
            null,
            null,
            package,
            paymentMethod,
            DateTime.UtcNow,
            DateTime.UtcNow);
    }

    public void AddPayment(PaymentEntity payment)
    {
        _payments.Add(payment);
    }

    public void AddPhotos(IEnumerable<Photo> photos)
    {
        _photos.AddRange(photos);
    }

    public void RemovePayment(PaymentEntity payment)
    {
        _payments.Remove(payment);
    }

    public void RemovePhoto(IEnumerable<Photo> photos)
    {
        foreach (var photo in photos)
            _photos.Remove(photo);
    }

    public void AffectCarrier(Carrier carrier, RelayPoint.RelayPoint relayPoint, RelayPoint.RelayPoint pickupPoint)
    {
        Carrier = carrier;
        RelayPoint = relayPoint;
        PickupPoint = pickupPoint;
    }

    public decimal GetVolume()
    {
        var volume = Package.Format.Width * Package.Format.Height * Package.Format.Length;

        Package.Format.Volume = volume;

        return volume;
    }

    public decimal GetWeight()
    {
        return Package.Format.Weight;
    }

    public decimal CalculatePrice(Carrier carrier, RelayPoint.RelayPoint relayPoint, RelayPoint.RelayPoint pickupPoint)
    {
        decimal priceRelayPoint = 0;
        decimal pricePickupPoint = 0;

        var tarifsRelayPoint = carrier.RelayPointPrices.Where(x => x.RelayPoint == relayPoint);
        var tarifsPickupPoint = carrier.RelayPointPrices.Where(x => x.RelayPoint == relayPoint);

        priceRelayPoint = CalculatePrice(tarifsRelayPoint);
        pricePickupPoint = CalculatePrice(tarifsPickupPoint);

        return priceRelayPoint + pricePickupPoint;
    }

    private decimal CalculatePrice(IEnumerable<RelayPointPrice> tarifs)
    {
        if (tarifs is null)
            return 0;


        var volume = GetVolume();
        var weight = GetWeight();

        var tarifVolume = tarifs.FirstOrDefault(t => t.MaxDimension >= volume && t.MaxWeight >= weight);

        if (tarifVolume is null)
            return 0;

        var priceVolume = volume * tarifVolume.PricePerCubicMeter;
        var priceWeight = weight * tarifVolume.PricePerKilogram;

        return Math.Max(priceVolume, priceWeight);
    }
    #endregion
}

