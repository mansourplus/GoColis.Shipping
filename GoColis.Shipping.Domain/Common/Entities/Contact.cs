using GoColis.Shipping.Domain.Common.Base;

namespace GoColis.Shipping.Domain.Common.Entities;

public class Contact : EntityId
{
#pragma warning disable CS8618
    private Contact() { }
#pragma warning restore CS8618 
    public Contact(Guid id, string firstName, string lastName, string email, string phone, string role)
        : base(id)
    {
        FirstName = firstName;
        LastName = lastName;
        Email = email;
        Phone = phone;
        Role = role;
    }

    public string FirstName { get; set; }
    public string LastName { get; set; }
    public string Email { get; set; }
    public string Phone { get; set; }
    public string Role { get; set; }

    public static Contact Create(string firstName, string lastName, string email, string phone, string role)
    {
        return new Contact(Guid.NewGuid(), firstName, lastName, email, phone, role);
    }
}