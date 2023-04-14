namespace GoColis.Shipping.Api.Logistics.Common;

public class ContactDto
{
    /// <summary>
    /// First name
    /// </summary>
    public string FirstName { get; set; } = string.Empty;
    /// <summary>
    /// Last name
    /// </summary>
    public string LastName { get; set; } = string.Empty;
    /// <summary>
    /// E-mail adress
    /// </summary>
    public string Email { get; set; } = string.Empty;

    /// <summary>
    /// Phone Number
    /// </summary>
    public string Phone { get; set; } = string.Empty;

    /// <summary>
    /// Role
    /// </summary>
    public string Role { get; set; } = string.Empty;
}
