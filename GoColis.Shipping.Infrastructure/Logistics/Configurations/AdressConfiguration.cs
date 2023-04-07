using GoColis.Shipping.Domain.Common.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;
internal class AdressConfiguration : IEntityTypeConfiguration<Adress>
{
    public void Configure(EntityTypeBuilder<Adress> builder)
    {
        ConfigureCoordinatesTable(builder);
    }

    private static void ConfigureCoordinatesTable(EntityTypeBuilder<Adress> builder)
    {
        builder.ToTable("Adress");

        builder.HasKey(x => x.Id);

        builder.Property(x => x.StreetNumber)
            .HasMaxLength(20);

        builder.Property(x => x.Street)
            .HasMaxLength(255);

        builder.Property(x => x.AddressLine1)
            .HasMaxLength(255);

        builder.Property(x => x.AddressLine2)
            .HasMaxLength(255);

        builder.Property(x => x.City)
            .HasMaxLength(80);

        builder.Property(x => x.ZipCode)
            .HasMaxLength(10);

        builder.Property(x => x.Country)
            .HasMaxLength(80);

        builder.Property(x => x.Latitude)
            .HasPrecision(30, 20);

        builder.Property(x => x.Longitude)
            .HasPrecision(30, 20);
    }
}
