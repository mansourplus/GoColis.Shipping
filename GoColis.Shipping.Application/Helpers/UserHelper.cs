namespace GoColis.Shipping.Application.Logistics.Helpers;

internal static class UserHelper
{
    internal static Guid GetOwner()
    {
        return Guid.NewGuid();
    }

    internal static string GetUser()
    {
        return "Static";
    }
}
