using GoColis.Shipping.Domain.Common.Base;

namespace GoColis.Shipping.Domain.Member.Customer;

public class Customer :AggregationRoot
{
    public string FirstName { get; set; }
    public string LastName { get; set; }
    public Person.Person Person { get; set; }

    public Customer(Guid id, string firstName, string lastName, Person.Person person, DateTime createdAt, DateTime updatedAt)
        : base(id, createdAt, updatedAt)
    {
        FirstName = firstName;
        LastName = lastName;
        Person = person;
    }

    public static Customer Create(string firstName, string lastName, Person.Person person)
    {
        return new Customer(
            Guid.NewGuid(),
            firstName,
            lastName,
            person,
            DateTime.UtcNow,
            DateTime.UtcNow
            );
    }

}
