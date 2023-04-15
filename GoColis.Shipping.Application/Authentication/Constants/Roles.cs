namespace GoColis.Shipping.Application.Authentication.Constants;

public static class Roles
{
    public const string SuperAdmin = "SuperAdmin";
    public const string Customer = "Customer";
    public const string Carrier = "Carrier";

    public static List<string> ApplicationRoles => new List<string> { SuperAdmin, Customer, Carrier };
}