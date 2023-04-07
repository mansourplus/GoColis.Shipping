using GoColis.Shipping.Api.Logistics.RelayPoint.Requests.Create;
using Microsoft.AspNetCore.Mvc.Testing;
using System.Net;
//using Microsoft.AspNetCore.Mvc.Testing;
//using Microsoft.VisualStudio.TestPlatform.TestHost;
//using System.Net;

namespace GoColis.Shipping.Api.IntegrationTests
{
    public class UnitTest1
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
                    Email= "Test",
                }
            };
            await using var application = new WebApplicationFactory<Program>();
            using var client = application.CreateClient();

            // Act
            var result = await client.PostAsJsonAsync("/api/relaypoint", payload);

            // Assert
            Assert.Equal(HttpStatusCode.OK, result.StatusCode);
        }
    }
}