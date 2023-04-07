using GoColis.Shipping.Domain.Common.Base;

namespace GoColis.Shipping.Domain.Payment.PaymentMethod;

public sealed class PaymentMethod : EntityId
{
    public PaymentMethod(Guid id, string name, bool isOnline, bool isCashOnDelivery, bool isCreditCard, bool isBankTransfer, bool isActive)
        : base(id)
    {
        Name = name;
        IsOnline = isOnline;
        IsCashOnDelivery = isCashOnDelivery;
        IsCreditCard = isCreditCard;
        IsBankTransfer = isBankTransfer;
        IsActive = isActive;
    }
#pragma warning disable CS8618
    private PaymentMethod() { }
#pragma warning restore CS8618 

    public string Name { get; set; }
    public bool IsOnline { get; set; }
    public bool IsCashOnDelivery { get; set; }
    public bool IsCreditCard { get; set; }
    public bool IsBankTransfer { get; set; }
    public bool IsActive { get; set; }

    public static PaymentMethod Create(string name, bool isOnline, bool isCashOnDelivery, bool isCreditCard, bool isBankTransfer, bool isActive)
    {
        return new PaymentMethod(Guid.NewGuid(), name, isOnline, isCashOnDelivery, isCreditCard, isBankTransfer, isActive);
    }
}

