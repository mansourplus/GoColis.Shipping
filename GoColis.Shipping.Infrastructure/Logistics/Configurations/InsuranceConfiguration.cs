using GoColis.Shipping.Domain.Logistics.Insurance;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;
internal class InsuranceConfiguration : IEntityTypeConfiguration<Insurance>
{
    public void Configure(EntityTypeBuilder<Insurance> builder)
    {
        ConfigureClientTable(builder);
        ConfigureRelationShip(builder);
    }

    private static void ConfigureClientTable(EntityTypeBuilder<Insurance> builder)
    {
        builder.ToTable("Insurances");

        builder.HasKey(x => x.Id);

        builder.Property(x => x.Name)
            .HasMaxLength(255);
    }

    private static void ConfigureRelationShip(EntityTypeBuilder<Insurance> builder)
    {
        builder.Navigation(x => x.Adress)
            .UsePropertyAccessMode(PropertyAccessMode.Property)
            .AutoInclude();

        builder.Navigation(x => x.Contact)
            .UsePropertyAccessMode(PropertyAccessMode.Property)
            .AutoInclude();
    }
}
