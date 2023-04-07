namespace GoColis.Shipping.Domain.Common.Base;

public abstract class EntityId : IEquatable<EntityId>
{
    public Guid Id { get; private init; }

    protected EntityId()
    {

    }

    protected EntityId(Guid id)
    {
        Id = id;
    }

    public static bool operator ==(EntityId? left, EntityId? right)
    {
        return left is not null && right is not null && left.Equals(right);
    }

    public static bool operator !=(EntityId? left, EntityId? right)
    {
        return !(left == right);
    }

    public bool Equals(EntityId? other)
    {
        return MyEquals(other);
    }

    public override bool Equals(object? obj)
    {
        return MyEquals(obj);
    }

    public override int GetHashCode()
    {
        return Id.GetHashCode();
    }

    private bool MyEquals(object? other)
    {

        if (other is null) return false;

        if (other.GetType() != GetType()) return false;

        if (other is not EntityId entityId) return false;

        return entityId.Id == Id;
    }
}