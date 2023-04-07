using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Logistics.RelayPoint;
using GoColis.Shipping.Domain.Member.Carrier.Entities;
using GoColis.Shipping.Domain.Payment.PaymentMethod;

namespace GoColis.Shipping.Domain.Member.Carrier;

public sealed class Carrier:AggregationRoot
{

    private readonly List<RelayPointPrice> _relayPointPrices = new();

    private readonly List<RelayPoint> _relayPoints = new();

    private readonly List<PaymentMethod> _paymentMethods = new();

    public string Name { get; set; }

    public Person.Person? Person { get; set; }

    public IEnumerable<RelayPoint> RelayPoints => _relayPoints.AsReadOnly();

    public IEnumerable<RelayPointPrice> RelayPointPrices => _relayPointPrices.AsReadOnly();

    public IEnumerable<PaymentMethod> PaymentMethods => _paymentMethods.AsReadOnly();

#pragma warning disable CS8618 
    private Carrier() { }
#pragma warning restore CS8618 

    private Carrier(
        Guid id,
        string name,
        Person.Person person,
        List<PaymentMethod> paymentMethods,
        DateTime createdAt,
        DateTime? updatedAt)
        : base(id, createdAt, updatedAt)
    {
        _paymentMethods = paymentMethods;
        Person = person;
        Name = name;
    }

    public static Carrier Create(string name, Person.Person person, List<PaymentMethod> paymentMethods)
    {
        return new Carrier(Guid.NewGuid(), name, person, paymentMethods, DateTime.UtcNow, DateTime.UtcNow);
    }
}

