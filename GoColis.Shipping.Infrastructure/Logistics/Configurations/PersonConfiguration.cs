using GoColis.Shipping.Domain.Member.Person;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace GoColis.Shipping.Infrastructure.Logistics.Configurations;

internal class PersonConfiguration : IEntityTypeConfiguration<Person>
{
    public void Configure(EntityTypeBuilder<Person> builder)
    {
        builder.ToTable("Persons");


        builder.HasKey(x => x.Id);

        builder.Navigation(x => x.User)
       .AutoInclude();

        builder.Navigation(x => x.Adress)
        .AutoInclude();

        builder.Navigation(x => x.Contacts)
        .AutoInclude();
    }
}