using GoColis.Shipping.Api.Logistics.Common;
using GoColis.Shipping.Domain.Logistics.Order.ValuesObjects;

namespace GoColis.Shipping.Api.Logistics.Shipment.Common;

public record InsuranceDto(
    string Name,
    AdressDto? Adress,
    ContactDto? Contact
    );


public record PackageDto(
    string Description,
    string ExtraInformation,
    PackageType Type,
    decimal TotalPrice,
    FormatDto Format,
    IEnumerable<ItemDto> Items
    );

public record PersonDto(
    string FirstName,
    string LastName,
    AdressDto Adress,
    ContactDto Contact
    );


public record FormatDto(
    decimal Weight,
    decimal Volume,
    decimal Height,
    decimal Length,
    decimal Width);

public record ItemDto(
    string Name,
    string Description,
    decimal Price,
    int Quantity
    );
