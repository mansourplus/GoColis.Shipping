using GoColis.Shipping.Domain.Member.Carrier;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;
internal class CarrierConfiguration : IEntityTypeConfiguration<Carrier>
{
    public void Configure(EntityTypeBuilder<Carrier> builder)
    {
        ConfigureCarrierTable(builder);
        ConfigurePricePointRelayTable(builder);
        ConfigureRelationShip(builder);
    }

    private static void ConfigureCarrierTable(EntityTypeBuilder<Carrier> builder)
    {
        builder.ToTable("Carriers");

        builder.HasKey(x => x.Id);

        builder.Property(x => x.Name)
            .HasMaxLength(255);
    }

    private static void ConfigureRelationShip(EntityTypeBuilder<Carrier> builder)
    {
        builder.Metadata.FindNavigation(nameof(Carrier.Person))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Metadata.FindNavigation(nameof(Carrier.Person))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Metadata.FindNavigation(nameof(Carrier.RelayPointPrices))!
            .SetPropertyAccessMode(PropertyAccessMode.Field);
    }

    private static void ConfigurePricePointRelayTable(EntityTypeBuilder<Carrier> builder)
    {
        builder.OwnsMany(x => x.RelayPointPrices, ib =>
        {
            ib.ToTable("RelayPointPrices");

            ib.HasKey(x => x.Id);

            ib.WithOwner().HasForeignKey("CarrierId");

            ib.Property(x => x.Id)
           .ValueGeneratedNever()
           .HasConversion(id => id, value => Guid.NewGuid());

            ib.Property(x => x.PricePerCubicMeter)
            .HasPrecision(10,3);

            ib.Property(x => x.PricePerKilometer)
            .HasPrecision(10, 3);

            ib.Property(x => x.PricePerKilogram)
            .HasPrecision(10, 3);

            ib.Property(x => x.MaxWeight)
            .HasPrecision(10, 3);

            ib.Property(x => x.MaxDimension)
            .HasPrecision(10, 3);
        });
    }
}
