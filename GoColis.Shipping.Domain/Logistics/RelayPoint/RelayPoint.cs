using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Common.Entities;
using GoColis.Shipping.Domain.Logistics.RelayPoint.Entities;
using GoColis.Shipping.Domain.Member.Carrier;

namespace GoColis.Shipping.Domain.Logistics.RelayPoint;

public class RelayPoint : AggregationRoot
{
    private readonly List<RelayPointSchedule> _relayPointSchedules = new();
    private readonly List<Carrier> _carriers = new();

#pragma warning disable CS8618
    private RelayPoint() { }
#pragma warning restore CS8618

    private RelayPoint(Guid id, string name, Adress adress, IEnumerable<Contact> contact, List<RelayPointSchedule> schedules, List<Carrier> carriers, DateTime createdAt, DateTime? updatedAt)
        : base(id, createdAt, updatedAt)
    {
        _relayPointSchedules = schedules;
        _carriers = carriers;
        Name = name;
        Adress = adress;
        Contacts = contact;
    }

    public string Name { get; set; }

    public Guid AdressID { get; set; }
    public Adress? Adress { get; set; }
    public IEnumerable<Contact> Contacts { get; set; }

    public  IReadOnlyCollection<RelayPointSchedule>? RelayPointSchedules => _relayPointSchedules.AsReadOnly();

    public static RelayPoint Create(string name, Adress adress, List<Contact> contacts, List<RelayPointSchedule> schedules, string createdBy)
    {
        return new RelayPoint(
            Guid.NewGuid(),
            name,
            adress,
            contacts,
            schedules,
            new(),
            DateTime.UtcNow,
            DateTime.UtcNow
            );
    }

    public void AddSchedule(RelayPointSchedule schedule)
    {
        _relayPointSchedules.Add(schedule);
    }

    public void AddSchedules(IEnumerable<RelayPointSchedule> schedules)
    {
        _relayPointSchedules.AddRange(schedules);
    }
    public void RemoveSchedule(RelayPointSchedule schedule)
    {
        _relayPointSchedules.Remove(schedule);
    }

    public void RemoveSchedules(IEnumerable<RelayPointSchedule> schedules)
    {
        foreach (var schedule in schedules)
            RemoveSchedule(schedule);
    }

}

