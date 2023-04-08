using GoColis.Shipping.Api.Logistics.RelayPoint.Requests.Create;
using GoColis.Shipping.Application.Authentication.Constants;
using GoColis.Shipping.Domain.Authentication.Entities;
using Microsoft.AspNetCore.Hosting;
using Microsoft.IdentityModel.Protocols.OpenIdConnect;
using Newtonsoft.Json.Linq;
using System.Net;
using System.Security.Cryptography;
//using Microsoft.AspNetCore.Mvc.Testing;
//using Microsoft.VisualStudio.TestPlatform.TestHost;
//using System.Net;

namespace GoColis.Shipping.Api.IntegrationTests;

public class UnitTest1 : BaseIntegrationTest
{
    [Fact]
    public async Task Test1()
    {
        // Arrange
        var payload = new CreateRelayPointDto
        {
            Name = "Test",
            Adress = new Logistics.Common.AdressDto
            {
                AddressLine1 = "Test"
            },
            Contact = new Logistics.Common.ContactDto
            {
                Email = "Test@mail.fr",
                Phone="5555555555555555",
                Role = "Test"

            }
        };
        using var client = await CreateClient();


        // Act
        var result = await client.PostAsJsonAsync("/api/relaypoint", payload);

        var resultString = await result.Content.ReadAsStringAsync();

        Console.WriteLine(resultString);

        // Assert
        Assert.Equal(HttpStatusCode.Created, result.StatusCode);
    }
}
