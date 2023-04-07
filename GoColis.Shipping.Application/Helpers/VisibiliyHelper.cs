using GoColis.Shipping.Domain.Common.Base;
using Owls.ErrorOr.Core;

namespace GoColis.Shipping.Application.Helpers;

internal static class VisibiliyHelper
{
    internal static Error? CheckVisibility<TEntity>(this TEntity entity, Guid ownerId)
        where TEntity : AggregationRoot
    {
        if(entity?.OwnerId is not null && entity.OwnerId != ownerId)
        {
            return Error.Validation($"{typeof(TEntity).Name}.Visibility", $"access denied for user '{ownerId}'");
        }

        return null;
    }
}
