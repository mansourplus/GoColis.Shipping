using GoColis.Shipping.Domain.Common.Base;

namespace GoColis.Shipping.Domain.Logistics.RelayPoint.Entities;

public class RelayPointSchedule : EntityId
{
    private RelayPointSchedule()
    {

    }
    private RelayPointSchedule(Guid id, DayOfWeek dayOfWeek, DateTime startTime, DateTime endTime)
        : base(id)
    {
        DayOfWeek = dayOfWeek;
        StartTime = startTime;
        EndTime = endTime;
    }

    public DayOfWeek DayOfWeek { get; private set; }
    public DateTime StartTime { get; private set; }
    public DateTime EndTime { get; private set; }


    public static RelayPointSchedule Create(DayOfWeek dayOfWeek, DateTime startTime, DateTime endTime)
    {
        return new RelayPointSchedule(Guid.NewGuid(), dayOfWeek, startTime, endTime);
    }
}