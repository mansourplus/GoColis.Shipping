using GoColis.Shipping.Domain.Logistics.Order;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;
internal class ShipmentConfiguration : IEntityTypeConfiguration<Order>
{
    public void Configure(EntityTypeBuilder<Order> builder)
    {
        ConfigureShipmentTable(builder);
        ConfigurePaymentTable(builder);
        ConfigureRelationShip(builder);
    }

    private static void ConfigureShipmentTable(EntityTypeBuilder<Order> builder)
    {
        builder.ToTable("Shipments");

        builder.HasKey(x => x.Id);
    }

    private static void ConfigureRelationShip(EntityTypeBuilder<Order> builder)
    {
        builder.Metadata.FindNavigation(nameof(Order.Package))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Navigation(x => x.Package)
            .AutoInclude();

        builder.Navigation(x => x.Insurance)
            .AutoInclude();

        builder.Navigation(x => x.Sender)
            .AutoInclude();

        builder.Navigation(x => x.Receiver)
            .AutoInclude();

        builder.Metadata.FindNavigation(nameof(Order.Carrier))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Metadata.FindNavigation(nameof(Order.PickupPoint))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Metadata.FindNavigation(nameof(Order.RelayPoint))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Metadata.FindNavigation(nameof(Order.PaymentMethod))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Metadata.FindNavigation(nameof(Order.Payments))!
            .SetPropertyAccessMode(PropertyAccessMode.Field);

        builder.Metadata.FindNavigation(nameof(Order.Photos))!
            .SetPropertyAccessMode(PropertyAccessMode.Field);

        builder.Metadata.FindNavigation(nameof(Order.Insurance))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);
    }

    private static void ConfigurePaymentTable(EntityTypeBuilder<Order> builder)
    {
        builder.OwnsMany(x => x.Payments, ib =>
        {
            ib.ToTable("Payments");

            ib.HasKey(x => x.Id);

            ib.Property(x => x.Amount)
            .HasPrecision(10,3);

            ib.Property(x => x.PaymentDate)
            .ValueGeneratedOnAdd();
        });
    }
}
