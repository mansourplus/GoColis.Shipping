using GoColis.Shipping.Domain.Common.Base;

namespace GoColis.Shipping.Domain.Common.Entities;

public sealed class Photo : EntityId
{
#pragma warning disable CS8618
    private Photo() { }
#pragma warning restore CS8618 

    public Photo(Guid id, string name, string url)
        : base(id)
    {
        Name = name;
        Url = url;
    }

    public string Name { get; set; }
    public string Url { get; set; }

    public static Photo Create(string name, string url)
    {
        return new Photo(Guid.NewGuid(), name, url);
    }
}