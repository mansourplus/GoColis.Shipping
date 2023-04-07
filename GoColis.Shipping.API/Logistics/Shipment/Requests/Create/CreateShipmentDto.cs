using GoColis.Shipping.Api.Logistics.Shipment.Common;

namespace GoColis.Shipping.Api.Logistics.Shipment.Requests.Create;


public record CreateShipmentDto(
    bool IsShipper,
    bool WithInsurance,
    DateTime FromPickupDate,
    DateTime ToPickupDate,
    PersonDto Shipper,
    PersonDto Recipient,
    InsuranceDto? Insurance,
    PackageDto Package
    );


