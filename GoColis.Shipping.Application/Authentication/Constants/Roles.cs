namespace GoColis.Shipping.Application.Authentication.Constants;

public static class Roles
{
    public const string SuperAdmin = "SuperAdmin";
    public const string Client = "Client";
    public const string Carrier = "Carrier";

    public static List<string> ApplicationRoles => new List<string> { SuperAdmin, Client, Carrier };
}