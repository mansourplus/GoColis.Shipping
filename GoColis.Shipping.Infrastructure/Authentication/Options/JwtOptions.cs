namespace GoColis.Shipping.Infrastructure.Authentication.Options;

public class JwtOptions
{
    public string Secret { get; set; } = string.Empty;
    public List<string> ValidAudiences { get; set; } = new();
    public string ValidIssuer { get; set; } = string.Empty;
    public double ExpiryMinutes { get; set; }
}
