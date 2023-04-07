namespace GoColis.Shipping.Domain.Common.Base;

public abstract class Entity : EntityId
{
    protected Entity()
    {

    }

    protected Entity(Guid id) : base(id)
    {

    }
    protected Entity(Guid id, DateTime createdAt, DateTime? updatedAt) : base(id)
    {
        CreatedAt = createdAt;
        UpdatedAt = updatedAt;
    }

    public DateTime? CreatedAt { get; set; }
    public DateTime? UpdatedAt { get; set; }
}
