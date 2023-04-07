namespace GoColis.Shipping.Domain.Common.Base;


public abstract class AggregationRoot : Entity
{
    public Guid? OwnerId { get; set; }

    protected AggregationRoot()
    {

    }

    protected AggregationRoot(Guid id) : base(id)
    {

    }

    protected AggregationRoot(Guid id, DateTime createdAt, DateTime? updatedAt)
        : base(id, createdAt, updatedAt)
    {
    }
}
