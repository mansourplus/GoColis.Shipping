using GoColis.Shipping.Domain.Common.Base;
using GoColis.Shipping.Domain.Payment.PaymentMethod;

namespace GoColis.Shipping.Domain.Logistics.Order.Entities;

public class Payment : EntityId
{
#pragma warning disable CS8618
    private Payment() { }
#pragma warning restore CS8618 
    private Payment(Guid id, decimal amount, DateTime paymentDate, PaymentMethod paymentMethod)
        : base(id)
    {
        Amount = amount;
        PaymentDate = paymentDate;
        PaymentMethod = paymentMethod;
    }

    public decimal Amount { get; set; }

    public DateTime PaymentDate { get; set; }

    public PaymentMethod PaymentMethod { get; set; }

    public static Payment Create(decimal amount, DateTime paymentDate, PaymentMethod paymentMethod)
    {
        return new Payment(
            Guid.NewGuid(),
            amount,
            paymentDate,
            paymentMethod);
    }
}

