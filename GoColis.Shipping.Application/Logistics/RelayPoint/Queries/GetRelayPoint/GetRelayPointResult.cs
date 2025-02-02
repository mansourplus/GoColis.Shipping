﻿namespace GoColis.Shipping.Application.Logistics.RelayPoint.Queries.GetRelayPoint;

public record GetRelayPointResult
{
    public Guid Id { get; set; }
    public string Name { get;  set; } = string.Empty;

    public Adress Adress { get; set; } = null!;
    public Contact Contact { get; set; } = null!;
}

public class Adress
{
    public string StreetNumber { get;  set; } = string.Empty;
    public string Street { get;  set; } = string.Empty;
    public string AddressLine1 { get;  set; } = string.Empty;
    public string AddressLine2 { get;  set; } = string.Empty;
    public string City { get;  set; } = string.Empty;
    public string ZipCode { get;  set; } = string.Empty;
    public string Country { get;  set; } = string.Empty;
    public decimal Latitude { get;  set; }
    public decimal Longitude { get;  set; }
}


public class Contact
{
    public string FirstName { get; set; } = string.Empty;
    public string LastName { get; set; } = string.Empty;
    public string Email { get; set; } = string.Empty;
    public string Phone { get; set; } = string.Empty;
    public string Role { get; set; } = string.Empty;
}
