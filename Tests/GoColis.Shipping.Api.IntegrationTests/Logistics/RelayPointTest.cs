using GoColis.Shipping.Api.IntegrationTests.Core;
using GoColis.Shipping.Api.Logistics.Common;
using GoColis.Shipping.Api.Logistics.RelayPoint.Requests.Create;
using System.Net;

namespace GoColis.Shipping.Api.IntegrationTests.Logistics;

public class RelayPointTest : BaseIntegrationTest
{
    [Fact]
    public async Task Test1()
    {
        // Arrange
        var payload = new CreateRelayPointDto
        {
            Name = "Test",
            Adress = new AdressDto
            {
                AddressLine1 = "Test"
            },
            Contact = new ContactDto
            {
                Email = "Test@mail.fr",
                Phone = "5555555555555555",
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
