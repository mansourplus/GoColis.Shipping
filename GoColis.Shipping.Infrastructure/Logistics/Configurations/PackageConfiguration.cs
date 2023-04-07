using GoColis.Shipping.Domain.Logistics.Order.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;
internal class PackageConfiguration : IEntityTypeConfiguration<Package>
{
    public void Configure(EntityTypeBuilder<Package> builder)
    {
        ConfigurePackageTable(builder);
        ConfigurePackageItemsTable(builder);
        ConfigureFormatTable(builder);
        ConfigureRelationShip(builder);
    }

    private static void ConfigurePackageTable(EntityTypeBuilder<Package> builder)
    {
        builder.ToTable("Packages");

        builder.HasKey(x => x.Id);

        builder.Property(x => x.Description)
            .HasMaxLength(255);

        builder.Property(x => x.ExtraInformation)
            .HasMaxLength(1024);

        builder.Property(x => x.TotalPrice)
            .HasPrecision(10, 3);
    }

    private static void ConfigurePackageItemsTable(EntityTypeBuilder<Package> builder)
    {
        builder.OwnsMany(x => x.Items, ib =>
        {
            ib.ToTable("PackageItems");

            ib.WithOwner().HasForeignKey("PackageId");

            ib.Property(x => x.Name)
            .HasMaxLength(255);

            ib.Property(x => x.Price)
            .HasPrecision(10, 3);
        });

        
    }

    private static void ConfigureFormatTable(EntityTypeBuilder<Package> builder)
    {
        builder.OwnsOne(x => x.Format, ib =>
        {
            ib.ToTable("Packages");

            ib.Property(x => x.Width)
            .HasPrecision(10, 3);

            ib.Property(x => x.Height)
            .HasPrecision(10, 3);

            ib.Property(x => x.Length)
            .HasPrecision(10, 3);

            ib.Property(x => x.Weight)
            .HasPrecision(10, 3); 
            
            ib.Property(x => x.Volume)
            .HasPrecision(10, 3);
        });

        
    }

    private static void ConfigureRelationShip(EntityTypeBuilder<Package> builder)
    {
        builder.Metadata.FindNavigation(nameof(Package.Items))!
             .SetPropertyAccessMode(PropertyAccessMode.Field);

        builder.Metadata.FindNavigation(nameof(Package.Format))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);
    }
}
