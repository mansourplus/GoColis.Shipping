using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GoColis.Shipping.Domain.Logistics;

public class Ride
{
    public string Description { get; set; }

    public int FromLat { get; set; }

    public int ToLat { get; set; }

    public int FromLng { get; set; }

    public int ToLng { get; set; }

    public string FromAddress { get; set; }

    public string ToAddress { get; set; }

    public string FromPostalCode { get; set; }

    public string ToPostalCode { get; set; }

    public string FromPickupDate { get; set; }

    public string ToPickupDate { get; set; }

    public bool IsPackaged { get; set; }

    public bool IsPassenger { get; set; }

    public bool FromIsFlexible { get; set; }

    public bool ToIsFlexible { get; set; }

    public int ContentValue { get; set; }

    public bool WithInsurance { get; set; }

    public int Price { get; set; }

    public int Volume { get; set; }

    public string Environment { get; set; }

    public string RiderExtraInformation { get; set; }

    public bool FromNeedHelp { get; set; }

    public bool FromNeedHelpFloor { get; set; }

    public bool FromNeedHelpElevator { get; set; }

    public bool FromNeedHelpFurnitureLift { get; set; }

    public bool ToNeedHelp { get; set; }

    public bool ToNeedHelpFloor { get; set; }

    public bool ToNeedHelpElevator { get; set; }

    public bool ToNeedHelpFurnitureLift { get; set; }

    public List<RideObjectsAttribute> RideObjectsAttributes { get; set; }

    public RideDeliveryInformationAttributes RideDeliveryInformationAttributes { get; set; }

    public List<string> Photos { get; set; }

    public string ExternalId { get; set; }

    public List<string> PhotoUrls { get; set; }
}

public class RideDeliveryInformationAttributes
{
    public string FromAddress { get; set; }

    public string FromPostalCode { get; set; }

    public string FromCity { get; set; }

    public string FromCountry { get; set; }

    public string FromContactName { get; set; }

    public string FromContactEmail { get; set; }

    public string FromContactPhone { get; set; }

    public string FromExtraInformation { get; set; }

    public string ToAddress { get; set; }

    public string ToPostalCode { get; set; }

    public string ToCity { get; set; }

    public string ToCountry { get; set; }

    public string ToContactName { get; set; }

    public string ToContactEmail { get; set; }

    public string ToContactPhone { get; set; }

    public string ToExtraInformation { get; set; }

    public string InsuranceFirstname { get; set; }

    public string InsuranceLastname { get; set; }

    public string InsuranceAddress { get; set; }

    public string InsurancePostalCode { get; set; }

    public string InsuranceCity { get; set; }

    public string InsuranceCountry { get; set; }

    public string InsuranceBirthdate { get; set; }
}

public class RideObjectsAttribute
{
    public string Title { get; set; }

    public int Qty { get; set; }

    public string Format { get; set; }

    public decimal Weight { get; set; }

    public decimal ExactWeight { get; set; }
}
