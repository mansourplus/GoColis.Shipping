using FluentResults;
using GoColis.Shipping.Domain.Logistics.RelayPoint;
using GoColis.Shipping.Domain.Logistics.RelayPoint.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;
internal class RelayPointConfiguration : IEntityTypeConfiguration<RelayPoint>
{
    public void Configure(EntityTypeBuilder<RelayPoint> builder)
    {
        ConfigureRelayPointTable(builder);
        ConfigureRelationShip(builder);
        ConfigureRelayPointScheduleTable(builder);
    }

    private static void ConfigureRelayPointTable(EntityTypeBuilder<RelayPoint> builder)
    {
        builder.ToTable("RelayPoints");

        builder.HasKey(x => x.Id);


        builder.Property(x => x.Name)
            .HasMaxLength(255);
    }

    private static void ConfigureRelationShip(EntityTypeBuilder<RelayPoint> builder)
    {
        builder.Metadata.FindNavigation(nameof(RelayPoint.Adress))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);

        builder.Metadata.FindNavigation(nameof(RelayPoint.Contacts))!
            .SetPropertyAccessMode(PropertyAccessMode.Property);
    }

    private static void ConfigureRelayPointScheduleTable(EntityTypeBuilder<RelayPoint> builder)
    {
        builder.OwnsMany(x => x.RelayPointSchedules, sb =>
        {
            sb.ToTable("RelayPointSchedules");

            sb.WithOwner().HasForeignKey("RelayPointId");

            sb.HasKey(x => x.Id);

        });

        builder.Navigation(x => x.RelayPointSchedules)
           .Metadata.SetField("_relayPointSchedules");

        builder.Navigation(x => x.RelayPointSchedules)
            .UsePropertyAccessMode(PropertyAccessMode.Field)
            .AutoInclude();
    }
}