namespace GoColis.Shipping.Infrastructure.Common;

public abstract class Repository
{
    internal readonly DatabaseContext DbContext;

    protected Repository(DatabaseContext dbContext)
    {
        DbContext = dbContext;
    }
}