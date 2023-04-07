using GoColis.Shipping.Application.Authentication.Commands.Register;
using GoColis.Shipping.Domain.Authentication.Entities;
using GoColis.Shipping.Domain.Member.Carrier;
using Mapster;
using GoColis.Shipping.Domain.Member.Person;
using GoColis.Shipping.Domain.Common.Entities;

namespace GoColis.Shipping.Application.Authentication.Mapping;

public class RegisterMappingConfig : IRegister
{
    public void Register(TypeAdapterConfig config)
    {
        config.NewConfig<(RegisterCommand command,User user), Carrier>()
            .ConstructUsing(src => Carrier.Create(
                src.command.FirstName,
                Person.Create(
                    Adress.Create(
                        src.command.StreetNumber,
                        src.command.Street,
                        src.command.AddressLine1,
                        src.command.AddressLine2,
                        src.command.City,
                        src.command.ZipCode,
                        src.command.Country,
                        src.command.Latitude,
                        src.command.Longitude
                        ),
                    new List<Contact>{ Contact.Create(
                        src.command.FirstName,
                        src.command.LastName,
                        src.command.Email,
                        src.command.Phone,
                        src.command.Role
                        ) },
                    src.user),
                    new ()
                ));

        config.NewConfig<(RegisterCommand command, User user), Person>()
           .ConstructUsing(src => Person.Create(
               Adress.Create(
                   src.command.StreetNumber,
                   src.command.Street,
                   src.command.AddressLine1,
                   src.command.AddressLine2,
                   src.command.City,
                   src.command.ZipCode,
                   src.command.Country,
                   src.command.Latitude,
                   src.command.Longitude
                   ),
               new List<Contact>{ Contact.Create(
                   src.command.FirstName,
                   src.command.LastName,
                   src.command.Email,
                   src.command.Phone,
                   src.command.Role
                   ) },
               src.user
               ));
    }
}
