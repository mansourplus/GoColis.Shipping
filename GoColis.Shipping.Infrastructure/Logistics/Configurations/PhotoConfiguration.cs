using GoColis.Shipping.Domain.Common.Entities;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;

internal class PhotoConfiguration : IEntityTypeConfiguration<Photo>
{
    public void Configure(EntityTypeBuilder<Photo> builder)
    {
        ConfigureCoordinatesTable(builder);
    }

    private static void ConfigureCoordinatesTable(EntityTypeBuilder<Photo> builder)
    {
        builder.ToTable("Photos");

        builder.HasKey(x => x.Id);

        builder.Property(x => x.Name)
            .HasMaxLength(100);

        builder.Property(x => x.Url)
            .HasMaxLength(512);
    }
}
