using GoColis.Shipping.Api.Logistics.Shipment.Common;

namespace GoColis.Shipping.Api.Logistics.Shipment.Responses.Get;


public record GetShipmentDto(
    Guid Id,
    bool IsValidated,
    bool IsDelivered,
    bool IsDraft,
    bool IsShipper,
    bool WithInsurance,
    DateTime FromPickupDate,
    DateTime ToPickupDate,
    PersonDto Shipper,
    PersonDto Recipient,
    InsuranceDto? Insurance,
    PackageDto Package
    );
